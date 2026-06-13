# Cron Backup Automation

## Overview

This project demonstrates how to automate Linux system backups using Bash scripting and Cron jobs.

The script creates a compressed backup of the `/etc` directory and stores it in a dedicated backup location. The backup process can be scheduled to run automatically using Cron.

## Objectives

* Learn Bash scripting fundamentals
* Automate system administration tasks
* Create compressed backups using `tar`
* Schedule jobs using Cron
* Implement basic logging and error checking

## Technologies Used

* Linux
* Bash Scripting
* Cron
* tar

## Project Structure

Cron-Backup-Automation/
├── backup.sh
├── README.md
└── screenshots/

## Script Features

* Checks whether the backup directory exists
* Creates the directory if it does not exist
* Creates a compressed backup of `/etc`
* Generates date-based backup filenames
* Logs backup status
* Suitable for Cron automation

## Commands Used

### Make Script Executable

chmod +x backup.sh

### Run Script Manually

./backup.sh

### Edit Cron Jobs

crontab -e

### Verify Cron Jobs

crontab -l

## Example Cron Schedule

Run the backup every day at 2:00 AM:

0 2 * * * /home/student/Cron-Backup-Automation/backup.sh

## Cron Format

* * * * *
│ │ │ │ │
│ │ │ │ └── Day of Week
│ │ │ └──── Month
│ │ └────── Day of Month
│ └──────── Hour
└────────── Minute
```

## Troubleshooting Process

If the backup does not run:

1. Verify the `crond` service is running.
2. Check whether the cron job exists.
3. Verify the schedule is correct.
4. Confirm the script has execute permission.
5. Test the script manually.
6. Review backup logs and output files.

## Learning Outcomes

Through this project I learned:

* Cron job scheduling
* Linux task automation
* Bash scripting
* File compression and backups
* Troubleshooting scheduled jobs
* Thinking like a Linux System Administrator

## Author

Nandana Mohan J

