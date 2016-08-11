function PlotBarycentric(distances)
    % Coordinates : 1 / distance is okay
    % distances is a nxm array. n are the points, m the classes
    s = size(distances);
    N = s(2);
    nums = [1:N];
    angles = nums * (2*pi) / N;
    anchors = [cos(angles); sin(angles)];
    figure;
    plot(anchors(1,:),anchors(2,:), '.r');
    axis equal;
    xlim([-1,1]);ylim([-1,1]);
    xlabel('x');ylabel('y');
    weights = normr(1.0 ./ distances);
    interp = weights * anchors';
    hold on;
    plot(interp(:,1),interp(:,2), '.b');
end