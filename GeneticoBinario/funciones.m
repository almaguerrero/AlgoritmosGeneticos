function [m] = stat(x)

 range = max(x(:)) - min(x(:));
 m01 = (x - min(x(:))) / range;
 ANorm = 2 * m01 - 1
 AOr=sort(ANorm,'descend')
 m=AOr
 
end