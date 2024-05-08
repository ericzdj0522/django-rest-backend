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
from geopy.geocoders import Nominatim
import certifi
import ssl

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

    # 2. Create
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


    
class ControlpointsStatsApiView(APIView):
    # add permission to check if user is authenticated
    permission_classes = [permissions.IsAuthenticated]

    # 1. List all control points
    def get(self, request, *args, **kwargs):
        # List all the todo items for given requested user
        cp = Controlpoints_NA.objects.all()
        level1 = cp.filter(count__lt=1).count()
        level2 = cp.filter(count=1).count()
        level3 = cp.filter(count__gte=2).count()
        result = {'level 1 cp': level1, 'level 2 cp': level2, 'level 3 cp': level3}
        # serializer = CPSerializer(todos, many=True)
        return Response(result, status=status.HTTP_200_OK)



