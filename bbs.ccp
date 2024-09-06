#include <stdio.h>

// Hàm hoán đổi 2 giá trị
void swap(int *xp, int *yp) {
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

// Hàm thực hiện thuật toán sắp xếp nổi bọt
void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n-1; i++) {
        // Vòng lặp để so sánh và hoán đổi các phần tử
        for (int j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                swap(&arr[j], &arr[j+1]);
            }
        }
    }
}

// Hàm in mảng
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr)/sizeof(arr[0]);

    printf("Mảng ban đầu: \n");
    printArray(arr, n);

    bubbleSort(arr, n);

    printf("Mảng sau khi sắp xếp: \n");
    printArray(arr, n);

    return 0;
}
