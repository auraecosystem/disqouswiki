commands = containers.Map();

commands('start')     = @cmd_start;
commands('nogui')     = @cmd_nogui;
commands('simulate')  = @cmd_simulate;
commands('visualize') = @cmd_visualize;
commands('deploy')    = @cmd_deploy;
commands('status')    = @cmd_status;
commands('reset')     = @cmd_reset;
commands('stop')      = @cmd_stop;

if isKey(commands, action)
    res = commands(action)(varargin{2:end});
else
    error("Unknown Aura command: %s", action);
end
