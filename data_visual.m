Precision = 0;
if Precision
    load('data_p.mat')
    method_set = {'baseline','cdir','motorz','conv'};

    figure();

    for i_count = 1:4
        method = method_set{i_count}
        data_var = [method '_p'];
        data = eval(data_var);
        x = data{1};
        y = data{2};    

        plot(x,y,'LineWidth',1.5)

        hold on;
    end
    xlim([0,600000])
    xlabel('Step count')
    ylabel('Precision')
    grid on
    legend(method_set{1},method_set{2},method_set{3},method_set{4})
else
    load('data_r.mat')
    method_set = {'baseline','cdir','motorz','conv'};

    figure();

    for i_count = 1:4
        method = method_set{i_count}
        data_var = [method '_r'];
        data = eval(data_var);
        x = data{1};
        y = data{2};    

        plot(x,y,'LineWidth',1.5)

        hold on;
    end
    xlim([0,600000])
    xlabel('Step count')
    ylabel('Recall')
    grid on
    legend(method_set{1},method_set{2},method_set{3},method_set{4})
end