function signal = getFromSimulinkLoggingOutput(simulationOutput, name)
    % GETFROMSIMULINKLOGGINGOUTPUT Get one logged signal from Simulink. 
    % SIGNAL = GETFROMSIMULINKLOGGINGOUTPUT(simulationOutput, name) Adquire
    % the signal with its name from the simulationOutput file. 
    signal_ = find(simulationOutput.logsout, name).Values.Data;
    signal = squeeze(signal_);
    [n,m] = size(signal);
    if m > n
        signal = signal';
    end
end