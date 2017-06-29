x = IMU(:, 1);
x_CTUN = CTUN(:, 1);

imu_x_col = find(strcmp(IMU_label, 'AccX'));
imu_x = IMU(:, imu_x_col);
imu_y_col = find(strcmp(IMU_label, 'AccY'));
imu_y = IMU(:, imu_y_col);
imu_z_col = find(strcmp(IMU_label, 'AccZ'));
imu_z = IMU(:, imu_z_col);
AltCol = find(strcmp(CTUN_label, 'Alt'));
altA = 1;
altB = -10;
Alt = CTUN(:, AltCol) * altA + altB;

subplot(3,1,1);
plot(x, imu_x, 'b.-'); hold on;
plot(x_CTUN, Alt, 'r.-');
legend('imuX', 'Alt')

subplot(3,1,2);
plot(x, imu_y, 'b.-'); hold on;
plot(x_CTUN, Alt, 'r.-');
legend('imuY', 'Alt')

subplot(3,1,3);
plot(x, imu_z, 'b.-'); hold on;
plot(x_CTUN, Alt, 'r.-');
legend('imuZ', 'Alt')