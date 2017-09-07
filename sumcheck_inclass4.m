function [result] = sumcheck_inclass4(input)
    if sum(sum(input)) < 10
        result = false;
    else
        result = true;
    end
end
