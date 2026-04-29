%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 7: Forecasting
%  --------------------------------------------------- 
%  Nama  : Christinna Bata 
%  NIM   : 2510514015
%  Parameter: N=15, a=1, b=5, K=7, theta0=55, alpha=0.006 
%  Tanggal: 2026-04-29
% ===================================================== 
  
clc; clear; close all; 
  
% Parameter personalisasi 
N = 15;  a = 1;  b = 5;  K = 7; 
theta0 = 55;  % derajat 
alpha_lr = 0.006; 

syms x
f_x = -a*x^2 + (K+b)*x + 10;   % Contoh fungsi profit kuadratik
g_x = b*x + 5;                 % Contoh fungsi profit linear

% Menentukan Titik Potong (Batas Integral)
titik_potong = solve(f_x == g_x, x);
x_start = double(min(titik_potong));
x_end = double(max(titik_potong));

% Menghitung Selisih Profit (Luas Daerah)
% Profit_Tambahan = Integral [x_start, x_end] (f(x) - g(x)) dx
profit_diff_func = f_x - g_x;
profit_tambahan = int(profit_diff_func, x, x_start, x_end);

fprintf('Batas Integral: x = %.2f hingga x = %.2f\n', x_start, x_end);
fprintf('Total Tambahan Profit: %.4f unit uang\n', double(profit_tambahan));

% Visualisasi
figure;
fplot(f_x, [x_start-2, x_end+2], 'b', 'LineWidth', 2); hold on;
fplot(g_x, [x_start-2, x_end+2], 'r', 'LineWidth', 2);

% Arsiran
x_fill = linspace(x_start, x_end, 100);
y1_fill = double(subs(f_x, x, x_fill));
y2_fill = double(subs(g_x, x, x_fill));
fill([x_fill, fliplr(x_fill)], [y1_fill, fliplr(y2_fill)], 'g', 'FaceAlpha', 0.3);

title('Visualisasi Tambahan Profit (Luas di Antara Dua Kurva)');
xlabel('Volume Distribusi (x)');
ylabel('Profit');
legend('Strategi Baru (f(x))', 'Strategi Lama (g(x))', 'Tambahan Profit');
grid on;