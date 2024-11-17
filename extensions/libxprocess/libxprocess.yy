{
  "$GMExtension":"",
  "%Name":"libxprocess",
  "androidactivityinject":"",
  "androidclassname":"",
  "androidcodeinjection":"",
  "androidinject":"",
  "androidmanifestinject":"",
  "androidPermissions":[],
  "androidProps":false,
  "androidsourcedir":"",
  "author":"",
  "classname":"",
  "copyToTargets":194,
  "description":"",
  "exportToGame":true,
  "extensionVersion":"0.0.1",
  "files":[
    {"$GMExtensionFile":"","%Name":"libxprocess.dll","constants":[
        {"$GMExtensionConstant":"","%Name":"KINFO_EXEP","hidden":false,"name":"KINFO_EXEP","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0x1000",},
        {"$GMExtensionConstant":"","%Name":"KINFO_CWDP","hidden":false,"name":"KINFO_CWDP","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0x2000",},
        {"$GMExtensionConstant":"","%Name":"KINFO_PPID","hidden":false,"name":"KINFO_PPID","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0x0100",},
        {"$GMExtensionConstant":"","%Name":"KINFO_CPID","hidden":false,"name":"KINFO_CPID","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0x0200",},
        {"$GMExtensionConstant":"","%Name":"KINFO_ARGV","hidden":false,"name":"KINFO_ARGV","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0x0010",},
        {"$GMExtensionConstant":"","%Name":"KINFO_ENVV","hidden":false,"name":"KINFO_ENVV","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0x0020",},
        {"$GMExtensionConstant":"","%Name":"KINFO_OWID","hidden":false,"name":"KINFO_OWID","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0x0001",},
      ],"copyToTargets":194,"filename":"libxprocess.dll","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"ProcessExecute","argCount":0,"args":[1,],"documentation":"","externalName":"ProcessExecute","help":"ProcessExecute(command)","hidden":false,"kind":1,"name":"ProcessExecute","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcessExecuteAsync","argCount":0,"args":[1,],"documentation":"","externalName":"ProcessExecuteAsync","help":"ProcessExecuteAsync(command)","hidden":false,"kind":1,"name":"ProcessExecuteAsync","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"CompletionStatusFromExecutedProcess","argCount":0,"args":[2,],"documentation":"","externalName":"CompletionStatusFromExecutedProcess","help":"CompletionStatusFromExecutedProcess(procIndex)","hidden":false,"kind":1,"name":"CompletionStatusFromExecutedProcess","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ExecutedProcessWriteToStandardInput","argCount":0,"args":[2,1,],"documentation":"","externalName":"ExecutedProcessWriteToStandardInput","help":"ExecutedProcessWriteToStandardInput(procId,input)","hidden":false,"kind":1,"name":"ExecutedProcessWriteToStandardInput","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ExecutedProcessReadFromStandardOutput","argCount":0,"args":[2,],"documentation":"","externalName":"ExecutedProcessReadFromStandardOutput","help":"ExecutedProcessReadFromStandardOutput(procId)","hidden":false,"kind":1,"name":"ExecutedProcessReadFromStandardOutput","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"ProcIdExists","argCount":0,"args":[2,],"documentation":"","externalName":"ProcIdExists","help":"ProcIdExists(procId)","hidden":false,"kind":1,"name":"ProcIdExists","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcIdKill","argCount":0,"args":[2,],"documentation":"","externalName":"ProcIdKill","help":"ProcIdKill(procId)","hidden":false,"kind":1,"name":"ProcIdKill","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcListCreate","argCount":0,"args":[],"documentation":"","externalName":"ProcListCreate","help":"ProcListCreate()","hidden":false,"kind":1,"name":"ProcListCreate","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcessId","argCount":0,"args":[2,2,],"documentation":"","externalName":"ProcessId","help":"ProcessId(procList,i)","hidden":false,"kind":1,"name":"ProcessId","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcessIdLength","argCount":0,"args":[2,],"documentation":"","externalName":"ProcessIdLength","help":"ProcessIdLength(procList)","hidden":false,"kind":1,"name":"ProcessIdLength","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"FreeProcInfo","argCount":0,"args":[2,],"documentation":"","externalName":"FreeProcInfo","help":"FreeProcInfo(procInfo)","hidden":false,"kind":1,"name":"FreeProcInfo","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"FreeProcList","argCount":0,"args":[2,],"documentation":"","externalName":"FreeProcList","help":"FreeProcList(procList)","hidden":false,"kind":1,"name":"FreeProcList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ExecutableImageFilePath","argCount":0,"args":[2,],"documentation":"","externalName":"ExecutableImageFilePath","help":"ExecutableImageFilePath(procInfo)","hidden":false,"kind":1,"name":"ExecutableImageFilePath","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"CurrentWorkingDirectory","argCount":0,"args":[2,],"documentation":"","externalName":"CurrentWorkingDirectory","help":"CurrentWorkingDirectory(procInfo)","hidden":false,"kind":1,"name":"CurrentWorkingDirectory","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"ParentProcessId","argCount":0,"args":[2,],"documentation":"","externalName":"ParentProcessId","help":"ParentProcessId(procInfo)","hidden":false,"kind":1,"name":"ParentProcessId","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ChildProcessId","argCount":0,"args":[2,2,],"documentation":"","externalName":"ChildProcessId","help":"ChildProcessId(procInfo,i)","hidden":false,"kind":1,"name":"ChildProcessId","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ChildProcessIdLength","argCount":0,"args":[2,],"documentation":"","externalName":"ChildProcessIdLength","help":"ChildProcessIdLength(procInfo)","hidden":false,"kind":1,"name":"ChildProcessIdLength","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"CommandLine","argCount":0,"args":[2,2,],"documentation":"","externalName":"CommandLine","help":"CommandLine(procInfo,i)","hidden":false,"kind":1,"name":"CommandLine","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"CommandLineLength","argCount":0,"args":[2,],"documentation":"","externalName":"CommandLineLength","help":"CommandLineLength(procInfo)","hidden":false,"kind":1,"name":"CommandLineLength","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"Environment","argCount":0,"args":[2,2,],"documentation":"","externalName":"Environment","help":"Environment(procInfo,i)","hidden":false,"kind":1,"name":"Environment","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"EnvironmentLength","argCount":0,"args":[2,],"documentation":"","externalName":"EnvironmentLength","help":"EnvironmentLength(procInfo)","hidden":false,"kind":1,"name":"EnvironmentLength","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"OwnedWindowId","argCount":0,"args":[2,2,],"documentation":"","externalName":"OwnedWindowId","help":"OwnedWindowId(procInfo,i)","hidden":false,"kind":1,"name":"OwnedWindowId","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"OwnedWindowIdLength","argCount":0,"args":[2,],"documentation":"","externalName":"OwnedWindowIdLength","help":"OwnedWindowIdLength(procInfo)","hidden":false,"kind":1,"name":"OwnedWindowIdLength","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"WindowIdExists","argCount":0,"args":[1,],"documentation":"","externalName":"WindowIdExists","help":"WindowIdExists(winId)","hidden":false,"kind":1,"name":"WindowIdExists","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"WindowIdKill","argCount":0,"args":[1,],"documentation":"","externalName":"WindowIdKill","help":"WindowIdKill(winId)","hidden":false,"kind":1,"name":"WindowIdKill","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcIdFromSelf","argCount":0,"args":[],"documentation":"","externalName":"ProcIdFromSelf","help":"ProcIdFromSelf()","hidden":false,"kind":1,"name":"ProcIdFromSelf","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ParentProcIdFromSelf","argCount":0,"args":[],"documentation":"","externalName":"ParentProcIdFromSelf","help":"ParentProcIdFromSelf()","hidden":false,"kind":1,"name":"ParentProcIdFromSelf","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ExecutableFromSelf","argCount":0,"args":[],"documentation":"","externalName":"ExecutableFromSelf","help":"ExectuableFromSelf()","hidden":false,"kind":1,"name":"ExecutableFromSelf","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"DirectoryGetCurrentWorking","argCount":0,"args":[],"documentation":"","externalName":"DirectoryGetCurrentWorking","help":"DirectoryGetCurrentWorking()","hidden":false,"kind":1,"name":"DirectoryGetCurrentWorking","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"DirectorySetCurrentWorking","argCount":0,"args":[1,],"documentation":"","externalName":"DirectorySetCurrentWorking","help":"DirectorySetCurrentWorking(dname)","hidden":false,"kind":1,"name":"DirectorySetCurrentWorking","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"EnvironmentGetVariable","argCount":0,"args":[1,],"documentation":"","externalName":"EnvironmentGetVariable","help":"EnvironmentGetVariable(name)","hidden":false,"kind":1,"name":"EnvironmentGetVariable","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"EnvironmentSetVariable","argCount":0,"args":[1,1,],"documentation":"","externalName":"EnvironmentSetVariable","help":"EnvironmentSetVariable(name,value)","hidden":false,"kind":1,"name":"EnvironmentSetVariable","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"EnvironmentUnsetVariable","argCount":0,"args":[1,],"documentation":"","externalName":"EnvironmentUnsetVariable","help":"EnvironmentUnsetVariable(name)","hidden":false,"kind":1,"name":"EnvironmentUnsetVariable","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"FreeExecutedProcessStandardInput","argCount":0,"args":[2,],"documentation":"","externalName":"FreeExecutedProcessStandardInput","help":"FreeExecutedProcessStandardInput(procIndex)","hidden":false,"kind":1,"name":"FreeExecutedProcessStandardInput","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"FreeExecutedProcessStandardOutput","argCount":0,"args":[2,],"documentation":"","externalName":"FreeExecutedProcessStandardOutput","help":"FreeExecutedProcessStandardOutput(procIndex)","hidden":false,"kind":1,"name":"FreeExecutedProcessStandardOutput","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcInfoFromProcId","argCount":0,"args":[2,],"documentation":"","externalName":"ProcInfoFromProcId","help":"ProcInfoFromProcId(procId)","hidden":false,"kind":1,"name":"ProcInfoFromProcId","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ExeFromProcId","argCount":0,"args":[2,],"documentation":"","externalName":"ExeFromProcId","help":"ExeFromProcId(procId)","hidden":false,"kind":1,"name":"ExeFromProcId","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"CwdFromProcId","argCount":0,"args":[2,],"documentation":"","externalName":"CwdFromProcId","help":"CwdFromProcId(procId)","hidden":false,"kind":1,"name":"CwdFromProcId","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"DirectoryGetTemporaryPath","argCount":0,"args":[],"documentation":"","externalName":"DirectoryGetTemporaryPath","help":"DirectoryGetTemporaryPath()","hidden":false,"kind":1,"name":"DirectoryGetTemporaryPath","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"WindowIdFromNativeWindow","argCount":0,"args":[1,],"documentation":"","externalName":"WindowIdFromNativeWindow","help":"WindowIdFromNativeWindow(window)","hidden":false,"kind":1,"name":"WindowIdFromNativeWindow","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"EnvironmentGetVariableExists","argCount":0,"args":[1,],"documentation":"","externalName":"EnvironmentGetVariableExists","help":"","hidden":false,"kind":1,"name":"EnvironmentGetVariableExists","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"ProcInfoFromProcIdEx","argCount":0,"args":[2,2,],"documentation":"","externalName":"ProcInfoFromProcIdEx","help":"ProcInfoFromProcIdEx(procId,kInfoFlags)","hidden":false,"kind":1,"name":"ProcInfoFromProcIdEx","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"SetBufferLimitForStandardOutput","argCount":0,"args":[2,],"documentation":"","externalName":"SetBufferLimitForStandardOutput","help":"SetBufferLimitForStandardOutput(limit)","hidden":false,"kind":1,"name":"SetBufferLimitForStandardOutput","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"CurrentProcessReadFromStandardInput","argCount":0,"args":[],"documentation":"","externalName":"CurrentProcessReadFromStandardInput","help":"CurrentProcessReadFromStandardInput()","hidden":false,"kind":1,"name":"CurrentProcessReadFromStandardInput","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":1,"name":"libxprocess.dll","order":[
        {"name":"ProcessExecute","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcessExecuteAsync","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"CompletionStatusFromExecutedProcess","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ExecutedProcessWriteToStandardInput","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ExecutedProcessReadFromStandardOutput","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcIdExists","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcIdKill","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcListCreate","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcessId","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcessIdLength","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"FreeProcInfo","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"FreeProcList","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ExecutableImageFilePath","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"CurrentWorkingDirectory","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ParentProcessId","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ChildProcessId","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ChildProcessIdLength","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"CommandLine","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"CommandLineLength","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"Environment","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"EnvironmentLength","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"OwnedWindowId","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"OwnedWindowIdLength","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"WindowIdExists","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"WindowIdKill","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcIdFromSelf","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ParentProcIdFromSelf","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ExecutableFromSelf","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"DirectoryGetCurrentWorking","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"DirectorySetCurrentWorking","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"EnvironmentGetVariable","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"EnvironmentGetVariableExists","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"EnvironmentSetVariable","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"EnvironmentUnsetVariable","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"DirectoryGetTemporaryPath","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"FreeExecutedProcessStandardInput","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"FreeExecutedProcessStandardOutput","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcInfoFromProcId","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ProcInfoFromProcIdEx","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"ExeFromProcId","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"CwdFromProcId","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"WindowIdFromNativeWindow","path":"extensions/libxprocess/libxprocess.yy",},
      ],"origname":"","ProxyFiles":[
        {"$GMProxyFile":"","%Name":"libxprocess.dylib","name":"libxprocess.dylib","resourceType":"GMProxyFile","resourceVersion":"2.0","TargetMask":1,},
        {"$GMProxyFile":"","%Name":"libxprocess_arm.so","name":"libxprocess_arm.so","resourceType":"GMProxyFile","resourceVersion":"2.0","TargetMask":7,},
        {"$GMProxyFile":"","%Name":"libxprocess_arm64.so","name":"libxprocess_arm64.so","resourceType":"GMProxyFile","resourceVersion":"2.0","TargetMask":7,},
        {"$GMProxyFile":"","%Name":"libxprocess.so","name":"libxprocess.so","resourceType":"GMProxyFile","resourceVersion":"2.0","TargetMask":7,},
      ],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"libxprocess.zip","constants":[],"copyToTargets":0,"filename":"libxprocess.zip","final":"","functions":[],"init":"","kind":4,"name":"libxprocess.zip","order":[],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"libxprocess.gml","constants":[],"copyToTargets":194,"filename":"libxprocess.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"libxprocess_init","argCount":0,"args":[],"documentation":"","externalName":"libxprocess_init","help":"libxprocess_init()","hidden":false,"kind":2,"name":"libxprocess_init","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"execute_shell","argCount":0,"args":[1,1,],"documentation":"","externalName":"execute_shell","help":"execute_shell(prog,arg)","hidden":false,"kind":2,"name":"execute_shell","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"execute_program","argCount":0,"args":[1,1,2,],"documentation":"","externalName":"execute_program","help":"execute_program(prog,arg,wait)","hidden":false,"kind":2,"name":"execute_program","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"file_text_enable_stddesc","argCount":0,"args":[2,],"documentation":"","externalName":"file_text_enable_stddesc","help":"file_text_enable_stddesc(enable)","hidden":false,"kind":2,"name":"file_text_enable_stddesc","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"file_text_open_write_stdin","argCount":0,"args":[2,],"documentation":"","externalName":"file_text_open_write_stdin(pid)","help":"file_text_open_write_stdin(pid)","hidden":false,"kind":2,"name":"file_text_open_write_stdin","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"file_text_write_string_stdin","argCount":0,"args":[2,1,],"documentation":"","externalName":"file_text_write_string_stdin(file,","help":"file_text_write_string_stdin(file,str)","hidden":false,"kind":2,"name":"file_text_write_string_stdin","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"file_text_close_stdin","argCount":0,"args":[2,],"documentation":"","externalName":"file_text_close_stdin(file)","help":"file_text_close_stdin(file)","hidden":false,"kind":2,"name":"file_text_close_stdin","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"file_text_open_read_stdout","argCount":0,"args":[2,],"documentation":"","externalName":"file_text_open_read_stdout","help":"file_text_open_read_stdout(pid)","hidden":false,"kind":2,"name":"file_text_open_read_stdout","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"file_text_read_string_stdout","argCount":0,"args":[2,],"documentation":"","externalName":"file_text_read_string_stdout","help":"file_text_read_string_stdout(file)","hidden":false,"kind":2,"name":"file_text_read_string_stdout","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"file_text_close_stdout","argCount":0,"args":[2,],"documentation":"","externalName":"file_text_close_stdout","help":"file_text_close_stdout(file)","hidden":false,"kind":2,"name":"file_text_close_stdout","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
      ],"init":"libxprocess_init","kind":2,"name":"libxprocess.gml","order":[
        {"name":"libxprocess_init","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"execute_shell","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"execute_program","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"file_text_enable_stddesc","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"file_text_open_write_stdin","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"file_text_write_string_stdin","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"file_text_close_stdin","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"file_text_open_read_stdout","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"file_text_read_string_stdout","path":"extensions/libxprocess/libxprocess.yy",},
        {"name":"file_text_close_stdout","path":"extensions/libxprocess/libxprocess.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject":"",
  "hasConvertedCodeInjection":true,
  "helpfile":"",
  "HTML5CodeInjection":"",
  "html5Props":false,
  "IncludedResources":[],
  "installdir":"",
  "iosCocoaPodDependencies":"",
  "iosCocoaPods":"",
  "ioscodeinjection":"",
  "iosdelegatename":"",
  "iosplistinject":"",
  "iosProps":false,
  "iosSystemFrameworkEntries":[],
  "iosThirdPartyFrameworkEntries":[],
  "license":"",
  "maccompilerflags":"",
  "maclinkerflags":"",
  "macsourcedir":"",
  "name":"libxprocess",
  "options":[],
  "optionsFile":"options.json",
  "packageId":"",
  "parent":{
    "name":"Extensions",
    "path":"folders/Extensions.yy",
  },
  "productId":"",
  "resourceType":"GMExtension",
  "resourceVersion":"2.0",
  "sourcedir":"",
  "supportedTargets":-1,
  "tvosclassname":null,
  "tvosCocoaPodDependencies":"",
  "tvosCocoaPods":"",
  "tvoscodeinjection":"",
  "tvosdelegatename":null,
  "tvosmaccompilerflags":"",
  "tvosmaclinkerflags":"",
  "tvosplistinject":"",
  "tvosProps":false,
  "tvosSystemFrameworkEntries":[],
  "tvosThirdPartyFrameworkEntries":[],
}