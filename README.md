# Shell_Automation
The Shell Script Which Written To Make Task Automate. You can Use ```Crontab``` For Scheduled Task
### [File_manager.sh](https://github.com/nithin-dot/Shell_Automation/blob/master/File_manager.sh)
- The Script Is Used To Manage and Align Files in Proper manner With Respective Folder
- The Script Also Capable of Buckup The Files To Avoid file crash due to System Crash
- We Can Also Use Disaster Recovery Server To Move the Backuped Files Stored into Mutiple Replicas
### [Storage_alert.sh](https://github.com/nithin-dot/Shell_Automation/blob/master/Storage_alert.sh)
- This Script Is Used To Notify The User via Mail When The Storage of The Running Machine Reach the Certain Criteria
- The Message In the mail Contains The Storage metrics of the Machine
### [Autopush.sh](https://github.com/nithin-dot/Shell_Automation/blob/master/autopush.sh)
  - The Script Is Used To Commit Code With Given Message like If The User Change File It will show Message According To user 
  change file
  - It internally use Package Called ```gh``` When You Run script It automatically configure With Local Credential of machines 
  - This Script Support Linux Distributions like  
      - OpenSUSE and SUSE Enterprise Linux platforms
      - RedHat based systems
      - Arch based and Ubuntu Based Flavours
### [System_off.sh](https://github.com/nithin-dot/Shell_Automation/blob/master/system_off.sh)
- This script Is used For Shutdown System If it Reach Low Battery Level
- This Script Will Automatically Close Running Sessions within system When It Reach lower Power-mode Like It Reach Below 20 Or 30
- It will Help Like Power Saving mode  
## How TO run Scripts

   1. Download the Script Or Copy script and Paste in Your ```.sh``` file
   2. Open the Terminal application on Linux or Unix
   3. Set execute permission on your script using chmod command :
   ```chmod +x script-name-here.sh```
   4. To run your script :
   ``` ./script-name-here.sh```
  5.  Another option is as follows to execute shell script:
   ``` sh script-name-here.sh```
    OR

   ``` bash script-name-here.sh```
