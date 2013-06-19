# automated rsync backup for your mac

## Instructions

### rsyncbackup.sh
1. Replace local and remote files paths. The remote file path must be created on the server before running.
2. Replace User and Hostname with your servers username and host url.
3. This script assumes you have a public key on your server for passwordless access. 

### com.rsync.backup.plist
1. Place file in ~/Library/LaunchAgents/
2. Replace the ProgramArguments sting with the absolute path to rsyncbackup.sh.
3. Change the StartInterval to how often you want the backup to run(in seconds). Default is 86400 = 1 Day.

### Load & Launch
1. Open Terminal.app
2. Type launchctl load ~/Library/LaunchAgents/com.rsync.backup.plist
3. Type launchctl start com.rsync.backup.plist
4. Congratulations. Your slected directory is now backing up everyday. 