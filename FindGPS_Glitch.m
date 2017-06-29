x_CTUN = CTUN(:, 1);
x = GPS(:, 1);
x_GPS = GPS(:, 1);
x_Alt = x_CTUN;

lat_col = find(strcmp(GPS_label, 'Lat'));
lat = GPS(:, lat_col);
lng_col = find(strcmp(GPS_label, 'Lng'));
lng = GPS(:, lng_col);

start = 100;
lat = lat(start:end);
lng = lng(start:end);
x_GPS = x_GPS(start:end);

subplot(2,1,1);
plot(x_GPS, lat, 'b.'); hold on;
plot(x_GPS(2:end), lat(1) + diff(lat), 'r');

subplot(2,1,2);
plot(x_GPS, lng, 'b.'); hold on;
plot(x_GPS(2:end), lng(1) + diff(lng), 'r');


figure;
altScale = 1;
AltCol = find(strcmp(CTUN_label, 'Alt'));
Alt = CTUN(:, AltCol) * altScale;

DAltCol = find(strcmp(CTUN_label, 'DAlt'));
DAlt = CTUN(:, DAltCol) * altScale;
plot(x_Alt, Alt, 'b'); hold on;
plot(x_Alt, DAlt, 'r');

