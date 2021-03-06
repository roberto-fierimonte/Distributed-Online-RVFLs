
% General properties
width = 3.45;                   % Width in inches
height = 2.6;                   % Height in inches
font_size = 8;                  % Fontsize
font_size_leg = 6;              % Font size (legend)
font_name = 'TimesNewRoman';    % Font name
line_width = 1.5;               % LineWidth

% Plot instructions
figure();
figshift;
hold on
plot(cons_iter(:,1),(mean(cons_iter(:,2:end),2)),'k','LineWidth',line_width);

% Set various properties
xlim([0 vett_nodi(end)+1]);
ylim([0 45]);

box on;
grid on;

xlabel('Nodes of network', 'FontSize', font_size, 'FontName', font_name);
ylabel('Number of iterations', 'FontSize', font_size, 'FontName', font_name);

set(gca, 'FontSize', font_size);
set(gca, 'FontName', font_name);

h_legend=legend('Random Topology (p=0.5)','Location' ,'NorthWest');
set(h_legend,'FontSize', font_size_leg);
set(h_legend,'FontName', font_name);

% Set the default Size for display
set(gcf, 'PaperUnits', 'inches');
defpos = get(gcf, 'Position');
set(gcf,'Position', [defpos(1) defpos(2) width*100, height*100]);

% Set the defaults for saving/printing to a file
defsize = get(gcf, 'PaperSize');
left = (defsize(1)- width)/2;
bottom = (defsize(2)- height)/2;
defsize = [left, bottom, width, height];
set(gcf, 'PaperPosition', defsize);