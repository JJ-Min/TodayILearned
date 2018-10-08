#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS    // fopen 보안 경고로 인한 컴파일 에러 방지
int main(void) {
 FILE *fp = fopen("hello.txt", "w"); 
    int num;
    num = 5;

    for(int i = 0; i < num; i++) {
        for(int j = 0; j < num * 2; j++) {
            // 어느 경우에 공백이 출력되어야하는가?
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
            // 어느 경우에 공백이 출력되어야하는가?
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

