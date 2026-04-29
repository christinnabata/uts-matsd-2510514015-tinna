%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 5: Limit Kekontinuan
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

p = 14; q = 7;

% definisi fungsi
C1 = @(x) (x.^2 - K^2)./(x - K);
C2 = @(x) a*x + q;

figure;
hold on;

% Plot bagian kiri (0 sampai K)
fplot(C1, [0 K], 'b', 'LineWidth', 2);

% Plot bagian kanan (K sampai 2K)
fplot(C2, [K 2*K], 'r', 'LineWidth', 2);

% Plot titik sambungan (K, p)
plot(K, p, 'ko', 'MarkerFaceColor', 'g');

% Garis vertikal tipis di x = K
line([K K], [0 p+5], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');

% Labeling
xlabel('x (Unit Produk)');
ylabel('C(x) (Biaya Distribusi)');
title('Plot Fungsi Biaya Piecewise Kontinu (K=7)');
legend('x < K', 'x > K', 'Titik Kontinu');
grid on;