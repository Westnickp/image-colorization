function output = K(x, y, gamma_x, gamma_y, sigma_1, sigma_2, p, phi)

% Calculates value of K given values and parameters

output = phi(norm(x-y)/sigma_1) * phi((abs(double(gamma_x-gamma_y))^p)/sigma_2);