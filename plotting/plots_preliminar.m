%% Settings
clc;
print = false;
path = 'pslotting/';

%% Unpackage signals
t = getFromSimulinkLoggingOutput(exp, 't');
w = getFromSimulinkLoggingOutput(exp, 'w');
s = getFromSimulinkLoggingOutput(exp, 's');
E = getFromSimulinkLoggingOutput(exp, 'E');
tau = getFromSimulinkLoggingOutput(exp, 'tau');
sigma = getFromSimulinkLoggingOutput(exp, 'sigma');
C = getFromSimulinkLoggingOutput(exp, 'C');
Ki = getFromSimulinkLoggingOutput(exp, 'Ki');
metric = getFromSimulinkLoggingOutput(exp, 'metric');

%% Aesthetic
sColor = [0 0 0]; % Background color while learning is on. 
colorroll = 'r';
colorpitch = 'k';
coloryaw = 'b';


%% Build figures
figure
tiledlayout(2,1, 'TileSpacing','compact');

nexttile
plot(t,E, 'LineWidth',1.2);
xlabel('Time [s]', 'Interpreter','latex')
ylabel('Energy [J]', 'Interpreter','latex')


nexttile
plot(t,metric, 'LineWidth',1.2);
xlabel('Time [s]', 'Interpreter','latex')
ylabel('Metric $\mathbf{\nu}^T \mathbf{\nu}$', 'Interpreter','latex')