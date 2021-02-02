# escape=`
ARG GTKSHARPVERSION=2.12.45

FROM mcr.microsoft.com/windows/servercore:2004-amd64
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
ADD https://xamarin.azureedge.net/GTKforWindows/Windows/gtk-sharp-${GTKSHARPVERSION}.msi C:\Users\Public\Downloads
RUN `
    $NodeMSiArgs = @(`
        '/i', 'C:\Users\Public\Downloads\gtk-sharp-${GTKSHARPVERSION}.msi', `
        '/quiet'); `
    Start-Process -NoNewWindow -Wait msiexec.exe $NodeMSiArgs;
