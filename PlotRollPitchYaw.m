%load('2017-01-31 11-17-19.bin.mat');

x_CTUN = CTUN(:, 1);
x_CURR = CURR(:, 1);
x_GPS = GPS(:, 1);
x_ATT = ATT(:,1);

RollCol = find(strcmp(ATT_label, 'Roll'));
Roll = ATT(:, RollCol);
DRollCol = find(strcmp(ATT_label, 'DesRoll'));
DRoll = ATT(:, DRollCol);
PitchCol = find(strcmp(ATT_label, 'Pitch'));
Pitch = ATT(:, PitchCol);
DPitchCol = find(strcmp(ATT_label, 'DesPitch'));
DPitch = ATT(:, DPitchCol);
YawCol = find(strcmp(ATT_label, 'Yaw'));
Yaw = ATT(:, YawCol);
DYawCol = find(strcmp(ATT_label, 'DesYaw'));
DYaw = ATT(:, DYawCol);


subplot(3,1,1);
plot(x_ATT, Roll, 'b.-'); hold on;
plot(x_ATT, DRoll, 'r.-');
title('All in Centi-Degrees');
legend('Roll', 'Des Roll')

subplot(3,1,2);
plot(x_ATT, Pitch, 'b.-'); hold on;
plot(x_ATT, DPitch, 'r.-');
legend('Pitch', 'Des Pitch')

subplot(3,1,3);
plot(x_ATT, Yaw, 'b.-'); hold on;
plot(x_ATT, DYaw, 'r.-');
legend('Yaw', 'Des Yaw')