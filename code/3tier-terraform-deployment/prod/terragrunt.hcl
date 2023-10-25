terraform {
    source = "git::ssh://git@bitbucket.org/dptrealtime/3tier-terraform-module?ref=1.0"
    }
    remote_state {
      backend = "s3"
      config = {
        bucket         = "project-ci-12-terraform-state"
        key            = "3tier/prod/terraform.tfstate"
        region         = "us-east-2"
    }
  }

inputs = {
env = "prod"
application = "project-web"
instance_profile = "project-ec2-global"
keypair = "MyKey"
instance_type = "t2.micro"
asg_max_cap = "1"
asg_min_cap = "1"
asg_desired_cap = "1"
latest_snapshot_id = ""
rds_instance_type = "db.t3.micro"
database_name = "project-rds-01"
database_identifier = "project-rds-01"
}
