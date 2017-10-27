

int a[10][10];
int b[10][10];
int c[10][10];
void matrixMultiple()
{
    for(int i = 0; i < 10; i ++)
    {
        for(int j = 0; j < 10; j ++)
        {
            int temp = 0;
            for(int k = 0; k <10; k ++)
            {
                temp += a[i][k]*b[k][j];
            }
            c[i][j] = temp;
        }
    }
}

int main()
{
	for(int i = 0; i < 10; i ++)
		for(int j = 0; j < 10; j ++)
		{
			a[i][j] = i;
			b[i][j] = i;
		}
	matrixMultiple();
}
