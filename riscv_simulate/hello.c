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
	
	for(int i= 0; i < 10; i ++)
	{
		x[i] = 10 - i;
	}
	//qsort(x, 0, 9);
	return 0;
}
