#Requires -Module @{ ModuleName = 'AWSPowerShell.NetCore'; ModuleVersion = '4.0.0' }

$ProgressPreference = 'SilentlyContinue'

If ($env:AWS_DEFAULT_REGION) {
    Set-DefaultAWSRegion -Region $env:AWS_DEFAULT_REGION
}

If ($env:AWS_PROFILE) {
    Get-STSCallerIdentity -AwsProfileName $env:AWS_PROFILE | Format-List *
} Else {
    Get-STSCallerIdentity | Format-List *
}
