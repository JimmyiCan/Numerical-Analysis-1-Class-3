function A = matrixA
cos_th = 1/sqrt(5);
sin_th = 2/sqrt(5);
A = zeros(16,16);
A(1,1) = 1;
A(1,5) = -1;
A(2,2) = 1;
A(3,3) = 1;
A(3,6) = -cos_th;
A(3,7) = -1;
A(4,4) = 1;
A(4,6) = -sin_th;
A(5,5) = 1;
A(5,6) = cos_th;
A(5,8) = -1;
A(5,9) = -cos_th;
A(6,6) = sin_th;
A(6,9) = sin_th;
A(7,8) = 1;
A(7,11) = -1;
A(8,10) = 1;
A(9,7) = 1;
A(9,9) = cos_th;
A(9,12) = -cos_th;
A(9,13) = -1;
A(10,9) = -sin_th;
A(10,10) = -1;
A(10,12) = -sin_th;
A(11,11) = 1;
A(11,12) = cos_th;
A(11,14) = -1;
A(11,15) = -cos_th;
A(12,12) = sin_th;
A(12,15) = sin_th;
A(13,14) = 1;
A(14,16) = 1;
A(15,13) = 1;
A(15,15) = cos_th;
A(16,15) = -sin_th;
A(16,16) = -1;
