#!/bin/bash

echo "rmmod intel_powerclamp"
sudo rmmod intel_powerclamp

echo "grep enabled /sys/firmware/acpi/interrupts/*"

grep enabled /sys/firmware/acpi/interrupts/*
