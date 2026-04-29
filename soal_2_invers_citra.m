%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 2: Invers Citra
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

A = [2 5 2; 1 3 5; 5 1 4];

% untuk menjawab bagian 2d: verifikasi hasil inv(A)
% menghitung determinan
det_A = det(A);

fprintf('Determinan A: %.2f\n', det_A);

% menghitung matriks kofaktor dengan nested loop
[n, m] = size(A);
kofaktor = zeros(n, n);
for i = 1:n
    for j = 1:n
        % submatriks yang menghapus baris i dan kolom j
        sub = A;
        sub(i,:) = [];
        sub(:,j) = [];
        
        % determinan dari matriks minor
        minor_ij = sub(1,1)*sub(2,2) - sub(1,2)*sub(2,1);
        
        % isi matriks kofaktor
        kofaktor(i,j) = ((-1)^(i+j)) * minor_ij;
    end
end

% menghitung adjoin
adjoin = zeros(n, n);
for i = 1:n
    for j = 1:n
        adjoin(j,i) = kofaktor(i,j); % transpose
    end
end

% menghitung invers A
A_inv_manual = adjoin / det_A;

fprintf('\nMatriks Invers (Hasil Loop):\n');
disp(A_inv_manual);

% Hitung Error Frobenius sesuai permintaan soal
error_fro = norm(A_inv_manual - inv(A), 'fro');
fprintf('Norma Error Frobenius: %.15e\n', error_fro);

% untuk enkripsi matriks 3x3
P = [120 50 200; 80 3 10; 30 90 170];
A = [2 5 2; 1 3 5; 5 1 4];

% enkripsi
E = A * P;

% Visualisasi
subplot(1,2,1);
imshow(uint8(P), []);
title('Blok Piksel Asli (P)');

subplot(1,2,2);
imshow(uint8(E), []);
title('Blok Terenkripsi (E)');

% Catatan: E akan terlihat putih semua karena nilai melebihi grayscale
% (255).