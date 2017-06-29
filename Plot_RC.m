x_RC = RCIN(:, 1);

altScale = 1;

C1_label = find(strcmp(RCIN_label, 'C1'));
C1 = RCIN(:, C1_label);
C2_label = find(strcmp(RCIN_label, 'C2'));
C2 = RCIN(:, C2_label);
C3_label = find(strcmp(RCIN_label, 'C3'));
C3 = RCIN(:, C3_label);

figure;
plot(x_RC, C1); hold on;
plot(x_RC, C2); hold on;
plot(x_RC, C3); hold on;
legend('Roll', 'Pitch', 'Throttle');