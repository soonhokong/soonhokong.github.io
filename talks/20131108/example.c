#include <math.h>
#include <stdio.h>

typedef union {int i[2]; double x;} mynumber;

double my_sin(double x) {
    if (x < 0.000000001) {           /* if x->0 =>sin(x)=x */
        printf("<<<");
        return x;
    /*---------------------------- 2^-26 < |x|< 0.25 ----------------------*/
    } else if (x < 0.25){
        double xx = x*x;
        /*Taylor series */
        double s1  =  2.14982415960608852501e-01; /* 0x3FCB848B, 0x36E20878 */
        double s2  =  3.25778796408930981787e-01; /* 0x3FD4D98F, 0x4F139F59 */
        double s3  =  1.46350472652464452805e-01; /* 0x3FC2BB9C, 0xBEE5F2F7 */
        double s4  =  2.66422703033638609560e-02; /* 0x3F9B481C, 0x7E939961 */
        double s5  =  1.84028451407337715652e-03; /* 0x3F5E26B6, 0x7368F239 */
        double t = ((((s5*xx + s4)*xx + s3)*xx + s2)*xx + s1)*(xx*x);
        double res = x+t;
        double cor = (x-res)+t;
        if (res == res + 1.07*cor) {
            printf("OOO");
            return res;
        } else {
            printf("XXX");
            return sin(x);
        }
    }
    printf(">>>");
    return sin(x);
}

int main() {
    double x = (0.04414172137650908 + 0.04478236787698477) / 2;
//    for(x = 0.0; x <= 0.1; x += 0.0001) {
          printf("sin(%f) = %.10f \t my_sin(%f) = %.10f\n", x, sin(x), x, my_sin(x));
          printf("sin(%f) - my_sin(%f) = %.10f\n", x, x, sin(x) - my_sin(x));
//    }
    return 0;
}
