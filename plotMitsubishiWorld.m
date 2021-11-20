function [] = plotMitsubishiWorld()
% Drawing fixed frames
H_origin = eye(4);
drawframe(H_origin,0.05);
hold on;

H_left_foot = eye(4);
H_left_foot(1:3,4)  = [0.0;0.05;0.0];
drawframe(H_left_foot,0.05);
hold on;

H_right_foot = eye(4);
H_right_foot(1:3,4)  = [0.0;-0.05;0.0];
drawframe(H_right_foot,0.05);
hold on;

H_tray = eye(4);
H_tray(1:3,4)  = [0.299;0.398;0.880];
drawframe(H_tray,0.05);
hold on;

H_proc = eye(4);
H_proc(1:3,4)   = [0.313;0.170;0.886];
drawframe(H_proc,0.05);
hold on;

H_check = eye(4);
H_check(1:3,4)  = [0.298;-0.243;0.836];
drawframe(H_check,0.05);
hold on;

H_OK = eye(4);
H_OK(1:3,4)  = [0.291;-0.607;0.861];
drawframe(H_OK,0.05);
hold on;

H_table_origin = eye(4);
H_table_origin(1:3,4)  = [0.499;0.053;0.00];
drawframe(H_table_origin,0.05);
hold on;

P = [0.499,-0.053,0.3750];   % you center point 
L = [0.74,1.50,0.75];  % your cube dimensions 
O = P-L/2 ;       % Get the origin of cube so that P is at center 
plotcube(L,O,.4,[0.5 0.5 0.5]);   % use function plotcube 
hold on
plot3(P(1),P(2),P(3),'*k')
hold on
end

