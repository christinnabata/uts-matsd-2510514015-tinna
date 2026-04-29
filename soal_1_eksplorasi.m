%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 1 - Eksplorasi Awal dan Profil Data Transaksi
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
  
% data toko yang sudah diperoleh
D = [28, 36, 44, 52, 60, 68, 69];

% untuk menjawab bagian b: verifikasi perhitungan mean, median, modus,
% range, dan standar deviasi
m_mean = mean(D);
m_median = median(D);
m_mode = mode(D); % karena di data ini tidak ada modus, matlab akan menampilkan angka terkecil
m_range = range(D);
m_std = std(D, 1);

fprintf('Mean: %.2f\nMedian: %.2f\nRange: %.2f\nStd Dev: %.4f\n', m_mean, m_median, m_range, m_std);
disp('time stamp');
disp(datetime('now', 'Format', 'default'));

% untuk menjawab bagian c: diagram batang penjualan per toko dan garis
% rata-rata horizontal
figure;
bar(D, 'FaceColor', [0.2 0.6 0.8]);
hold on;
yline(m_mean, 'r', 'LineWidth', 2, 'Label', 'Rata-rata');
xlabel('Nomor Toko');
ylabel('Penjualan (Juta Rupiah)');
title('Diagram Batang Penjualan Per Toko - NIM: 2510514015');
grid on;
saveas(gcf, 'fig_s1_barchart.png');