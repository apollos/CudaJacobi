CC=nvcc
CFLAGS=-I/usr/local/cuda/include 
LDFLAGS=-L${CUDA_HOME}/lib64 

all: jacobi

jacobi: jacobi.cu
	$(CC) -o jacobi $(CFLAGS) $(LDFLAGS) jacobi.cu
	
clean: 
	rm jacobi 
