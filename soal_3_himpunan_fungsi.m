%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 3: Himpunan & Fungsi
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

A = [0, 2, 4, 7, 10, 13, 15];
B = [3, 5, 7, 10, 12, 18];
C = [1, 7, 10, 11, 17, 20];

union_ABC = union(A, union(B, C));
intersect_ABC = intersect(A, intersect(B, C));
AB_cap_Cprime = setdiff(union(A, B), C);
A_xor_B = setxor(A, B);

fprintf('Union ABC: %d\n', union_ABC);
fprintf('Intersect ABC: %d\n', intersect_ABC);
fprintf('(A U B) - C comp: %d\n', setdiff(union(A, B), C));
fprintf('Setxor: %d\n', setxor(A, B));

% untuk bagian invers fungsi

syms x

f = K*x + (a+b);           % f(x) = 7x + 6
g = (x^2)/(b+1) + a;       % g(x) = x^2/6 + 1

% f(x) = y -> cari x
syms y
f_inv = solve(y == K*x + (a+b), x);
fprintf('Invers f(x) atau f^-1(y) = %s\n', char(f_inv));

% Pendapatan total (Target) = (K*100 + a + b)
target_pendapatan = K*100 + a + b; 

sol_x = solve(f == target_pendapatan, x);

fprintf('Pendapatan Total: Rp %d ribu\n', target_pendapatan);
fprintf('Volume pembelian (x) yang dihasilkan: %s unit\n', char(sol_x));

% Verifikasi dengan subs
verifikasi = subs(f, x, sol_x);
fprintf('Verifikasi (f(x) dengan x hasil solve): %d\n', double(verifikasi));