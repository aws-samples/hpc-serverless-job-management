#!/bin/sh

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# pause 5 minutes before running job, giving the researcher a moment to inspect the queue with list_jobs and job_details
sleep 300

echo Greetings from $(hostname) on $(date)
echo Greetings from $(hostname) on $(date) > /shared/parallel-$(hostname).out