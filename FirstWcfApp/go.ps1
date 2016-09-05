# Build properties
properties {
  $message = 'Welcome to FirstWcfApp build!'
}


# Default task
task default -depends Clean, Compile, Test


# Clean all DLLs
task Clean { 
  Get-ChildItem $PSScriptRoot\FirstWcfApp -recurse -include *.dll -force | Remove-Item -v
  Get-ChildItem $PSScriptRoot\FirstWcfAppTest -recurse -include *.dll -force | Remove-Item -v
}

# Compile the solution
task Compile { 
  MSBuild.exe FirstWcfApp.sln /t:rebuild /p:VisualStudioVersion=14.0
}

# Runs the tests
task Test {
  $env:Path += ";$PSScriptRoot\packages\NUnit.ConsoleRunner.3.4.1\tools"
  nunit3-console.exe $PSScriptRoot\FirstWcfAppTest\bin\Debug\FirstWcfAppTest.dll
}