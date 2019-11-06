syms x n

a0 = 3/2;
bn = (3/(n*pi()))*(1 - (-1).^n);

f5 = a0-symsum(bn*sin((n*pi()*x)/2), n, 1, 5);
f25 = a0-symsum(bn*sin((n*pi()*x)/2), n, 1, 25);
f125 = a0-symsum(bn*sin((n*pi()*x)/2), n, 1, 125);
finf = a0-symsum(bn*sin((n*pi()*x)/2), n, 1, 1000);

fplot(matlabFunction(f5), [0 4])
hold on
fplot(matlabFunction(f25), [0 4])
hold on
fplot(matlabFunction(f125), [0 4])
hold on
fplot(matlabFunction(finf), [0 4])
hold off

title('Eigenfunction Expansions for f(x)=0 for 0<x<2 and f(x)=3 for 2<x<4')
xlabel('x')
ylabel('f(x)')
legend('n=5','n=25','n=125','n= infinity','Location','northwest')

fx = '$$ f(x) = \frac{3}{2} + \sum_{n=1}^N \frac{3}{n \pi} \lbrack 1 - (-1)^n \rbrack \sin{(\frac{n \pi x}{2})} $$';
text(2.25,0.1, fx, 'interpreter', 'latex')