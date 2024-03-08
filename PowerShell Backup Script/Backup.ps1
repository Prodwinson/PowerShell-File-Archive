# Create 2 variables, one being the source of the backup and the other being the location of where the backup will be. Note that, you have to specific what you're trying to archive in the $source path
$source = "C:\"
$backup = "E:\"

# Create a time stamp to keep track of the creation of the backup
$timeStamp = Get-Date -Format "yyyyMMdd"

# Create the path of the backup folder
$backupFolder = "$backup\Backup_$timeStamp"

# Create an if statement. This statement will create a folder of the path if it doesn't exist
if (-not(Test-Path -Path $backupFolder)) {
    New-Item -Path $backupFolder -ItemType Directory -Force
}

# Create Copy-Item cmdlet to copy the source files into the backup folder
Copy-Item -Path $source\* -Destination $backupFolder -Recurse -Force
Write-Host "Backup has been completed. Back up saved to: E:\"
