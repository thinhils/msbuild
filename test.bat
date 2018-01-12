setlocal
set DOTNET_MULTILEVEL_LOOKUP=0
set DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
set DOTNET_HOST_PATH=C:\git\msbuild\artifacts\.dotnet\2.1.1-preview-007216\dotnet.exe

pushd c:\git\msbuild
REM taskkill /f /im dotnet.exe
taskkill /f /im msbuild.exe

REM del /s /q artifacts\debug\bootstrap
REM del /s /q artifacts\debug\bin
REM del /s /q artifacts\debug\obj

REM call newbuild -bootstraponly -skiptests
call newbuild -skiptests
REM call newbuild

REM taskkill /f /im dotnet.exe

REM C:\git\msbuild\artifacts\.dotnet\2.1.1-preview-007216\dotnet.exe msbuild "C:\git\msbuild\src\MSBuild\MSBuild.csproj" /restore
REM C:\git\msbuild\artifacts\.dotnet\2.1.1-preview-007216\dotnet.exe msbuild "C:\git\msbuild\src\MSBuild.UnitTests\Microsoft.Build.CommandLine.UnitTests.csproj" /restore

REM dotnet "C:\git\msbuild\artifacts\Debug\bootstrap\netcoreapp2.0\MSBuild\MSBuild.dll" "C:\git\msbuild\src\MSBuild.UnitTests\Microsoft.Build.CommandLine.UnitTests.csproj" /bl /p:CreateBootstrap=false /t:build /restore /v:m

REM C:\Users\daplaist\.nuget\packages\xunit.runner.console\2.3.0\tools\net452\xunit.console.x86.exe "C:\git\msbuild\artifacts\2\Debug\bin\Microsoft.Build.CommandLine.UnitTests\net46\Microsoft.Build.CommandLine.UnitTests.dll" -noshadow -method Microsoft.Build.UnitTests.CommandLineSwitchesTests.HelpMessagesAreValid

REM C:\Users\daplaist\.nuget\packages\xunit.runner.console\2.3.0\tools\net452\xunit.console.x86.exe "C:\git\msbuild\artifacts\2\Debug\bin\Microsoft.Build.Tasks.UnitTests\net46\Microsoft.Build.Tasks.UnitTests.dll" -noshadow -method Microsoft.Build.UnitTests.GenerateResource_Tests.InProc.MiscTests.ResxValueNewlines

C:\Users\daplaist\.nuget\packages\xunit.runner.console\2.3.0\tools\net452\xunit.console.x86.exe "C:\git\msbuild\artifacts\2\Debug\bin\Microsoft.Build.Engine.UnitTests\net46\Microsoft.Build.Engine.UnitTests.dll" -noshadow -html "C:\git\msbuild\artifacts\2\Debug\TestResults\Microsoft.Build.Engine.UnitTests_net46_x86.html"

popd