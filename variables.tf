variable "region" {
  description = "aws region"
}

variable "env" {
  description = "Environment name"
}

//variable "name" {
//  description = "Name"
//}

variable "autoscaling_name" {
  default = 200
  description = "Name"
}

variable "policies" {
  type = "list"
  default = []
  description = "Policies to apply"
}

//variable "tag_start_stop_key" {
//  description = "Key of tag start stop"
//}
//
//variable "tag_start_stop_value" {
//  description = "Value of tag start stop"
//}

//variable "launch_configuration_name" {
//  description = "Launch configuration name"
//}

//variable "schedule_start_time" {
//  description = "The time for this action to end, in 'YYYY-MM-DDThh:mm:ssZ' format in UTC/GMT only, for example: 2014-06-01T00:00:00Z"
//}
//
//variable "schedule_start_recurrence" {
//  description = "The time when recurring future actions will start. Start time is specified by the user following the Unix cron syntax format"
//}
//
//variable "schedule_end_time" {
//  description = "The time for this action to end, in 'YYYY-MM-DDThh:mm:ssZ' format in UTC/GMT only, for example: 2014-06-01T00:00:00Z"
//}
//
//variable "schedule_end_recurrence" {
//  description = "The time when recurring future actions will start. Start time is specified by the user following the Unix cron syntax format"
//}
//
//variable "sns_topic_arn" {
//  description = "SNS topic arn"
//}
//

//variable "desired_capacity" {
//  description = "Desired capacity"
//}
//
//variable "max_size" {
//  description = "Max size"
//}
//
//variable "min_size" {
//  description = "Min size"
//}
//
//variable "health_check_type" {
//  default = "EC2"
//  description = "Values EC2 or ELB"
//}
//
///* Externals */
//variable "vpc_id" {
//  description = "vpc id"
//}
//
//variable "elb_names" {
//  type    = "list"
//  default = []
//  description = "Load balancer names"
//}
//
//variable "target_group_arns" {
//  type    = "list"
//  default = []
//  description = "Target group arns"
//}
//
//variable "subnet_ids" {
//  type = "list"
//  default = []
//  description = "Subnet available"
//}
