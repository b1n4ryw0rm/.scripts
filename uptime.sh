#!/bin/bash

uptime | awk '{print $3,$4}' | sed 's/,//'
