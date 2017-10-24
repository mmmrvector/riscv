#include "Simulation.h"
using namespace std;

extern void read_elf();
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
extern FILE *file;


//指令运行数
long long inst_num=0;

//系统调用退出指示
int exit_flag=0;

//加载代码段
//初始化PC
void load_memory()
{
	
	//find where main is 
	madr = madr - 0x10000;
	//load all
	
	fseek(file,cadr,SEEK_SET);
	
	fread(&memory[vadr>>2],1,csize,file);
	
	fseek(file, dadr, SEEK_SET);
	fread(&memory[vdadr>>2], 1,dsize, file);
	printf("entry = %08x\n", entry);
	printf("endPC = %08x\n",endPC);
	vadr=vadr>>2;
	vdadr = vdadr>>2;
	//only function main in memory
	//entry = entry >>2;
	
	//endPC = endPC>>2;	
	//havn't load .data yet
	printf("gp = %08x\n", gp);
	gp = gp >> 2;
	printf("gp = %08x\n", gp);
	//here csize represents the number of instructions
	csize=csize>>2;
	dsize=dsize>>2;

	
	fclose(file);
}

int main()
{
	//解析elf文件
	read_elf();
	
	//加载内存
	load_memory();
	
	//设置入口地址
	PC=entry>>2;
	
	//设置全局数据段地址寄存器
	reg[3]=gp;
	
	reg[2]=MAX/2;//栈基址 （sp寄存器）
	printf("end = %08x\n", endPC/4-1);
	
	simulate();

	cout <<"simulate over!"<<endl;
	
	return 0;
}

void simulate()
{
	//结束PC的设置
	int end=(int)endPC/4-1;
	int cnt = 0;
	while(PC!=end && cnt <500 )
	{
		printf("no.%d\n", cnt);
		Run();
		cnt ++;
		//更新中间寄存器
		
		
		
		for(int i = 0; i < 10; i ++)
		{
			printf("%d ", memory[17904 + i]);	
		}
	printf("\n");

        if(exit_flag==1)
            break;
	
        reg[0]=0;//一直为零

	}
	printf("b = %d\n", memory[17880]);
}

