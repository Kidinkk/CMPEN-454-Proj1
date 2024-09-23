function output = apply_fullconnect(inarray, filter, bias)
    inarray = double(inarray);

    output = zeros(1, 1, size(filter, 4));

    for i=1:size(filter,4)
        sum = 0;

        for j=1:size(inarray, 1)
            for k=1:size(inarray,2)
                for m=1:size(inarray,3)
                    sum = sum + inarray(j,k,m) * filter(j,k,m,i);
                end
            end
        end

        output(:,:,i) = sum + bias(i);
    end
end
