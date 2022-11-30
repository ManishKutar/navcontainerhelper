param(
    [switch] $Silent,
    [string[]] $bcContainerHelperConfigFile = @()
)

. (Join-Path $PSScriptRoot "InitializeModule.ps1") `
    -Silent:$Silent `
    -bcContainerHelperConfigFile $bcContainerHelperConfigFile `
    -moduleName $MyInvocation.MyCommand.Name `
    -moduleDependencies @( 'BC.ConfigurationHelper', 'BC.TelemetryHelper', 'BC.CommonHelper' )

. (Join-Path $PSScriptRoot "HelperFunctions.ps1")

# Common functions
. (Join-Path $PSScriptRoot "Artifacts\Download-Artifacts.ps1")
. (Join-Path $PSScriptRoot "Artifacts\Get-BcArtifactUrl.ps1")
. (Join-Path $PSScriptRoot "Artifacts\Get-NavArtifactUrl.ps1")
