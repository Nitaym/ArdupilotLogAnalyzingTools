clear;
load('2017-01-30 12-45-04.bin-73812.mat');

x_CTUN = CTUN(:, 1);
x_CURR = CURR(:, 1);
x_GPS = GPS(:, 1);
x_ATT = ATT(:,1);
x_MAG = MAG(:,1);
x_MAG2 = MAG(:,1);

% SMZ = EKF4(:, find(strcmp(EKF4_labesizel, 'SMZ')));
ThrOut = CTUN(:, find(strcmp(CTUN_label, 'ThO')));
Mag1z = MAG(:, find(strcmp(MAG_label, 'MagZ')));
Mag2z = MAG2(:, find(strcmp(MAG2_label, 'MagZ')));
Mag1y = MAG(:, find(strcmp(MAG_label, 'MagY')));
Mag2y = MAG2(:, find(strcmp(MAG2_label, 'MagY')));
Mag1x = MAG(:, find(strcmp(MAG_label, 'MagX')));
Mag2x = MAG2(:, find(strcmp(MAG2_label, 'MagX')));

clf;
subplot(3,1,1);
plot(x_CTUN, ThrOut*100, 'r'); hold on;
plot(x_MAG, Mag1x - Mag2x, 'g');
ylim([-300, 300]);
legend('ThrOut', 'MagX Diff')

subplot(3,1,2);
plot(x_CTUN, ThrOut*100, 'r'); hold on;
plot(x_MAG, Mag1y - Mag2y, 'g');
ylim([-300, 300]);
legend('ThrOut', 'MagY Diff')

subplot(3,1,3);
plot(x_CTUN, ThrOut*100, 'r'); hold on;
plot(x_MAG, Mag1z - Mag2z, 'g');
ylim([-300, 300]);
legend('ThrOut', 'MagZ Diff')
