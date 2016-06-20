#!/bin/bash

STACK_SNAPSHOT=lts-6.3

# Set the global project resolver
cd && stack config set resolver $STACK_SNAPSHOT
stack update
stack upgrade
