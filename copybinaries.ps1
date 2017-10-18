<#
One of the most common Build tasks - copying binaries from source to target directories.
Achieve this using variables (where you can enter custom values for those variables while running the script)
Most commonly used cmdlet : Copy-Item . You can also use xcopy or robocopy.exe 
Examples to copy binaries (dlls) or files are given below
#>

#XCOPY has a lot of parameters
# /Y parameter -Suppresses prompting to confirm that you want to overwrite an existing destination file.
# /E - Copies all subdirectories, even if they are empty. Use /e with the /s and /t command-line options. 
# /I - If Source is a directory or contains wildcards and Destination does not exist, xcopy assumes Destination specifies a directory name and creates a new directory. Then, xcopy copies all specified files into the new directory. By default, xcopy prompts you to specify whether Destination is a file or a directory.


$SourcesDirectory = "D:\Build\Main"
$DestinationPath = "D:\MyWebapp"


COPY-ITEM "$SourcesDirectory\Installers\applicationlibrary.dll" "$DestinationPath\Installers\bin" 


XCOPY "$SourcesDirectory\Application\Branch\MyLibrary.dll" "$SourcesDirectory\Services\bin" /Y /E /I

# /E with robocopy - Copy subdirectories, including Empty ones
robocopy $SourcesDirectory"\_PublishedWebsites\Application" "$DestinationPath\PublishedSites\MyApp" /E 

