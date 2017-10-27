#include<stdio.h>


int x[10];
//qsort
void qsort(int a[], int l, int r)
{
    if(l < r)
    {
        int i = l, j = r,  x = a[l];
        while(i < j)
        {
            while(i < j && a[j] >= x)
                j --;
            if(i < j)
                a[i ++] = a[j];
            while(i < j && a[i] < x)
                i ++;
            if(i < j)
                a[j --] = a[i];
        }
        a[i] = x;
        qsort(a, l, i - 1);
        qsort(a, i + 1, r);
    }
    
}
int main(void) 
{
	
	x[0] = 10;
	x[1] = 4;
	x[2] = 7;
	x[3] = 18;
	x[4] = 5;
	x[5] = 2;
	x[6] = 2;
	x[7] = 20;
	x[8] = 0;
	x[9] = 9;
	qsort(x, 0, 9);
	return 0;
}
