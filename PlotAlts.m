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

badAlts = [find(Alt > 10^6), find(Alt < -10^6)]; 
x_Alt = removerows(x_CTUN, badAlts);
Alt = removerows(Alt, badAlts);
DAlt = removerows(DAlt, badAlts);


ThrInCol = find(strcmp(CTUN_label, 'ThI'));
ThrIn = CTUN(:, ThrInCol);
ThrOutCol = find(strcmp(CTUN_label, 'ThO'));
ThrOut = CTUN(:, ThrOutCol);

subplot(2,1,1);
plot(x_Alt, Alt, 'b'); hold on;
plot(x_Alt, DAlt, 'r');
legend('CTUN Alt', 'CTUN DAlt')

%hold off;

subplot(2,1,2);
plot(x_CTUN, ThrIn, 'b'); hold on;
plot(x_CTUN, ThrOut, 'g'); hold off;
legend('ThrIn', 'ThrOut')
