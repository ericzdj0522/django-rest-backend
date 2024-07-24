from prometheus_client import Gauge, Counter

#Control points metrics
level1_count_g = Gauge('level1_count', 'metric for level 1 control points count')
level2_count_g = Gauge('level2_count', 'metric for level 2 control points count')
level3_count_g = Gauge('level3_count', 'metric for level 3 control points count')

level1_count_eu = Gauge('level1_count_eu', 'metric for level 1 eu control points count')
level2_count_eu = Gauge('level2_count_eu', 'metric for level 2 eu control points count')
level3_count_eu = Gauge('level3_count_eu', 'metric for level 3 eu control points count')

level1_count_ap = Gauge('level1_count_ap', 'metric for level 1 ap control points count')
level2_count_ap = Gauge('level2_count_ap', 'metric for level 2 ap control points count')
level3_count_ap = Gauge('level3_count_ap', 'metric for level 3 ap control points count')

level1_time_g = Gauge('level1_time', 'metric for level 1 control point accumulated time')
level2_time_g = Gauge('level2_time', 'metric for level 2 control point accumulated time')
level3_time_g = Gauge('level3_time', 'metric for level 3 control point accumulated time')

level1_time_eu = Gauge('level1_time_eu', 'metric for level 1 eu control point accumulated time')
level2_time_eu = Gauge('level2_time_eu', 'metric for level 2 eu control point accumulated time')
level3_time_eu = Gauge('level3_time_eu', 'metric for level 3 eu control point accumulated time')

level1_time_ap = Gauge('level1_time_ap', 'metric for level 1 ap control point accumulated time')
level2_time_ap = Gauge('level2_time_ap', 'metric for level 2 ap control point accumulated time')
level3_time_ap = Gauge('level3_time_ap', 'metric for level 3 ap control point accumulated time')


cp_level_g = Gauge('cp_level', 'metric for control points level', ['cpid'])
cp_level_eu = Gauge('cp_level_eu', 'metric for eu control points level', ['cpid'])
cp_level_ap = Gauge('cp_level_ap', 'metric for ap control points level', ['cpid'])

test_metrics_g = Gauge('test', 'metric for control points level test', ['cpid'])

# Test metrics
api_response_metric = Gauge('api_response_value', 'Value from API response')
api_call_counter = Counter('api_call_count', 'Total number of API calls')