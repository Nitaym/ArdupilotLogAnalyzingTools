%clear;
%load('2017-01-30 12-45-04.bin-73812.mat');

x_CTUN = CTUN(:, 1);
x_CURR = CURR(:, 1);


altScale = 1;
figure;
AltCol = find(strcmp(CTUN_label, 'Alt'));
Alt = CTUN(:, AltCol) * altScale;

DAltCol = find(strcmp(CTUN_label, 'DAlt'));
DAlt = CTUN(:, DAltCol) * altScale;

VoltCol = find(strcmp(CURR_label, 'Volt'));
Voltage = CURR(:, VoltCol) * 1;


badAlts = [find(Alt > 10^6), find(Alt < -10^6)]; 
x_Alt = removerows(x_CTUN, badAlts);
Alt = removerows(Alt, badAlts);
DAlt = removerows(DAlt, badAlts);


ThrInCol = find(strcmp(CTUN_label, 'ThI'));
ThrIn = CTUN(:, ThrInCol);
ThrOutCol = find(strcmp(CTUN_label, 'ThO'));
ThrOut = CTUN(:, ThrOutCol);

subplot(3,1,1);
plot(x_Alt, Alt, 'b-*'); hold on;
plot(x_Alt, DAlt, 'r-*');
legend('CTUN Alt', 'CTUN DAlt')
AddModes(MODE, MODE_label, Alt);

%hold off;

subplot(3,1,2);
plot(x_CTUN, ThrIn, 'b-*'); hold on;
plot(x_CTUN, ThrOut, 'g-*'); hold off;
legend('ThrIn', 'ThrOut')
AddModes(MODE, MODE_label, ThrIn);


subplot(3,1,3);
plot(x_CURR, Voltage, 'b'); hold on;
legend('Voltage');
AddModes(MODE, MODE_label, Voltage);

%legend('CTUN Alt', 'GPS Alt', 'ThrOut / 30')

