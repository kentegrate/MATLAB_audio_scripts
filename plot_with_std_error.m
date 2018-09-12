function plot_with_std_error(x_values, y_values)
    for i = 1:length(y_values)
        e(i) = std_error(y_values(i,:));
        m(i) = mean(y_values(i,:));
    end
    errorbar(x_values, m, e);
end