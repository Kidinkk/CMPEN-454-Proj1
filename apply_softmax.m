function [outarray] = apply_softmax(inarray)
inarray = double(inarray);
alpha = max(inarray(1,1,:));  
outarray = exp(inarray - alpha) ./ sum(exp(inarray - alpha), 'all');  
end
