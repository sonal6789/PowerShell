# Task: Let's assume, some UNC path or windows server directory path is given "C:\TEMP\main\"
# Path contains build directories "main\1000", "main\1001", "main\1002" etc
# Solution: Use this code to sort the files according to creation time in a directory
# Keep the sorted files in descending order
# Delete all the files/folders in the directory except the latest 5 created


# Declare a variable to store the latest 5 files/folders and use Powershell pipeline
$myvariable = Get-ChildItem C:\TEMP\main | sort creationtime -descending | select -first 5

# Use this to check what value is now stored in your variable
Write-host $myvariable

# Now delete everything except the latest five files in the \main directory
remove-item "C:\TEMP\main\*" -exclude $myvariable