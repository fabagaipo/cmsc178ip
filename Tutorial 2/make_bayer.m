function lbayer = make_bayer(I)
if (nargin<1)
    error('this function requires an image as input');
end
lbayer = zeros(size(I,1), size(I,2));
%'RGGB'
lbayer(1:2:end, 1:2:end) = I(1:2:end, 1:2:end,1);
lbayer(2:2:end, 2:2:end) = I(2:2:end, 2:2:end,3);
lbayer(1:2:end, 2:2:end) = I(1:2:end, 2:2:end,2);
lbayer(2:2:end, 1:2:end) = I(2:2:end, 1:2:end,2);
return