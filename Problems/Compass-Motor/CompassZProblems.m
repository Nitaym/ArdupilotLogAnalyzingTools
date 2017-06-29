load('2015-12-27 09-16-43.bin-94176.mat');

x_CTUN = CTUN(:, 1);
x_CURR = CURR(:, 1);
x_GPS = GPS(:, 1);
x_ATT = ATT(:,1);
x_EKF1 = EKF1(:,1);
x_EKF2 = EKF2(:,1);
x_EKF3 = EKF3(:,1);
x_EKF4 = EKF4(:,1);
x_MAG = MAG(:,1);
x_MAG2 = MAG(:,1);

SMZ = EKF4(:, find(strcmp(EKF4_label, 'SMZ')));
ThrOut = CTUN(:, find(strcmp(CTUN_label, 'ThrOut')));
Mag1z = MAG(:, find(strcmp(MAG_label, 'MagZ')));
Mag2z = MAG2(:, find(strcmp(MAG2_label, 'MagZ')));
Mag1x = MAG(:, find(strcmp(MAG_label, 'MagX')));
Mag2x = MAG2(:, find(strcmp(MAG2_label, 'MagX')));

subplot(3,1,1);
plot(x_EKF4, SMZ, 'b'); hold on;
plot(x_CTUN, ThrOut / (2 * 10^2), 'r');
legend('SMZ - Changes in Z Mag', 'ThrOut \times (2\times10^-2)', 'Location', 'East')

subplot(3,1,2);
plot(x_MAG, Mag1z, 'b'); hold on;
plot(x_MAG2, Mag2z, 'r');
legend('Mag1 - Z', 'Mag2 - Z', 'Location', 'SouthEast')

subplot(3,1,3);
plot(x_MAG, Mag1x, 'b'); hold on;
plot(x_MAG2, Mag2x, 'r');
legend('Mag1 - X', 'Mag2 - X')