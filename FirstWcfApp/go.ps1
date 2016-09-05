properties {
  $message = 'Welcome to FirstWcfApp build!'
}

$message

task default -depends Test

task Test -depends Compile, Clean { 
  $message
}

task Compile -depends Clean { 
}

task Clean { 
}