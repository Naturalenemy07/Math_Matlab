%%HW 4

%1)

% differential equation in matrix form
%A = [ 0 0 -1; 2 0 0; -1 2 4];
%I = [1 0 0; 0 1 0; 0 0 1];

%A_e = eig(A)

% eigenvalues of the matrix A

%sigma_1 = A_e(1);
%sigma_2 = A_e(2);
%sigma_3 = A_e(3);

%A_1 = A - sigma_1*I;
%rref(A_1);

%A_2 = A - sigma_2*I;
%rref(A_2);

%A_3 = A - sigma_3*I;
%rref(A_3);

%B = [-1 -1 -2 7; 2 -2 -1 5; -1 1 8 5];
%rref(B)

%2) Radioactive Nuclei decay dN/dt = -lambda * N

t = linspace(1,100,100);

s1 = 1;
s2 = 2;
N0 = 0.5;

N2 = s1 * N0 * (s2 - s1)*(exp(-s1*t) - exp(-s2*t))

plot(N2, 'k' )

hold on

s3 = 2;
s4 = 1;

N2_1 = s3 * N0 * (s4 - s3)*(exp(-s3*t) - exp(-s4*t))

plot(N2_1, 'r')
