#include "Simulation.h"
using namespace std;

extern void read_elf(char *fileName, char*globalVar);
extern unsigned int cadr;
extern unsigned int dadr;
extern unsigned int csize;
extern unsigned int dsize;
extern unsigned int vadr;
extern unsigned int vdadr;
extern unsigned long long gp;
extern unsigned int madr;
extern unsigned int endPC;
extern unsigned int entry;
extern unsigned long long globalAddr;
extern unsigned long long globalVarSize;
extern FILE *file;


//指令运行数
long long inst_num=0;

//系统调用退出指示
int exit_flag=0;

//sign of debug mod
bool debug = false;

//char
char DEBUG[10] = "debug";

//command
char command;
char Command[20];
//加载代码段
//初始化PC
void load_memory()
{
	
	//find where main is 
	//madr = madr - 0x10000;
	//load all
	
	fseek(file,cadr,SEEK_SET);
	
	fread(&memory[vadr],1,csize,file);
	
	fseek(file, dadr, SEEK_SET);
	fread(&memory[vdadr], 1,dsize, file);
	printf("----------------basic information---------------\n");
	printf("entry = %08x\n", entry);
	printf("endPC = %08x\n",endPC);
	//vadr=vadr>>2;
	//vdadr = vdadr>>2;
	//only function main in memory
	//entry = entry >>2;
	
	//endPC = endPC>>2;	
	//havn't load .data yet
	//printf("gp = %08x\n", gp);
	//gp = gp >> 2;
	printf("gp = %08x\n", gp);
	//here csize represents the number of instructions
	//csize=csize>>2;
	//dsize=dsize>>2;

	
	fclose(file);
}

int main(int argc, char **argv)
{

	char fileName[40];
	strcpy(fileName, argv[1]);
	
	char globalVar[40];
	strcpy(globalVar, argv[2]);
	//debug or not
	if(strcmp(argv[3], DEBUG)==0)
	{
		debug = true;
	}
	//解析elf文件
	read_elf(fileName, globalVar);
	
	//加载内存
	load_memory();
	
	//设置入口地址
	//PC=entry>>2;
	PC = entry;
	//设置全局数据段地址寄存器
	reg[3]=gp;
	
	reg[2]=MAX/2;//栈基址 （sp寄存器）
	printf("end = %08x\n", endPC-1);
	printf("------------------------------------------------\n");
	simulate();
	for(int i = 0; i < (globalVarSize/4); i ++)
	{
		printf("%d ", memory[globalAddr +i*4]);				
	}
	printf("\n");
	printf("instruction number is: %d\n", inst_num);
	cout <<"simulate over!"<<endl;
	
	return 0;
}

void simulate()
{
	//结束PC的设置
	int end=(int)endPC-3;
	int cnt = 0;
	while(PC!=end )
	{
		
		Run();
		inst_num ++;
		//更新中间寄存器	
		
		if(debug == true)
		{
			scanf("%s", Command);
			command = Command[0];
			//printf("%c", command);
			while(command != 'n')
			{
				if(command=='e')
				{
					
					debug = false;	
					break;
				}
				//int idx = 0;
				
				if(command =='p')
				{
					int idx = 0;
					scanf("%x", &idx);
					
					printf("%08x: %02x%02x%02x%02x\n",idx, memory[idx+3], memory[idx+2], memory[idx+1], memory[idx]);
				}
				if(command == 'r')
				{
					int idx = 0;
					scanf("%d", &idx);
					printf("reg[%d]=%016llx\n", idx, reg[idx]);
				}
				if(command == 'a')
				{
					for(int i = 0; i < 16; i ++)
					printf("reg[%2d]=%016llx   reg[%2d]=%016llx\n", i, reg[i], i+16, reg[i+16]);
				}
				scanf("%s", Command);
				command = Command[0];
				
				
			}
	
			
		}
        if(exit_flag==1)
            break;
	
        reg[0]=0;//一直为零

	}
	//printf("b = %d\n", memory[17880]);
}

