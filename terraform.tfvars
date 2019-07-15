region = "us-west-2"
env = "draft"
//name = "demo"
policies = [
  {
    name      = "up"
    adjustment = 1
    operator  = "GreaterThanOrEqualToThreshold"
    threshold = 60
    evaluation  = 2
    period    = 60
    cooldown = 300
  },
  {
    name      = "down"
    adjustment = -1
    operator  = "LessThanOrEqualToThreshold"
    threshold = 80
    evaluation = 2
    period    = 60
    cooldown  = 400
  }
]
autoscaling_name = "bmduck-asg-backend"
//cooldown = 400

//sns_topic_arn = "sdsajkdsaldsa"
//max_size = 4
//min_size = 2
//desired_capacity = 2

//elb_names                 = ["bmqa-elb", "bmqa-elb-ssl"]
//launch_configuration_name = "bookingmotor_lc_def"
//schedule_start_time       = "2017-10-12T19:00:00Z"
//schedule_start_recurrence = "50 3 * * 1,2,3,4,5"
//schedule_end_time         = "2017-10-13T19:00:00Z"
//schedule_end_recurrence   = "0 0 * * 1,2,3,4,5"

//vpc_id = "vpc-ec170488"
//subnet_ids = ["subnet-aa978fce", "subnet-edabb39b"]
