function e=std_error(data)
    e = std_deviation(data)/sqrt(length(data));
end

function v=variance(data)
    m = mean(data);
    v = sum((data-m).^2)/(length(data)-1);
end

function d=std_deviation(data)
    d = sqrt(variance(data));
end