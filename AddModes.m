function [ ] = AddModes( MODE, MODE_label, y)

x_Mode = MODE(:, 1);

control_modes = {
    'STABILIZE'    %  0  // manual airframe angle with manual throttle
    'ACRO'         %  1  // manual body-frame angular rate with manual throttle
    'ALT_HOLD'     %  2  // manual airframe angle with automatic throttle
    'AUTO'         %  3  // fully automatic waypoint control using mission commands
    'GUIDED'       %  4  // fully automatic fly to coordinate or fly at velocity/direction using GCS immediate commands
    'LOITER'       %  5  // automatic horizontal acceleration with automatic throttle
    'RTL'          %  6  // automatic return to launching point
    'CIRCLE'       %  7  // automatic circular flight with automatic throttle
    'PLACEHOLDER'
    'LAND'         %  9  // automatic landing with horizontal position control
    'PLACEHOLDER'
    'DRIFT'        % 11  // semi-automous position, yaw and throttle control
    'PLACEHOLDER'
    'SPORT'        % 13  // manual earth-frame angular rate control with manual throttle
    'FLIP'         % 14  // automatically flip the vehicle on the roll axis
    'AUTOTUNE'     % 15  // automatically tune the vehicle's roll and pitch gains
    'POSHOLD'      % 16  // automatic position hold with manual override, with automatic throttle
    'BRAKE'        % 17  // full-brake using inertial/GPS system, no pilot input
    'THROW'        % 18  // throw to launch mode using inertial/GPS system, no pilot input
    'AVOID_ADSB'   % 19  // automatic avoidance of obstacles in the macro scale - e.g. full-sized aircraft
    'GUIDED_NOGPS' % 20  // guided mode but only accepts attitude and altitude
};

ModeCol = find(strcmp(MODE_label, 'ModeNum'));
Mode = MODE(:, ModeCol);

%top = ylim;
%top = top(2);
top = max(y);
for i = 1:length(x_Mode)
    mode_index = Mode(i);
    mode_name = control_modes{mode_index + 1};
    line = x_Mode(i);
    str = ({'\leftarrow', mode_name});
    
    text(line, top, str);
end

end

