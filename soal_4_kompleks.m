%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 4: Bilangan Kompleks
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

z1 = (1+2) + (5+1)*1i; % 3 + 6i
z2 = (5+1) - (1+2)*1i; % 6 - 3i

fprintf('Fasor z1: %.2f + %.2fi\n', real(z1), imag(z1));
fprintf('Fasor z2: %.2f + %.2fi\n\n', real(z2), imag(z2));

% 1. Penjumlahan (z1 + z2)
jumlah = z1 + z2;
fprintf('Hasil z1 + z2: %.2f + %.2fi\n', real(jumlah), imag(jumlah));

% 2. Perkalian (z1 * z2)
kali = z1 * z2;
fprintf('Hasil z1 * z2: %.2f + %.2fi\n', real(kali), imag(kali));

% 3. Pembagian (z1 / z2) - Otomatis melakukan rasionalisasi di MATLAB
bagi = z1 / z2;
fprintf('Hasil z1 / z2: %.2f + %.2fi\n', real(bagi), imag(bagi));

% 4. Modulus Selisih |z1 - z2|
selisih_mod = abs(z1 - z2);
fprintf('Hasil |z1 - z2|: %.4f\n', selisih_mod);

% untuk plot argand
r = 2;
k = 0:2;
angles = deg2rad((theta0 + 360*k)/3);
roots = r * exp(1i * angles);

% plot
figure;
compass(roots); % Menampilkan fasor di bidang kompleks
hold on;
% menghubungkan titik-titik untuk membentuk segitiga
plot([roots roots(1)], 'r--', 'LineWidth', 1.5);
title('Akar Kubik Kompleks di Bidang Argand');
grid on;