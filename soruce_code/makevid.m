A = importdata('matlab_input.txt');

axis tight manual 
zlim manual

v = VideoWriter('out1.avi');
open(v);

N = 20;


[x, y] = meshgrid(1:1:20, 1:1:20);


max_iter = floor(size(A, 1) / 20) - 1;

for k = 0:max_iter
   
    z = A( (k * N +1): (k* N + 20), :);
    
    surf(x,y,z);
    caxis([0, 100]);
    zlim([0 100])
    frame = getframe(gcf);
    
    colorbar;
    writeVideo(v, frame);
    
    
end

close(v);