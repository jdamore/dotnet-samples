@echo off

@rem install NuGet packages
.\nuget.exe install FirstWcfApp\packages.config -o .\packages
.\nuget.exe install FirstWcfAppTest\packages.config -o .\packages

@rem set path to psake utility
set PATH=%PATH%;%~dp0\packages\psake.4.6.0\tools

@rem run psake with our go script and any argument
psake.cmd go.ps1 %*
