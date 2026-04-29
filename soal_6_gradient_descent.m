%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 6: Iterasi Gradient Descent
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

x = 1;
n_iter = 500;
history = zeros(n_iter, 1);

for k = 1:n_iter
    grad = 2*(x - b); % Turunan fungsi target
    x = x - alpha_lr * grad;
    history(k) = (x - b)^2 + 1; % Nilai fungsi
end

figure;
plot(1:n_iter, history, 'LineWidth', 2);
title('Grafik Konvergensi Gradient Descent');
xlabel('Iterasi (k)');
ylabel('-\pi(x_k)');
grid on;