from prometheus_client import Gauge, Counter

#Control points metrics
level1_count_g = Gauge('level1_count', 'metric for level 1 control points count')
level2_count_g = Gauge('level2_count', 'metric for level 2 control points count')
level3_count_g = Gauge('level3_count', 'metric for level 3 control points count')

level1_pc_g = Gauge('level1_percent', 'metric for level 1 control points percentage')
level2_pc_g = Gauge('level2_percent', 'metric for level 2 control points percentage')
level3_pc_g = Gauge('level3_percent', 'metric for level 3 control points percentage')

level1_time_g = Gauge('level1_time', 'metric for level 1 control point accumulated time')
level2_time_g = Gauge('level2_time', 'metric for level 2 control point accumulated time')
level3_time_g = Gauge('level3_time', 'metric for level 3 control point accumulated time')

# Test metrics
api_response_metric = Gauge('api_response_value', 'Value from API response')
api_call_counter = Counter('api_call_count', 'Total number of API calls')