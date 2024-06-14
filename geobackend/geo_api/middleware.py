import time
from prometheus_client import Counter, Histogram, Summary, Gauge

# Create Prometheus metrics
REQUEST_COUNT = Counter('http_requests_total', 'Total HTTP requests', ['method', 'endpoint', 'status_code'])
REQUEST_LATENCY = Histogram('http_request_latency_seconds', 'HTTP request latency', ['method', 'endpoint'])
RESPONSE_SIZE = Summary('http_response_size_bytes', 'Response size in bytes', ['method', 'endpoint', 'status_code'])
RESPONSE_DATA_CUSTOM_METRIC = Counter('response_data_custom_metric', 'Custom metric based on response data', ['method', 'endpoint'])

# Middleware class to record metrics
'''
class PrometheusMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        # Start time of the request
        start_time = time.time()

        # Process the request
        response = self.get_response(request)

        # End time of the request
        end_time = time.time()

        # Record the request count
        REQUEST_COUNT.labels(method=request.method, endpoint=request.path, status_code=response.status_code).inc()


        return response
'''