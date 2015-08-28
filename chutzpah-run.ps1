param (
    [string]$nugetExe = ".\.nuget\NuGet.exe",
    [string]$path,        # Adds a path to a folder or file to the list of test paths to run.
    [switch]$teamcity,    # Forces TeamCity mode (normally auto-detected)
    [switch]$coverage,    # Enable coverage collection
    [switch]$wait,        # Wait for input after completion
    [switch]$failOnError, # Return a non-zero exit code if any script errors or timeouts occurs
    [switch]$debug        # Print debugging information and tracing to console
)

$params = @()

if ($path) {
     $params += "/path `"$path`""
}

if ($teamcity) {
     $params += "/teamcity"
}

if ($coverage) {
     $params += "/coverage"
}

if ($wait) {
     $params += "/wait"
}

if ($failOnError) {
     $params += "/failOnError"
}

if ($debug) {
     $params += "/debug"
}

Write-Output "Command line parameters passed in:"
$params | Out-String | Write-Output

. $nugetExe Install "Chutzpah" -OutputDirectory "packages" -ExcludeVersion
Invoke-Expression ".\packages\Chutzpah\tools\chutzpah.console.exe $params"