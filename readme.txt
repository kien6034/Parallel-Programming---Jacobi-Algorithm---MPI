Lập trình song song - Jacobi sử dụng MPI

Giải thích source code

Yêu cầu: 
 - Máy đã cài đặt thư viện MPI
 - gcc
 - Matlab


Giải thích file:

- 2d.c: File thuật toán Jacobi với MPI, sinh ra output là file result.txt (bao gồm ma trận khởi tạo và ma trận kết thúc)

- matlab_input.txt: Tương tự file result.txt, tuy nhiên, lưu thông tin về các ma trận nhiệt độ tại mỗi vòng lặp trong 400 vòng lặp

- makevid.m: Tạo video demo minh họa

Chạy file 2d.c
  mpicc main.c -o a.out -lm
  mpirun -np 4 ./a.out