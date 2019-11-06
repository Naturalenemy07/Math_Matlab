clc 
clear all

%% Problem 7.1 
%% b) Calculate molar Gibbs (V) at P = 2.5 MPa for a 
%     collection of temperatures between 225 and 400 C and 
%     extrapolate this curve below 225 C.  

temp = [225 250 300 350 400] + 273.15;
m_enth_v = [2806.3 2880.1 3008.8 3126.3 3239.3] .* 18;
m_entr_v = [6.2639 6.4085 6.6438 6.8403 7.0148] .* 18;

t_s = temp .* m_entr_v;
gib_v = (m_enth_v - t_s);

plot(temp, gib_v)
hold on
%  linear fit equation: 
%  y = -120.19*x + 54350;

%t = 273.15;
%g = [];

%while t < 498.2
%    y = -120.19 * t + 54350;
%    g = [g,y];
%    disp(t)
%    t = t + 25;
%end

%disp(g)

%% c) Find Gibbs molar (Liquid) at 160, 170, 180, 190, 200 
%     and 210 C.  Plot on the same graph as molar Gibbs (V)
%     extrapolate this data above 224 C.

temp_l = [160 170 180 190 200 210] + 273.15;
m_enth_l = [675.55 719.21 763.22 807.62 852.45 897.76] .* 18;
m_entr_l = [1.9427 2.0419 2.1396 2.2359 2.3309 2.4248] .* 18;
t_s_l = temp_l .* m_entr_l;

m_gibbs_l = m_entr_l - t_s_l;
plot(temp_l, m_gibbs_l)

hold off

%t1 = 497.15;
%g1 = [];

%while t1 < 674
%    y1 = -118.64 .* t1 + 36317;
%    g1 = [g1,y1];
%    disp(t1-273.15)
%    t1 = t1 + 25;
%end

%disp(g1)

%% d) Plot molar V versus T at P = 2.5 MPa for the
%     temperature range of 150 to 400 C and show V 
%     is discontinuous

%T = [225 250 300 350 400]
%m_V = [0.08027 0.08700 0.09890 0.10976 0.12010] * 18;

%plot(T,m_V)


