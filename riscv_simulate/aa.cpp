
int c = 0;

//Ackermann
int ack(int n, int x)
{
    if(n == 0) return x + 1;
    else if(n > 0 && x == 0) return ack(n - 1, 1);
    else return ack(n - 1, ack(n, x - 1));
}


int main(void) 
{	
	
	c = ack(3,3);
	return 0;
}
