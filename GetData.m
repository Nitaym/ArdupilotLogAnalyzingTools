function [ x, y ] = GetData( labels_log, data_log, name )
x = data_log(:, 1);
ColNumber = find(strcmp(labels_log, name));
y = data_log(:, ColNumber);
end