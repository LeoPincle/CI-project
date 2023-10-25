#!/bin/bash
sudo aws s3 cp s3://project-ci-web-data/app.yaml  /tmp/app.yaml
sudo ansible-playbook /tmp/app.yaml