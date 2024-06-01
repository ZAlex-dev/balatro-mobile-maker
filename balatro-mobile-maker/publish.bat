@echo off

set app_version_name=beta-0.8.3

echo Clearing bin, publish, and obj folders.
rmdir bin /s /q
rmdir obj /s /q
rmdir publish /s /q

mkdir publish

echo Building win-x64
dotnet publish -o bin\publish\win-x64 --self-contained -f net8.0 --runtime win-x64 -p:PublishTrimmed=true
move .\bin\publish\win-x64\balatro-mobile-maker.exe .\publish\balatro-mobile-maker-%app_version_name%-win-x64.exe
