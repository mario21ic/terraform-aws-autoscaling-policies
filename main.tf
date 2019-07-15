resource "aws_autoscaling_policy" "agents_scale" {
  count               = "${length(var.policies)}"

  name                = "scale-${lookup(var.policies[count.index], "name")}"
  scaling_adjustment  = "${lookup(var.policies[count.index], "adjustment")}"
  adjustment_type     = "ChangeInCapacity"
  cooldown            = "${lookup(var.policies[count.index], "cooldown")}"

  autoscaling_group_name = "${var.autoscaling_name}"
}

/* Metrics */
resource "aws_cloudwatch_metric_alarm" "cpu-high" {
  count               = "${length(var.policies)}"

  alarm_name = "${var.env}-cpu-${var.autoscaling_name}-${lookup(var.policies[count.index], "name")}"
  alarm_description = "This metric monitors ec2 cpu for high utilization on agent hosts"
  alarm_actions = [
    "${element(aws_autoscaling_policy.agents_scale.*.arn, count.index)}"
  ]
  dimensions {
    AutoScalingGroupName = "${var.autoscaling_name}"
  }

  comparison_operator = "${lookup(var.policies[count.index], "operator")}"
  evaluation_periods = "${lookup(var.policies[count.index], "evaluation")}"
  metric_name = "CPUUtilization"
  namespace = "AWS/EC2"
  period = "${lookup(var.policies[count.index], "period")}"
  threshold = "${lookup(var.policies[count.index], "threshold")}"
  statistic = "Average"
}