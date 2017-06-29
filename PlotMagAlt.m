x = MAG(:, 1);
x_CTUN = CTUN(:, 1);

mag_x_col = find(strcmp(MAG_label, 'MagX'));
mag_x = MAG(:, mag_x_col);
mag_y_col = find(strcmp(MAG_label, 'MagY'));
mag_y = MAG(:, mag_y_col);
mag_z_col = find(strcmp(MAG_label, 'MagZ'));
mag_z = MAG(:, mag_z_col);
AltCol = find(strcmp(CTUN_label, 'Alt'));
altScale = 10;
Alt = CTUN(:, AltCol) * altScale;

subplot(3,1,1);
plot(x, mag_x, 'b'); hold on;
plot(x_CTUN, Alt, 'r');
legend('MagX', 'Alt')

subplot(3,1,2);
plot(x, mag_y, 'b'); hold on;
plot(x_CTUN, Alt, 'r');
legend('MagY', 'Alt')

subplot(3,1,3);
plot(x, mag_z, 'b'); hold on;
plot(x_CTUN, Alt, 'r');
legend('MagZ', 'Alt')