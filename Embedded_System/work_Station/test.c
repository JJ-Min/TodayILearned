#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS    // fopen ���� ���� ���� ������ ���� ����
int main(void) {
 FILE *fp = fopen("hello.txt", "w"); 
    int num;
    num = 5;

    for(int i = 0; i < num; i++) {
        for(int j = 0; j < num * 2; j++) {
            // ��� ��쿡 ������ ��µǾ���ϴ°�?
            if(num >= j - i && num <= j + i) {
                fputs("*", fp); 
            } else {
                fputs(" ", fp); 
            }

        }
 fputs("\n", fp); 

    }
    for(int i = num - 2; i >= 0; i--) {
        for(int j = 0; j < num * 2; j++) {
            // ��� ��쿡 ������ ��µǾ���ϴ°�?
            if(num >= j - i && num <= j + i) {
              fputs("*", fp); 
            } else {
                    fputs(" ", fp); 
            }
        }
         fputs("\n", fp); 
    }
     fclose(fp); 
}

