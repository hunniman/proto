set /p module=please enter the module name:

protoc --descriptor_set_out ../pb/%module%.pb %module%.proto
protoc.exe  --java_out=./../src   ./%module%.proto

set current_path="%cd%"


pause