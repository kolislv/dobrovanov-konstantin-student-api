#!/bin/bash

LOG_FILE="logs/Dobrovanov_Konstantin_system_report.log"
STUDENT_NAME="Dobrovanov Konstantin"

{
    echo "===== SYSTEM REPORT ====="
    echo "Student: $STUDENT_NAME"
    echo "Date and time: $(date)"
    echo "Username: $(whoami)"
    echo "Operating system:"
    cat /etc/os-release
    echo "Kernel version:"
    uname -r
    echo "CPU information:"
    lscpu
    echo "Memory information:"
    free -h
    echo "Disk usage:"
    df -h
    echo "========================="
} | tee "$LOG_FILE"

