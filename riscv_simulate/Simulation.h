#include<iostream>
#include<stdio.h>
#include<math.h>
//#include <io.h>
//#include <process.h>
#include<time.h>
#include<stdlib.h>
#include"Reg_def.h"
#include <string.h>

#define OP_JAL 111
#define OP_R 51

#define F3_ADD 0
#define F3_MUL 0
#define F3_SUB 0
#define F3_SLL 1
#define F3_MULH 1
#define F3_SLT 2
#define F3_XOR 4
#define F3_DIV 4
#define F3_SRL 5
#define F3_SRA 5
#define F3_OR 6
#define F3_REM 6
#define F3_AND 7

#define F7_MSE 1
#define F7_ADD 0
#define F7_MUL 1
#define F7_SUB 32
#define F7_SLL 0
#define F7_MULH 1
#define F7_SLT 0
#define F7_XOR 0
#define F7_DIV 1
#define F7_SRL 0
#define F7_SRA 32
#define F7_OR 0
#define F7_REM 1
#define F7_AND 0

#define OP_I 19
#define F3_ADDI 0

#define OP_SW 35
#define F3_SB 0

#define OP_LW 3
#define F3_LB 0

#define OP_BEQ 99
#define F3_BEQ 0

#define OP_IW 27
#define F3_ADDIW 0

#define OP_RW 59
#define F3_ADDW 0
#define F7_ADDW 0


#define OP_SCALL 115
#define F3_SCALL 0
#define F7_SCALL 0

#define MAX 400000000
//ALUop
#define ADD 0
#define SUB 1
#define MUL 2
#define DIV 3
#define AND 4
#define OR 5
#define XOR 6
#define NOT 7
//sll, slt, srl, sra...
#define SLR 8
#define SRA 9
//
//主存
unsigned char memory[MAX]={0};
//寄存器堆
REG reg[32]={0};
//PC
int PC=0;


//各个指令解析段
unsigned int OP=0;
unsigned int fuc3=0,fuc7=0;
int shamt=0;
int rs=0,rt=0,rd=0;
unsigned int imm12=0;
unsigned int imm20=0;
unsigned int imm7=0;
unsigned int imm5=0;



//加载内存
void load_memory();

void simulate();

void IF();

void ID();

void EX();

void MEM();

void WB();


void Run();
//获取指定位
//unsigned int getbit(int s,int e);

unsigned int getbit(unsigned inst,int s,int e)
{
	unsigned int temp_inst = inst;
	unsigned int temp_inst2 = 1;
	temp_inst = temp_inst << (31 - e);
	temp_inst = temp_inst >> (31 - e);
	temp_inst = temp_inst >> s;
	
	return temp_inst;
}

//
unsigned long long int ext_signed(unsigned int src1,int bit)
{
	unsigned long long int temp;
	unsigned int src = src1;
	if((src & (0x1 << (bit - 1))) != 0)
	{
		//printf("src = %d\n", src);
		unsigned long long m1 = -1;
		temp = m1 << bit;
		temp = temp | src;
		//printf("in ext = %016llx\n", temp);
	}
	else 
		temp = 0x0 | src;
    return temp;
}

