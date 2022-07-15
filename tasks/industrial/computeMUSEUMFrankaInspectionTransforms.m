function [H_pickup_station, H_inspection_tunnel, H_release_station] = computeMUSEUMFrankaInspectionTransforms()

%% IF ANYTHING CHANGES IN THE SETUP (RELATIVE POSITIONS TO BASE OF ROBOT) 
%% THESE VALUES NEED TO BE CHANGED, 
%% THEY REPRESENT THE ORIGINS OF THE FRAMES OF EACH STATION WRT. THE BASE OF THE ROBOT

H_pickup_station= eye(4); H_pickup_station(1:3,4) = [0.5, -0.45, 0.05];
H_inspection_tunnel= eye(4); H_inspection_tunnel(1:3,4) = [0.5, 0.0, 0.05];
H_release_station= eye(4); H_release_station(1:3,4) = [0.5, 0.45, 0.05];

% If we keep the same relative distances between the stations but remove
% the white tableop then we can simply remove the 5cm height

end

