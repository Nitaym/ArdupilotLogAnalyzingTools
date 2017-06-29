x_AEYE = AEYE(:, 2);
x_AEYE_PID = AEYP(:, 2);
x_TRACKING = TRAC(:, 2);
x_CTUN = CTUN(:, 2);

x_CURR = CURR(:, 1);
x_GPS = GPS(:, 1);

altScale = 1;
detScale = 50;
figure;
Alt = GetCol(CTUN_label, CTUN, 'Alt') * altScale;

Status = GetCol(AEYE_label, AEYE, 'Status');
Det = GetCol(AEYE_label, AEYE, 'Det') * detScale;

P = GetCol(AEYP_label, AEYP, 'P');
I = GetCol(AEYP_label, AEYP, 'I');
D = GetCol(AEYP_label, AEYP, 'D');

VelX = GetCol(TRAC_label, TRAC, 'VelX');
VelY = GetCol(TRAC_label, TRAC, 'VelY');


subplot(3,1,3);
plot(x_CTUN, Alt, 'b'); hold on;
legend('Alt');

subplot(3,1,2);
plot(x_AEYE_PID, P, 'b'); hold on;
plot(x_AEYE_PID, I, 'g');
plot(x_AEYE_PID, D, 'r');
legend('P', 'I', 'D');

subplot(3,1,1);
plot(x_AEYE, Status, 'c'); hold on;
plot(x_AEYE, Det, 'b'); hold on;
plot(x_TRACKING, VelX, 'g');
plot(x_TRACKING, VelY, 'r');
legend('Status', 'Det', 'VelX', 'VelY')


%legend('CTUN Alt', 'GPS Alt', 'ThrOut / 30')

