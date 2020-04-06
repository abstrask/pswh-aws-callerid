# PowerShell Core AWS Get-STSCalleridentity

Simple Docker image that will run AWS `Get-STSCallerIdentity` from Powershell Core.

If the environmental variable `AWS_PROFILE` is passed, it will be used as an argument to `Get-STSCallerIdentity`.

The intended use case is to test [KIAM](https://github.com/uswitch/kiam) (and later, EKS service roles) on Kubernetes.
