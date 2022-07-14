function [H_pickup_station, H_inspection_tunnel, H_release_station] = computeFrankaInspectionTransforms()

H_pickup_station= eye(4); H_pickup_station(1:3,4) = [0.5, -0.5, 0.00];
% H_pickup_station= eye(4); H_pickup_station(1:3,4) = [0.5, -0.2, 0.00];
H_inspection_tunnel= eye(4); H_inspection_tunnel(1:3,4) = [0.5, 0.05, 0.00];
H_release_station= eye(4); H_release_station(1:3,4) = [0.5, 0.55, 0.00];
% H_release_station= eye(4); H_release_station(1:3,4) = [0.5, 0.20, 0.00];


end

