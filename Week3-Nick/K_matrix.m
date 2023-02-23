function mat = K_matrix(D, gamma, sigma_1, sigma_2, p, phi)

% Calculates matrix of K values given pixel locations (D), gamma values and
% paramters

n = max(size(gamma));

for i = 1:n
    for j = 1:n
        mat(i,j) = K(D(i,:),D(j,:),gamma(i),gamma(j),sigma_1,sigma_2,p,phi);
    end
end