void Run()
{
	//read instruction
	unsigned int inst = memory[PC];
	
	printf("PC = 0x%08x  ",PC);
	printf("inst = 0x%08x ",inst); 
	PC = PC + 1;
	OP = getbit(inst, 0, 6);
	rd=getbit(inst,7,11);
	fuc3=getbit(inst,12, 14);
	fuc7 = getbit(inst, 25, 31);
	rs = getbit(inst, 15, 19);
	rt = getbit(inst, 20, 24);
	printf("OP code = 0x%02x  ", OP);
	
	//imm = ...
	int imm = 0;
	if(OP==OP_R)
	{
		//add rd, rs1, rs2
		if(fuc3==F3_ADD&&fuc7==F7_ADD)
		{
            		reg[rd] = reg[rs] + reg[rt];
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
			reg[rd] = (reg[rs] * reg[rt]);
		}
		//slt rd, rs1, rs2
		else if(fuc3 == F3_SLT && fuc7 == F7_SLT)
		{
			if(reg[rs] < reg[rt])
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
		else if(fuc3 == F3_OR && fuc7 == F7_OR)
		{
			reg[rd] = reg[rs] % reg[rt];
		}
		//and rd, rs1, rs2
		else 
		{
			reg[rd] = reg[rs] & reg[rt];
		}
		printf("rd = %lld, rs = %lld, rt = %lld\n", reg[rd], reg[rs], reg[rt]);
	}
	else if(OP == 59)
	{
		if(fuc3 == 0 && fuc7 == 0)
		{
			reg[rd] = reg[rs] + reg[rt];
		}
		printf("rd = %lld, rs = %lld, rt = %lld\n ", reg[rd], reg[rs], reg[rt]);
	}
    else if(OP==OP_I)
    {

    	//imm = ...
    	imm = ext_signed(getbit(inst, 20, 31), 12);
    	//addi rd, rs1, imm
        if(fuc3==F3_ADDI)
        {
            		reg[rd] = reg[rs] + imm;

        }
        //slli rd, rs1, imm
        else if(fuc3 == 1 && fuc7 == 0)
        {
            reg[rd] = reg[rs] << imm;
        }
        //slti rd, rs, imm
        else if(fuc3 == 2)
        {
        	if(reg[rs] < imm)
        		reg[rd] = 1;
        	else 
        		reg[rd] = 0;
        }
        //xori rd, rs, imm
        else if(fuc3 == 4)
        {
        	reg[rd] = reg[rs] ^ imm;
        }
        //srli rd, rs, imm
        else if(fuc3 == 5 && fuc7 == 0)
        {
        	reg[rd] = reg[rs] >> imm;
        }
        //srai rd, rs, imm
        else if(fuc3 == 5 && fuc7 == 32)
        {
        	reg[rd] = (long long int)reg[rs] >> imm;
        }
        //ori rd, rs, imm
        else if(fuc3 == 6)
        {
        	reg[rd] = reg[rs] | imm;
        }
        //andi rd, rs, imm
        else
        {
        	reg[rd] = reg[rs] & imm;
        }
	printf("rd = %lld, rs = %lld, imm = %d\n", reg[rd], reg[rt], imm);
    }
    else if(OP==OP_SW)
    {
    	//imm =...
    	imm = getbit(inst, 7, 11) + (getbit(inst, 25, 31) << 5);
	imm = ext_signed(imm, 12);
    	//sb rt, offset(rs)
        if(fuc3==F3_SB)
        {
           memory[reg[rs] + imm >> 2] = reg[rt] & 0xff;
        }
        //sh rt, offset(rs)
        else if(fuc3 == 1)
        {
           memory[reg[rs] + imm >> 2] = reg[rt] & 0xffff;
        }
        //sw rt, offset(rs)
        else if(fuc3 == 2)
        {
        	memory[reg[rs] + imm >> 2] = reg[rt] & 0xffffffff;
        }
        //sd rt, offset(rs)
        else
        {
        	memory[reg[rs] + imm >> 2] = reg[rt] & 0xffffffff00000000;
        	memory[((reg[rs] + imm)>> 2) + 1] = reg[rt] & 0xffffffff;
        }
	printf("rs = %lld, rt = %lld, imm = %d\n", reg[rs], reg[rt], imm);
    }
    else if(OP==OP_LW)
    {
    	//imm = ...
    	imm = ext_signed(getbit(inst, 20, 31),12);
    	//lb rd, offset(rs)
        if(fuc3==F3_LB)
        {
			reg[rd] = ext_signed(memory[reg[rs] + imm >> 2], 8);
        }
        //lh rd, offset(rs)
        else if(fuc3 == 1)
        {
        	reg[rd] = ext_signed(memory[reg[rs] + imm >> 2], 16);
        }
        //lw rd, offset(rs)
        else if(fuc3 == 2)
        {
        	reg[rd] = ext_signed(memory[reg[rs] + imm >> 2], 32);
        }
        //ld rd, offset(rs)
        else
        {
        	reg[rd] = ((long long int)memory[reg[rs] + imm >> 2] << 32) + (long long int)memory[(reg[rs] + imm  >> 2) + 1];
        }
	printf("rd = %lld, rs = %lld, imm = %d\n", reg[rd], reg[rs], imm); 
    }
    else if(OP==OP_BEQ)
    {
    	//imm = ...
    	imm = 0 + (getbit(inst, 8, 11) << 1) + (getbit(inst, 25, 30) << 5) + (getbit(inst, 7, 7) << 11) + (getbit(inst, 31, 31) << 12);
	imm = ext_signed(imm, 12);
    	//beq rs, rt, imm
        if(fuc3==F3_BEQ)
        {
        	PC = PC - 1;
			if(reg[rs] == reg[rt])
				PC = PC + (imm >> 2);
			else
				PC = PC + 1;
        }
        //bne rs, rt, imm
        else if(fuc3 == 1)
        {
        	PC = PC - 1;
        	if(reg[rs] != reg[rt])
				PC = PC + (imm >> 2);
			else
				PC = PC + 1;
        }
        //blt rs, rt, imm
        else if(fuc3 == 4)
        {
        	PC = PC - 1;
        	if(reg[rs] < reg[rt])
				PC = PC + (imm >> 2);
			else
				PC = PC + 1;
        }
        //bge rs, rt, imm
        else
        {
        	PC = PC - 1;
        	if(reg[rs] >= reg[rt])
				PC = PC + (imm >> 2);
			else
				PC = PC + 1;
        }
	printf("rs = %lld, rt = %lld, next PC = %08x\n", reg[rs], reg[rt], PC);
    }
    //jalr rd, rs, imm
    else if(OP==103)
    {
    	//imm = ...
    	imm = ext_signed(getbit(inst, 20, 31), 12);
	
    	PC = PC - 1;
        reg[rd] = PC + 1;
        PC = reg[rs] + (imm  >> 2);
	printf("jalr PC = %08x,  imm = %d\n", PC, imm);
    }
    //addiw rd, rs, imm
    else if(OP == OP_IW)
    {
    	//imm = ...
    	imm = getbit(inst, 20, 31);
	imm = ext_signed(imm, 12);
		reg[rd] = ext_signed(reg[rs] + ext_signed(imm, 32),32);
	printf("rd = %lld, rs = %lld, rt = %lld\n", reg[rd], reg[rs], reg[rt]);
    }
    //auipc rd, imm
    else if(OP == 23)
    {
    	//imm = ...
    	imm = getbit(inst, 12, 31);
	imm = ext_signed(imm, 20);
    	PC = PC - 1;
    	reg[rd] = PC + (imm << 12);
	PC = PC + 1;
	printf("auipc PC = %08x, imm = %d\n", PC, imm);
    }
    //lui rd, imm
    else if (OP == 55)
    {
    	//imm = ...
    	imm = getbit(inst, 12, 31);
	imm = ext_signed(imm, 20);
    	reg[rd] = imm << 12;
	printf("lui rd = %lld imm = %d\n", reg[rd], imm);
    }
    //jal rd, imm
    else if(OP == 111)
    {
    	//imm = ...
    	imm = 0 + (getbit(inst, 21, 30) << 1) + (getbit(inst, 20, 20) << 11) + (getbit(inst, 12, 19) << 12) + (getbit(inst, 31, 31) <<20);
	imm = ext_signed(imm, 20);
    	PC = PC - 1;
    	reg[rd] = PC + 1;
    	PC = PC + (imm >> 2 );
	printf("jal PC = %08x, imm = %d\n", PC, imm);
    }
    else
    {
    	printf("unknown instruction\n");
    }
}
