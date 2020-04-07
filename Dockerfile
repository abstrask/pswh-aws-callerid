FROM mcr.microsoft.com/powershell:lts-debian-buster-slim

SHELL ["pwsh", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN Install-Module AWSPowerShell.NetCore -Confirm:$false -AcceptLicense -Force

ADD Get-CallerId.ps1 /

ENTRYPOINT ["pwsh"]

CMD ["-File", "./Get-CallerId.ps1"]