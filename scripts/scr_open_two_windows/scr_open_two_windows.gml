
//ME DEMANDE MÊME PAS MÊME MOI JE SAIS PAS COMMENT CA FONCITONNE

function openMultipleWindows(){
	
	function run_self(amount) {
	  pid = 0; args = ""; environ = EnvironmentGetVariable("GAME_INSTANCE");
	  game_instance = ((environ != "") ? int64(environ) + 1 : 1);
	  EnvironmentSetVariable("GAME_INSTANCE", string(game_instance));
	  info = ProcInfoFromProcId(ProcIdFromSelf());
	  cmdsize = CommandLineLength(info);
	  for (i = 0; i < cmdsize; i++) args += "\"" + CommandLine(info, i) + "\" ";
	  if (game_instance <= amount) pid = ProcessExecuteAsync(args);
	  FreeProcInfo(info); return pid;
	}

	function get_self() {
	  environ = EnvironmentGetVariable("GAME_INSTANCE");
	  game_instance = ((environ != "") ? int64(environ) + 1 : 1);
	  return game_instance;
	}

	window_set_caption("Game Instance #" + string(get_self()));
	pid = run_self(1);

	FreeExecutedProcessStandardOutput(pid);
	FreeExecutedProcessStandardInput(pid);
}