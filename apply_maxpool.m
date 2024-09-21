function outarray = apply_maxpool(inarray)
    inarray = double(inarray);

    size_x = size(inarray, 1)/2;
    size_y = size(inarray, 2)/2;
    num_channels = size(inarray, 3);
    
    outarray = zeros(size_x, size_y, num_channels);

    for i=1:num_channels
        for j=1:size_x
            for k=1:size_y
                block = x((2*j-1):(2*j), (2*k-1):(2*k), i);
                outarray(j,k,i)=max(block(:));
            end
        end
    end
end
