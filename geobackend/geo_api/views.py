from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import permissions
from .models import Station, EU_Station, AP_Station, Controlpoints_NA
from .serializers import TodoSerializer, EUSerializer, APSerializer, CPSerializer
from django_filters import rest_framework as filters
from django.contrib.gis.geos import Point
from django.contrib.gis.db.models.functions import Distance
from django.http import JsonResponse
from django.db.models import Sum
from geopy.geocoders import Nominatim
import certifi
import ssl

#API view for RTK coverage maps

#Create API endpoint function for finding nearest station for POI
def find_nearest_point_of_interest(request):
    if request.method == 'GET':
        try:
            latitude = float(request.GET.get('latitude'))
            longitude = float(request.GET.get('longitude'))
            
            # Create a Point object representing the given location
            location = Point(longitude, latitude, srid=4326)

            # Query the PointOfInterest model and annotate each object with its distance to the given location
            nearest_point = Station.objects.annotate(distance=Distance('geom', location)).order_by('distance').first()

            if nearest_point:
                return JsonResponse({'name': nearest_point.station, 'distance': nearest_point.distance.km, 'status': nearest_point.status})
            else:
                return JsonResponse({'error': 'No points of interest found'})
        except ValueError:
            return JsonResponse({'error': 'Invalid latitude or longitude'})
    else:
        return JsonResponse({'error': 'Method not allowed'}, status=405)




