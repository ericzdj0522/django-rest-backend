import requests
from requests.auth import HTTPBasicAuth
from prometheus_client import Counter
from .metrics import api_response_metric, api_call_counter


def call_api_and_update_metrics():
    try:
        username = "ericzdj"
        password = "zdj19920522"

        cp_analysis = "http://127.0.0.1:8000/geo_api/cpmonthlystats/"
        cp_stats = "http://127.0.0.1:8000/geo_api/cpstats"
        #test endpoint
        url = 'http://127.0.0.1:8000/geo_api/update-metrics/'

        response_analysis = requests.get(cp_analysis, auth=HTTPBasicAuth(username, password))
        response_stats = requests.get(cp_stats, auth=HTTPBasicAuth(username, password))
        print("cronjob executed successful")
        
    except requests.exceptions.RequestException as e:
        # Handle request exceptions
        print(f"API request failed: {e}")

