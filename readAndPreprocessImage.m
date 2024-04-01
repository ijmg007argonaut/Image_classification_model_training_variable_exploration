% Read and pre-process images
% Copyright 2016 The MathWorks, Inc.
function Iout = readAndPreprocessImage(filename, size)

I = imread(filename); % filename of the image to be read and preprocessed.

% Some images may be grayscale (a matrix). 
% Replicate the image 3 times along third dimension to
% create an RGB image.
if ismatrix(I)
    I = cat(3,I,I,I);
end
% image size
% Resize the image as required for the CNN.
Iout = imresize(I, [size size]);

end
