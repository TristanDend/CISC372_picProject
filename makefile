
image: image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png
pthread_image: pthread_image.c pthread_image.h
	gcc -g pthread_image.c -o pthread_image -lm -lpthread
pthread_clean:
	rm -f pthread_image pthread_output.png
openmp_image: openmp_image.c image.h
	gcc -g -Wall -fopenmp openmp_image.c -o openmp_image -lm
openmp_clean:
	rm -f openmp_image openmp_output.png
