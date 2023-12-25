# EC2 Instance Variables
region         = "us-east-1"
ami_id         = "ami-06aa3f7caf3a30282"
instance_type  = "t2.micro"
key_name       = "learning"
instance_count = 1
volume-size    = 20

# Ec2 Tags
name        = "monitoring-stack"
environment = "dev"
application = "monitoring"

# CIDR Ingress Variables
create_ingress_cidr      = true
ingress_cidr_from_port   = [22, 80, 443, 9090, 9100, 9093, 3000]             # List of from ports
ingress_cidr_to_port     = [22, 80, 443, 9090, 9100, 9093, 3000]             # List of to ports
ingress_cidr_protocol    = ["tcp", "tcp", "tcp", "tcp", "tcp", "tcp", "tcp"] # Protocol for all rules (you can add more if needed)
ingress_cidr_block       = ["0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0"]
ingress_cidr_description = ["SSH", "HTTP", "HTTPS", "Prometheus", "Node-exporter", "Alert manager", "Grafana"]

# CIDR Egress Variables
create_egress_cidr    = true
egress_cidr_from_port = [0]
egress_cidr_to_port   = [0]
egress_cidr_protocol  = ["-1"]
egress_cidr_block     = ["0.0.0.0/0"]