class TodoListApiView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user

        todos = Station.objects.all()
        print(todos)
        print(todos)
        todos = Station.objects.filter(stationtype='integrity')
        #filtered_queryset = self.filter_queryset(todos)
        serializer = TodoSerializer(todos, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # 2. Create
    def post(self, request, *args, **kwargs):
        # Create the Todo with given todo data

        data = {
            'id': request.data.get('id'),
            'station': request.data.get('station'),
            'longitude': request.data.get('longitude'), 
            'latitude': request.data.get('latitude'),
            'geom': request.data.get('geom'),
        }
        serializer = TodoSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    

    def filter_queryset(self, queryset):
    # Get the query parameters from the request
        param1 = self.request.query_params.get('id')
        param2 = self.request.query_params.get('provider')
        param3 = self.request.query_params.get('pilot')
        param4 = self.request.query_params.get('commercial')
        param5 = self.request.query_params.get('access')
        param6 = self.request.query_params.get('sla')
        param7 = self.request.query_params.get('base')
        param8 = self.request.query_params.get('rover')
        param9 = self.request.query_params.get('stationtype')
        param10 = self.request.query_params.get('status')

        # Apply filters to the queryset based on the parameters
        if param1:
            queryset = queryset.filter(id=param1)
        if param2:
            queryset = queryset.filter(provider=param2)
        if param3:
            queryset = queryset.filter(pilot=param3)
        if param4:
            queryset = queryset.filter(commercial=param4)
        if param5:
            queryset = queryset.filter(access=param5)
        if param6:
            queryset = queryset.filter(sla=param6)
        if param7:
            queryset = queryset.filter(base=param7)
        if param8:
            queryset = queryset.filter(rover=param8)
        if param9:
            queryset = queryset.filter(stationtype=param9)
        if param10:
            queryset = queryset.filter(status=param10)

        return queryset

class EUListApiView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user

        todos = EU_Station.objects.all()
        print(todos)
        serializer = EUSerializer(todos, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # 2. Create
    def post(self, request, *args, **kwargs):
        # Create the Todo with given todo data

        data = {
            'id': request.data.get('id'),
            'station': request.data.get('station'),
            'longitude': request.data.get('longitude'), 
            'latitude': request.data.get('latitude'),
            'geom': request.data.get('geom'),
        }
        serializer = EUSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class APListApiView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user

        todos = AP_Station.objects.all()
        print(todos)
        serializer = APSerializer(todos, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # 2. Create
    def post(self, request, *args, **kwargs):
        # Create the Todo with given todo data

        data = {
            'id': request.data.get('id'),
            'station': request.data.get('station'),
            'longitude': request.data.get('longitude'), 
            'latitude': request.data.get('latitude'),
            'geom': request.data.get('geom'),
        }
        serializer = APSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

#API view for nearest RTK station
class RTKListApiView(APIView):
     # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user
        todos = Station.objects.all()
        #filtered_queryset = self.filter_queryset(todos)
        #serializer = TodoSerializer(todos, many=True)
        result = self.find_nearest_point_of_interest(request)
        return Response(result, status=status.HTTP_200_OK)

    def find_nearest_point_of_interest(self, request):
        try:
            latitude = float(request.GET.get('latitude'))
            longitude = float(request.GET.get('longitude'))
            
            # Create a Point object representing the given location
            location = Point(longitude, latitude, srid=4326)

            # Query the PointOfInterest model and annotate each object with its distance to the given location
            nearest_point = Station.objects.annotate(distance=Distance('geom', location)).order_by('distance').first()
            result = {'name': nearest_point.station, 'distance': nearest_point.distance.km, 'status': nearest_point.status}


            if nearest_point:
                return result
            else:
                return {'error': 'No points of interest found'}
        except ValueError:
            return {'error': 'Invalid latitude or longitude'}


#API view for geocoding function
class GeocodeAPIView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    
    def get(self, request, format=None):
        # Specify the path to the CA certificates bundle
        ssl_context = ssl.create_default_context(cafile=certifi.where())

        address = request.query_params.get('address')
        if not address:
            return Response({'error': 'Address parameter is required'}, status=400)

        geolocator = Nominatim(user_agent="my_geocoder", ssl_context=ssl_context)
        location = geolocator.geocode(address)

        #Find nearest station to specific station
        result = self.find_nearest_point_of_interest(location.longitude, location.latitude)
        return Response(result, status=status.HTTP_200_OK)
        '''
        if location:
            return Response({'latitude': location.latitude, 'longitude': location.longitude})
        else:
            return Response({'error': 'Geocoding failed'}, status=500)
        '''

    def find_nearest_point_of_interest(self, longitude, latitude):
        try:
            # Create a Point object representing the given location
            location = Point(longitude, latitude, srid=4326)

            # Query the PointOfInterest model and annotate each object with its distance to the given location
            nearest_point = Station.objects.annotate(distance=Distance('geom', location)).order_by('distance').first()
            result = {'name': nearest_point.station, 'distance': nearest_point.distance.km, 'status': nearest_point.status}


            if nearest_point:
                return result
            else:
                return {'error': 'No points of interest found'}
        except ValueError:
            return {'error': 'Invalid latitude or longitude'}


class ControlpointsApiView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user
        self.CPpoints_analysis(request)
        todos = Controlpoints_NA.objects.all()
        serializer = CPSerializer(todos, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # 2. Control point analysis function
    def CPpoints_analysis(self, request):
        controlpoints = Controlpoints_NA.objects.all()
        for cp in controlpoints:
            latitude = float(cp.latitude)
            longitude = float(cp.longitude)
            
            # Create a Point object representing the given location
            location = Point(longitude, latitude, srid=4326)
            # Select only online integrity stations
            integritystations = Station.objects.filter(stationtype='integrity', status='1')
            neighborstations = integritystations.annotate(distance=Distance('geom', location)).filter(distance__lte=300000)
            cp.count = neighborstations.count()
            cp.save()

# API view for control points statistics
    
class ControlpointsStatsApiView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # Calculate control points statistics based on the count of integrity stations within 300 km    
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user
        cp = Controlpoints_NA.objects.all()
        level1 = cp.filter(count__lt=1).count()
        level2 = cp.filter(count=1).count()
        level3 = cp.filter(count__gte=2).count()

        level1percentage = (level1 / cp.count()) * 100 
        level2percentage = (level2 / cp.count()) * 100
        level3percentage = (level3 / cp.count()) * 100
        
        level1_total_time = Controlpoints_NA.objects.aggregate(Sum('sl1_time')).get('sl1_time__sum')
        level2_total_time = Controlpoints_NA.objects.aggregate(Sum('sl2_time')).get('sl2_time__sum')
        level3_total_time = Controlpoints_NA.objects.aggregate(Sum('sl3_time')).get('sl3_time__sum')

        #Return the percentage of control points in each service level, also count of each level control points are returned
        result = {'level1_count': level1, 'level2_count': level2, 'level3_count': level3, 'level1_pc': level1percentage, 'level2_pc': level2percentage, 'level3_pc': level3percentage, 'level1_time': level1_total_time, 'level2_time': level2_total_time, 'level3_time': level3_total_time}
        # serializer = CPSerializer(todos, many=True)
        return Response(result, status=status.HTTP_200_OK)


class ControlpointsMonthlyStatsApiView(APIView):

    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # Refresh service level time everytime control points is calculated per 24 hours
    def get(self, request, *args, **kwargs):
        self.CPpoints_analysis(request)
        todos = Controlpoints_NA.objects.all()
        serializer = CPSerializer(todos, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)


    # 2. Control point analysis function
    def CPpoints_analysis(self, request):
        controlpoints = Controlpoints_NA.objects.all()
        for cp in controlpoints:
            latitude = float(cp.latitude)
            longitude = float(cp.longitude)
            
            # Create a Point object representing the given location
            location = Point(longitude, latitude, srid=4326)
            # Select only online integrity stations
            integritystations = Station.objects.filter(stationtype='integrity', status='1')
            neighborstations = integritystations.annotate(distance=Distance('geom', location)).filter(distance__lte=300000)
            cp.count = neighborstations.count()

            # Refresh service level time everytime control points is calculated per 24 hours
            # Refresh granularity is 24 hour
            unit = 1

            if cp.count >= 2:
                cp.sl3_time += unit
            elif cp.count == 1:
                cp.sl2_time += unit
            elif cp.count < 1:
                cp.sl1_time += unit

            cp.save()


class ControlpointsMonthlySummaryApiView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # Generate monthly control points stats based on service level field
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user
        period = 7
        num = Controlpoints_NA.objects.all().count()
        level1_total_time = Controlpoints_NA.objects.aggregate(Sum('sl1_time')).get('sl1_time__sum')
        level2_total_time = Controlpoints_NA.objects.aggregate(Sum('sl2_time')).get('sl2_time__sum')
        level3_total_time = Controlpoints_NA.objects.aggregate(Sum('sl3_time')).get('sl3_time__sum')
        
        level1percentage = (level1_total_time / (period * num)) * 100 
        level2percentage = (level2_total_time / (period * num)) * 100
        level3percentage = (level3_total_time / (period * num)) * 100
        
        result = {'level 1 cp': level1percentage, 'level 2 cp': level2percentage, 'level 3 cp': level3percentage}
        # serializer = CPSerializer(todos, many=True)
        return Response(result, status=status.HTTP_200_OK)


