#!/bin/bash
sudo aws s3 cp s3://project-ci-12-terraform-state/web.yaml  /tmp/web.yaml
sudo ansible-playbook /tmp/web.yaml