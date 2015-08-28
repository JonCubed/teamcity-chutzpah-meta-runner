# TeamCity Chutzpah Meta-Runner
TeamCity meta-runner for Chutzpah Console. Does not require Chutzpah to be pre-installed on agents as it will automatically download the latest 
Chutzpah Console NuGet.

## How to use

### Installing plugin in TeamCity
Copy the plugin zip (ChutzpahConsole-plugin.zip) into the main TeamCity plugins directory, located at _**\<TeamCity Data Directory>**/plugins_. 
It will automatically get unpacked into the Build Agent Tools folder located at _**\<TeamCity Home>**/buildAgent/tools_.

If you are not sure where the home or data directories are located you can find them in the Administration section of TeamCity.

### Added Meta-Runner to Build Configuration

Once the plugin has unpacked you should see _Chutzpah Console_ as an option when you add a new build step in you build configuration. Test folder is the only manadatory field 
and should match the -path parameter for the chutzpah console exe.

![Setup Report Tab](https://joncubed.github.io/teamcity-chutzpah-meta-runner/assests/teamcity-build-step.png)

### Setup Code Coverage
If you want to display the code coverage results as another tab on the build results page, you will need to add a new report tab to either the 
project's configuration or in Root project if you want it available for all projects.

![Setup Report Tab](https://joncubed.github.io/teamcity-chutzpah-meta-runner/assests/teamcity-report-tab.png)

For each project that is doing code coverage you will also need to add the generated code coverage file as a build artifact.
![Setup Report Tab](https://joncubed.github.io/teamcity-chutzpah-meta-runner/assests/teamcity-build-artifacts.png)

## How to build the plugin

Run build-plugin.ps1 from root folder and the plugin will be created in _**./.artifacts**_ as ChutzpahConsole-plugin.zip 
````PowerShell
PS c:\source\teamcity-chutzpah-meta-runner>.\build-plugin.ps1
````

