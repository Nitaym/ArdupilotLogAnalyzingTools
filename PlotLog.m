x_CTUN = CTUN(:, 1);
x_CURR = CURR(:, 1);
x_GPS = GPS(:, 1);


altScale = 1;

AltCol = find(strcmp(CTUN_label, 'Alt'));
Alt = CTUN(:, AltCol) * altScale;

ThrInCol = find(strcmp(CTUN_label, 'ThrIn'));
ThrIn = CTUN(:, ThrInCol);
ThrOutCol = find(strcmp(CTUN_label, 'ThrOut'));
ThrOut = CTUN(:, ThrOutCol);
GPSAltCol = find(strcmp(GPS_label, 'Alt'));
GPSAlt = GPS(:, GPSAltCol) * altScale;

% Remove the bad points
badAlts = find(Alt > 10^6); 
%subplot(2,1,1);
plot(removerows(x_CTUN, badAlts), removerows(Alt, badAlts));
hold on;
plot(x_GPS, GPSAlt, 'r');
%hold off;

%subplot(2,1,2);
%plot(x_CTUN, ThrIn, 'b'); hold on;
plot(x_CTUN, ThrOut / 30, 'g'); hold off;


legend('CTUN Alt', 'GPS Alt', 'ThrOut / 30')

