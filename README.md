# TeamCity Chutzpah Meta-Runner
TeamCity meta-runner for Chutzpah Console. Does not require Chutzpah to be pre-installed on agents as it will automatically download the latest 
Chutzpah Console NuGet.

## How to use

### Installing plugin in TeamCity
Copy the plugin zip (ChutzpahConsole-plugin.zip) into the main TeamCity plugins directory, located at _**\<TeamCity Data Directory>**/plugins_. 
It will automatically get unpacked into the Build Agent Tools folder located at _**\<TeamCity Home>**/buildAgent/tools_.

If you are not sure where the home or data directories are located you can find them in the Administration section of TeamCity.

### Added Meta-Runner to Build Configuration


## How to build the plugin

Run build-plugin.ps1 from root folder and the plugin will be created in _**./.artifacts**_ as ChutzpahConsole-plugin.zip 
````PowerShell
PS c:\source\teamcity-chutzpah-meta-runner>.\build-plugin.ps1
````

