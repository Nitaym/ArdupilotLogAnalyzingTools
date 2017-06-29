%load('2017-01-31 11-17-19.bin.mat');

x_CTUN = CTUN(:, 1);
x_RCOU = RCOU(:, 1);

altA = 20;
altB = 1000;

[x_Alt, y_Alt] = GetData(CTUN_label, CTUN, 'Alt');
y_Alt = y_Alt * altA + altB;

[x_RC, y_RC1] = GetData(RCOU_label, RCOU, 'C1');
[~, y_RC2] = GetData(RCOU_label, RCOU, 'C2');
[~, y_RC3] = GetData(RCOU_label, RCOU, 'C3');
[~, y_RC4] = GetData(RCOU_label, RCOU, 'C4');

plot(x_RC, y_RC1, 'b.-'); hold on;
plot(x_RC, y_RC2, 'g.-'); hold on;
plot(x_RC, y_RC3, 'r.-'); hold on;
plot(x_RC, y_RC4, 'y.-'); hold on;

plot(x_Alt, y_Alt, 'c.-'); hold on;
legend('C1', 'C2', 'C3', 'C4', 'Alt')
AddModes(MODE, MODE_label, y_Alt);
%title('All in Centi-Degrees');