void Run()
{
	//read instruction
	unsigned int inst = memory[PC] +(memory[PC + 1] << 8) + (memory[PC + 2] << 16)+(memory[PC + 3] << 24);
	if(debug)
	{
		printf("0x%08x:",PC);
		printf(" 0x%08x    ",inst); 
	}
	PC = PC + 4;
	OP = getbit(inst, 0, 6);
	rd=getbit(inst,7,11);
	fuc3=getbit(inst,12, 14);
	fuc7 = getbit(inst, 25, 31);
	rs = getbit(inst, 15, 19);
	rt = getbit(inst, 20, 24);
	
	//imm = ...
	int imm = 0;
	if(OP==OP_R)
	{
		//add rd, rs1, rs2
		if(fuc3==F3_ADD&&fuc7==F7_ADD)
		{
			
            		reg[rd] = reg[rs] + reg[rt];
			if(debug)
				printf("add rs=%016llx, rt=%016llx ", reg[rs], reg[rt]);
			
		}
		//mul rd, rs1, rs2
		else if(fuc3 ==F3_MUL &&fuc7==F7_MUL)
		{
		 	reg[rd] = (reg[rs] * reg[rt]);
		}
		//sub rd, rs1, rs2
		else if(fuc3 == F3_SUB && fuc7 == F7_SUB)
		{
			reg[rd] = reg[rs] - reg[rt];
		}
		//sll rd, rs1, rs2
		else if(fuc3 == F3_SLL && fuc7 == F7_SLL)
		{
			reg[rd] = reg[rs] << reg[rt];
		}
		//mulh rd, rs1, rs2
		else if(fuc3 == F3_MULH && fuc7 == F7_MULH)
		{
			short Rs[64] = {};
			short Rt[64] = {};
			short Rd[128] = {};
			int x = 0;
			for(int i = 0; i < 64; i ++)
			{
				Rs[i] = (reg[rs]>> i) & 1;	
			}
			for(int i = 0; i < 64; i ++)
			{
				Rt[i] = (reg[rt] >> i) & 1;	
			}
			for(int i = 0; i < 64; i ++)
			{
				x = 0;
				if(Rt[i] == 1)
				{
					int j = i;
					for(int k = 0; k < 64; k ++)
					{
						short temp = Rd[j + k];
						Rd[j + k] = (Rd[j + k] + Rs[k] + x) % 2;
						x= (temp + Rs[k] + x) / 2;
					}
					Rd[j + 64] = x;
				}
				
			}	
			reg[rd] = 0;
			for(int i = 0; i < 64; i ++)
			{
				if(Rd[i + 64] == 1)
				reg[rd] = reg[rd] | (1 << i);

			}

			//reg[rd] = (reg[rs] * reg[rt]);
		}
		//slt rd, rs1, rs2
		else if(fuc3 == F3_SLT && fuc7 == F7_SLT)
		{
			long long reg_rs = reg[rs];
			long long reg_rt = reg[rt];
			if(reg_rs < reg_rt)
				reg[rd] = 1;
			else
				reg[rd] = 0;
		}
		//xor rd, rs1, rs2
		else if(fuc3 == F3_XOR && fuc7 == F7_XOR)
		{
			reg[rd] = reg[rs] ^ reg[rt];
		}
		//div rd, rs1, rs2
		else if(fuc3 == F3_DIV && fuc7 == F7_DIV)
		{
			reg[rd] = reg[rs] / reg[rt];
		}
		//srl rd, rs1, rs2
		else if(fuc3 == F3_SRL && fuc7 == F7_SRL)
		{
			reg[rd] = reg[rs] >> reg[rt];
		}
		//sra rd, rs1, rs2
		else if(fuc3 == F3_SRA && fuc7 == F7_SRA)
		{
			reg[rd] = (long long int)reg[rs] >> reg[rt];
		}
		//or rd, rs1, rs2
		else if(fuc3 == F3_OR && fuc7 == F7_OR)
		{
			reg[rd] = reg[rs] | reg[rt];
		}
		//rem rd, rs1, rs2
		else if(fuc3 == F3_REM && fuc7 == F7_REM)
		{
			reg[rd] = reg[rs] % reg[rt];
		}
		//and rd, rs1, rs2
		else 
		{
			reg[rd] = reg[rs] & reg[rt];
		}
		if(debug)
		printf("rd = %016llx \n",reg[rd]);
	}
	
	else if(OP == 59)
	{
		//ADDW
		if(fuc3 == 0 && fuc7 == 0)
		{
			reg[rd] = (long long)reg[rs] + (long long)reg[rt];
			if(debug)
				printf("addw rs=%016llx, rt=%016llx ", reg[rs], reg[rt]);
		}
		//subw
		else if(fuc3 == 0 & fuc7 == 32)
		{
			reg[rd] = reg[rs] - reg[rt];
			if(debug)
			printf("subw rs=%016llx, rt=%016llx ", reg[rs], reg[rt]);
		}
		else if(fuc3 == 0 && fuc7 == 1)
		{
			reg[rd] = reg[rs] * reg[rt];
			if(debug)
			printf("mulw rs=%016llx, rt=%016llx ", reg[rs], reg[rt]);
		}
		if(debug)
		printf("rd = %016llx\n",reg[rd]);
	}
    else if(OP==OP_I)
    {

    	//imm = ...
    	imm = ext_signed(getbit(inst, 20, 31), 12);
    	//addi rd, rs1, imm
        if(fuc3==F3_ADDI)
        {
            		reg[rd] = reg[rs] + imm;
			if(debug)
			printf("addi rs=%016llx, imm=%d ", reg[rs], imm);
        }
        //slli rd, rs1, imm
        else if(fuc3 == 1 && fuc7 == 0)
        {
            reg[rd] = reg[rs] << imm;
		if(debug)
		printf("slli rs=%016llx, imm=%d ", reg[rs], imm);
        }
        //slti rd, rs, imm
        else if(fuc3 == 2)
        {
        	if(reg[rs] < imm)
        		reg[rd] = 1;
        	else 
        		reg[rd] = 0;
		if(debug)
		printf("slti rs=%016llx, imm=%d ", reg[rs], imm);
        }
        //xori rd, rs, imm
        else if(fuc3 == 4)
        {
        	reg[rd] = reg[rs] ^ imm;
		if(debug)
		printf("xori rs=%016llx, imm=%d ", reg[rs], imm);
        }
        //srli rd, rs, imm
        else if(fuc3 == 5 && fuc7 == 0)
        {
        	reg[rd] = reg[rs] >> imm;
		if(debug)
		printf("srli rs=%016llx, imm=%d ", reg[rs], imm);
        }
        //srai rd, rs, imm
        else if(fuc3 == 5 && fuc7 == 32)
        {
        	reg[rd] = (long long int)reg[rs] >> imm;
		if(debug)
		printf("srai rs=%016llx, imm=%d ", reg[rs], imm);
        }
        //ori rd, rs, imm
        else if(fuc3 == 6)
        {
        	reg[rd] = reg[rs] | imm;
		if(debug)
		printf("ori rs=%016llx, imm=%d ", reg[rs], imm);
        }
        //andi rd, rs, imm
        else
        {
        	reg[rd] = reg[rs] & imm;
		if(debug)
		printf("andi rs=%016llx, imm=%d ", reg[rs], imm);
        }
	if(debug)
	printf("rd = %016llx\n", reg[rd]);
    }
    else if(OP==OP_SW)
    {
    	//imm =...
    	imm = getbit(inst, 7, 11) + (getbit(inst, 25, 31) << 5);
	imm = ext_signed(imm, 12);
    	//sb rt, offset(rs)
        if(fuc3==F3_SB)
        {
           memory[reg[rs] + imm] = reg[rt] & 0xff;
		if(debug)
		printf("sb rt=%016llx, offset=%d, rs=%016llx\n", reg[rt], imm, reg[rs]);
        }
        //sh rt, offset(rs)
        else if(fuc3 == 1)
        {
           memory[reg[rs] + imm] = reg[rt] & 0xff;
		memory[reg[rs] + imm + 1] = (reg[rt] & 0xff00) >> 8;
		if(debug)
		printf("sh rt=%016llx, offset=%d, rs=%016llx\n", reg[rt], imm, reg[rs]);
        }
        //sw rt, offset(rs)
        else if(fuc3 == 2)
        {
		//memcpy(memory + reg[rs] + imm, reg + rt, 4);
		
        	memory[reg[rs] + imm] = reg[rt] & 0xff;
		memory[reg[rs] + imm + 1] = (reg[rt] & 0xff00) >> 8;
		memory[reg[rs] + imm + 2] = (reg[rt] & 0xff0000) >> 16;
		memory[reg[rs] + imm + 3] = (reg[rt] & 0xff000000) >> 24;
		
		if(debug)
		printf("sw rt=%016llx, offset=%d, rs=%016llx\n", reg[rt], imm, reg[rs]);
        }
        //sd rt, offset(rs)
        else
        {
		//memcpy(memory + reg[rs] + imm, reg + rt, 8);
		
        	memory[reg[rs] + imm] = reg[rt] & 0xff;
		memory[reg[rs] + imm + 1] = (reg[rt] & 0xff00) >> 8;
		memory[reg[rs] + imm + 2] = (reg[rt] & 0xff0000) >> 16;
		memory[reg[rs] + imm + 3] = (reg[rt] & 0xff000000) >> 24;
		memory[reg[rs] + imm + 4] = (reg[rt] & 0xff00000000) >> 32;
		memory[reg[rs] + imm + 5] = (reg[rt] & 0xff0000000000) >> 40;
		memory[reg[rs] + imm + 6] = (reg[rt] & 0xff000000000000) >> 48;
		memory[reg[rs] + imm + 7] = (reg[rt] & 0xff00000000000000) >> 56;
		
		if(debug)
		printf("sd rt=%016llx, offset=%d, rs=%016llx\n", reg[rt], imm, reg[rs]);
        }
	
    }
    else if(OP==OP_LW)
    {
    	//imm = ...
    	imm = ext_signed(getbit(inst, 20, 31),12);
    	//lb rd, offset(rs)
        if(fuc3==F3_LB)
        {
		unsigned int temp;
		temp = memory[reg[rs] + imm] & 0x000000ff;
		reg[rd] = ext_signed(temp, 8);
		if(debug)
		printf("lb rd=%016llx, offset=%d, rs=%016llx\n", reg[rd], imm, reg[rs]);
        }
        //lh rd, offset(rs)
        else if(fuc3 == 1)
        {
		unsigned int temp;
		temp = (memory[reg[rs] + imm] & 0x000000ff) + ((memory[reg[rs] + imm + 1] & 0x000000ff) << 8);
		
        	reg[rd] = ext_signed(temp, 16);
		if(debug)
		printf("lb rd=%016llx, offset=%d, rs=%016llx\n", reg[rd], imm, reg[rs]);
        }
        //lw rd, offset(rs)
        else if(fuc3 == 2)
        {
		//memcpy(reg + rd, memory + reg[rs] + imm, 4);
		//memset(reg + rd + 4, 0, 4);
		
		unsigned int temp;
		unsigned int t1 = memory[reg[rs] + imm];
		unsigned int t2 = memory[reg[rs] + imm + 1];
		unsigned int t3 = memory[reg[rs] + imm + 2];
		unsigned int t4 = memory[reg[rs] + imm + 3];
		//temp = (memory[reg[rs] + imm] & 0x000000ff) + ((memory[reg[rs] + imm + 1] &0x000000ff)<< 8) + ((memory[reg[rs] + imm + 2] &0x000000ff)<< 16) + ((memory[reg[rs] + imm + 3] &0x000000ff)<< 24);
		temp = t1 + (t2 << 8) + (t3 << 16) + (t4 << 24);
		
        	reg[rd] = ext_signed(temp, 32);
		
		if(debug)
		printf("lw rd=%016llx, offset=%d, rs=%016llx\n", reg[rd], imm, reg[rs]);
		
        }
        //ld rd, offset(rs)
        else
        {
		//memcpy(reg + rd, memory + reg[rs] + imm, 8);
		
        	unsigned long long int low;
		unsigned long long int high;
		low = (memory[reg[rs] + imm] & 0x00000000000000ff) + (memory[reg[rs] + imm + 1] << 8) + (memory[reg[rs] + imm + 2] << 16) + (memory[reg[rs] + imm + 3] << 24);
		high = (memory[reg[rs] + imm + 4] & 0x00000000000000ff) + (memory[reg[rs] + imm + 5] << 8) + (memory[reg[rs] + imm + 6] << 16) + (memory[reg[rs] + imm + 7] << 24);
		reg[rd] = (high << 32) |low;
		
		if(debug)
		printf("ld rd=%016llx, offset=%d, rs=%016llx\n", reg[rd], imm, reg[rs]);
        }
	
    }
    else if(OP==OP_BEQ)
    {
    	//imm = ...
    	imm = 0 + (getbit(inst, 8, 11) << 1) + (getbit(inst, 25, 30) << 5) + (getbit(inst, 7, 7) << 11) + (getbit(inst, 31, 31) << 12);
	imm = ext_signed(imm, 12);
    	//beq rs, rt, imm
        if(fuc3==F3_BEQ)
        {
        	PC = PC - 4;
			if(reg[rs] == reg[rt])
				PC = PC + imm ;
			else
				PC = PC + 4;
		if(debug)
		printf("beq rs=%016llx, rt=%016llx, imm=%d\n", reg[rs], reg[rt], imm);
        }
        //bne rs, rt, imm
        else if(fuc3 == 1)
        {
        	PC = PC - 4;
        	if(reg[rs] != reg[rt])
				PC = PC + imm;
			else
				PC = PC + 4;
		if(debug)
		printf("bne rs=%016llx, rt=%016llx, imm=%d\n", reg[rs], reg[rt], imm);
        }
        //blt rs, rt, imm
        else if(fuc3 == 4)
        {
        	PC = PC - 4;
		long long int reg_rs = reg[rs];	
		long long int reg_rt = reg[rt];
        	if(reg_rs < reg_rt)
		{
				
				PC = PC + imm;
		}
			else
				PC = PC + 4;
		if(debug)
		printf("blt rs=%016llx, rt=%016llx, imm=%d\n", reg[rs], reg[rt], imm);
        }
        //bge rs, rt, imm
        else
        {
        	PC = PC - 4;
		long long int reg_rs = reg[rs];	
		long long int reg_rt = reg[rt];
        	if(reg_rs >= reg_rt)
				PC = PC + imm;
			else
				PC = PC + 4;
		if(debug)
		printf("bge rs=%016llx, rt=%016llx, imm=%d\n", reg[rs], reg[rt], imm);
        }
	
    }
    //jalr rd, rs, imm
    else if(OP==103)
    {
    	//imm = ...
    	imm = ext_signed(getbit(inst, 20, 31), 12);
	
    	PC = PC - 4;
	unsigned int oldPC= PC;
	PC = reg[rs] + imm;
        reg[rd] = oldPC + 4;
        if(debug)
	printf("jalr rd=%016llx, rs=%016llx, imm= %d\n", reg[rd],reg[rs], imm);
    }
    //addiw rd, rs, imm
    else if(OP == OP_IW)
    {
    	//imm = ...
    	imm = getbit(inst, 20, 31);
	imm = ext_signed(imm, 12);
	if(debug)
	printf(" addiw rd=%016llx , rs= %016llx, imm=%d\n", reg[rd], reg[rs], imm);
	
	
	reg[rd] = ext_signed(reg[rs] + ext_signed(imm, 32),32);

	//printf(" rd = %lld\n", reg[rd]);
    }
    //auipc rd, imm
    else if(OP == 23)
    {
    	//imm = ... 
    	imm = getbit(inst, 12, 31);
	imm = ext_signed(imm, 20);
    	PC = PC - 4;
    	reg[rd] = PC + (imm << 12);
	PC = PC + 4;
	if(debug)
	printf("auipc rd=%016llxx, imm=%d\n", reg[rd], imm);
    }
    //lui rd, imm
    else if (OP == 55)
    {
    	//imm = ...
    	imm = getbit(inst, 12, 31);
	imm = ext_signed(imm, 20);
    	reg[rd] = imm << 12;
	if(debug)
	printf("lui rd=%016llx, imm = %d\n", reg[rd], imm);
    }
    //jal rd, imm
    else if(OP == 111)
    {
    	//imm = ...
    	imm = 0 + (getbit(inst, 21, 30) << 1) + (getbit(inst, 20, 20) << 11) + (getbit(inst, 12, 19) << 12) + (getbit(inst, 31, 31) <<20);
	imm = ext_signed(imm, 20);
    	PC = PC - 4;
    	reg[rd] = PC + 4;
    	PC = PC + imm ;
	if(debug)
	printf("jal rd=%016llx, imm=%d\n", reg[rd], imm);
    }
    else
    {
    	printf("unknown instruction\n");
    }
}
