set /p module=please enter the module name:

protoc --descriptor_set_out ../pb/%module%.pb %module%.proto
protoc.exe  --java_out=./../src   ./%module%.proto

set current_path="%cd%"

cd "%current_path%/../src/com/znl/proto/"
copy /y "%module%.java" "%current_path%/../../server/gameserver/src/main/java/com/znl/proto/%module%.java"

cd "%current_path%/../pb/"
copy /y "%module%.pb" "%current_path%/../../client/slgGame/res/proto/%module%.pb" 

pause