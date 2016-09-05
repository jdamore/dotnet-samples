properties {
  $message = 'Welcome to FirstWcfApp build!'
}

$message

task default -depends Test

task Test -depends Compile, Clean { 
  $message
}

task Compile -depends Clean { 
  MSBuild.exe FirstWcfApp.sln /t:rebuild /p:VisualStudioVersion=14.0
}

task Clean { 
}