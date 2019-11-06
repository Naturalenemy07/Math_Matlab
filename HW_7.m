%% In Class Example

%>> restoredefaultpath
%>> rehash toolboxcache

syms x n

%f1 = 2/pi()*symsum((((-1).^(n+1))/n)*sin(n*pi()*x/1), n, 1, 1);
%f2 = 2/pi()*symsum((((-1).^(n+1))/n)*sin(n*pi()*x/1), n, 1, 2);
%f3 = 2/pi()*symsum((((-1).^(n+1))/n)*sin(n*pi()*x/1), n, 1, 3);
%f4 = 2/pi()*symsum((((-1).^(n+1))/n)*sin(n*pi()*x/1), n, 1, 4);
%f5 = 2/pi()*symsum((((-1).^(n+1))/n)*sin(n*pi()*x/1), n, 1, 5);

%fplot(matlabFunction(f1), [0 1])
%hold on
%fplot(matlabFunction(f2), [0 1])
%hold on
%fplot(matlabFunction(f3), [0 1])
%hold on
%fplot(matlabFunction(f4), [0 1])
%hold on
%fplot(matlabFunction(f5), [0 1])
%hold off

%title('Eigenfunction Expansions for y = x')
%xlabel('L')
%ylabel('f(x)')
%legend('n=1','n=2','n=3','n=4','n=5','Location','northwest')

%fx = '$$ f(x) = \frac{2L}{\pi} \sum_{n=1}^n \frac{(-1)^{n+1}}{n} \sin{(\frac{n \pi x}{L})} $$';
%text(0.35, 0.2, fx, 'interpreter', 'latex')


%% Question 1a

L = 0.5;

f1 = symsum(-200/((2*n+1)/2)/pi()*(cos(((2*n+1)/2)*pi())-1)*sin(((2*n+1)/2)*x*pi()/L), n, 0, 1);
f5 = symsum(-200/((2*n+1)/2)/pi()*(cos(((2*n+1)/2)*pi())-1)*sin(((2*n+1)/2)*x*pi()/L), n, 0, 5);
f15 = symsum(-200/((2*n+1)/2)/pi()*(cos(((2*n+1)/2)*pi())-1)*sin(((2*n+1)/2)*x*pi()/L), n, 0, 15);
f150 = symsum(-200/((2*n+1)/2)/pi()*(cos(((2*n+1)/2)*pi())-1)*sin(((2*n+1)/2)*x*pi()/L), n, 0, 150);

fplot(matlabFunction(f1), [0 1])
hold on
fplot(matlabFunction(f5), [0 1])
hold on
fplot(matlabFunction(f15), [0 1])
hold on
fplot(matlabFunction(f150), [0 1])
hold off

%title('Eigenfunction Expansions for y = 100')
%xlabel('L')
%ylabel('f(x)')
%legend('n=1','n=5','n=15','n=150','Location','northwest')

%% Question 1b

%L = 1;

%f1 = symsum((4/n/pi())*sin(n*pi()/2)*cos(n*pi()*x/L),n, 1, 15);
%f2 = 2 * x;

%y = piecewise(0<=x<0.5, f1, 0.5<x<=1, f2);

%fplot(matlabFunction(f1), [0 0.5])
%hold on
%fplot(matlabFunction(f2), [0.5 1])
%hold off

%fx = '$$ f(x) = \sum_{n= \frac{2k+1}{2}, k=1}^k - \frac{200}{n \pi}\lbrack \cos{(n \pi)}-1 \rbrack \sin{(\frac{n \pi x}{L})} $$';
%text(0.3, 35, fx, 'interpreter', 'latex')