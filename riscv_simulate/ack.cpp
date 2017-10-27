
int c[4][5];

//Ackermann
int ack(int n, int x)
{
    if(n == 0) return x + 1;
    else if(n > 0 && x == 0) return ack(n - 1, 1);
    else return ack(n - 1, ack(n, x - 1));
}


int main(void) 
{	
	
	for(int i = 0; i < 4; i ++)
		for(int j = 0; j < 5; j ++)
			c[i][j] = ack(i, j);
	return 0;
}
