#include "Simulation.h"
using namespace std;

extern void read_elf();
extern unsigned int cadr;
extern unsigned int csize;
extern unsigned int vadr;
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
	cadr = cadr - 0x10000;
	
	fseek(file,cadr,SEEK_SET);
	//vadr = 0
	fread(&memory[vadr>>2],1,csize,file);
	
	vadr=vadr>>2;
	//only function main in memory
	entry = vadr;
	
	endPC = csize;	
	//havn't load .data yet
	gp = 10000000;
	//here csize represents the number of instructions
	csize=csize>>2;
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
	unsigned int inst = 0xff3f0000;
	int _rd = getbit(inst, 0, 21);
	printf("%08x\n", _rd);
	unsigned long long ans1 = ext_signed(-2,32);
	unsigned long long ans2 = ext_signed(3, 32);
	printf("ans1 = %lld\n", ans1 );
	printf("ans2 = %lld\n", ans2 );
	/*
	simulate();

	cout <<"simulate over!"<<endl;
	*/
	return 0;
}

void simulate()
{
	//结束PC的设置
	int end=(int)endPC/4-1;
	while(PC!=end)
	{
		Run();

		//更新中间寄存器
		
		
		
		

        if(exit_flag==1)
            break;

        reg[0]=0;//一直为零

	}
}

void Run()
{
	//read instruction
	unsigned int inst = memory[PC];
	
	PC = PC + 1;
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
	}
    else if(OP==OP_I)
    {

    	//imm = ...
    	imm = getbit(inst, 20, 31);
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
        		reg[rd] = 1
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
    }
    else if(OP==OP_SW)
    {
    	//imm =...
    	imm = getbit(inst, 7, 11) + getbit(inst, 25, 31) << 5;
    	//sb rt, offset(rs)
        if(fuc3==F3_SB)
        {
           memory[reg[rs] + imm] = reg[rt] & 0xff;
        }
        //sh rt, offset(rs)
        else if(fuc3 == 1)
        {
           memory[reg[rs] + imm] = reg[rt] & 0xffff;
        }
        //sw rt, offset(rs)
        else if(fuc3 == 2)
        {
        	memory[reg[rs] + imm] = reg[rt] & 0xffffffff;
        }
        //sd rt, offset(rs)
        else
        {
        	memory[reg[rs] + imm] = reg[rt] & 0xffffffff00000000;
        	memory[reg[rs] + imm + 1] = reg[rt] & 0xffffffff;
        }
    }
    else if(OP==OP_LW)
    {
    	//imm = ...
    	imm = getbit(inst, 20, 31);
    	//lb rd, offset(rs)
        if(fuc3==F3_LB)
        {
			reg[rd] = ext_signed(memory[reg[rs] + imm], 8);
        }
        //lh rd, offset(rs)
        else if(fuc3 == 1)
        {
        	reg[rd] = ext_signed(memory[reg[rs] + imm], 16);
        }
        //lw rd, offset(rs)
        else if(fuc3 == 2)
        {
        	reg[rd] = ext_signed(memory[reg[rs] + imm], 32);
        }
        //ld rd, offset(rs)
        else
        {
        	reg[rd] = (long long int)memory[reg[rs] + imm] << 32 + (long long int)memory[reg[rs] + imm + 1];
        }
    }
    else if(OP==OP_BEQ)
    {
    	//imm = ...
    	imm = 0 + getbit(inst, 8, 11) << 1 + getbit(inst, 25, 30) << 5 + getbit(inst, 7, 7) << 11 + getbit(inst, 31, 31) << 12;
    	//beq rs, rt, imm
        if(fuc3==F3_BEQ)
        {
        	PC = PC - 1;
			if(reg[rs] == reg[rt])
				PC = PC + (imm << 1);
			else
				PC = PC + 1;
        }
        //bne rs, rt, imm
        else if(fuc3 == 1)
        {
        	PC = PC - 1;
        	if(reg[rs] != reg[rt])
				PC = PC + (imm << 1);
			else
				PC = PC + 1;
        }
        //blt rs, rt, imm
        else if(fuc3 == 4)
        {
        	PC = PC - 1;
        	if(reg[rs] < reg[rt])
				PC = PC + (imm << 1);
			else
				PC = PC + 1;
        }
        //bge rs, rt, imm
        else
        {
        	PC = PC - 1;
        	if(reg[rs] >= reg[rt])
				PC = PC + (imm << 1);
			else
				PC = PC + 1;
        }
    }
    //jalr rd, rs, imm
    else if(OP==103)
    {
    	//imm = ...
    	imm = getbit(inst, 20, 31);
    	PC = PC - 1;
        reg[rd] = PC + 1;
        PC = reg[rs] + (imm << 1);
    }
    //addiw rd, rs, imm
    else if(OP == OP_IW)
    {
    	//imm = ...
    	imm = getbit(inst, 20, 31);
		reg[rd] = ext_signed(reg[rs] + ext_signed(imm, 32),32);
    }
    //auipc rd, imm
    else if(OP == 23)
    {
    	//imm = ...
    	imm = getbit(inst, 12, 31);
    	PC = PC - 1;
    	reg[rd] = PC + (imm << 12);
    }
    //lui rd, imm
    else if (OP == 55)
    {
    	//imm = ...
    	imm = getbit(inst, 12, 31);
    	reg[rd] = imm << 12;
    }
    //jal rd, imm
    else if(OP == 111)
    {
    	//imm = ...
    	imm = 0 + getbit(inst, 21, 30) << 1 + getbit(inst, 20, 20) << 11 + getbit(inst, 12, 19) << 12 + getbit(inst, 31, 31) <<20;
    	PC = PC - 1;
    	reg[rd] = PC + 1;
    	PC = PC + (imm << 1);
    }
    else
    {
    	printf("unknown instruction\n");
    }
}
