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
		//运行
		IF();
		ID();
		EX();
		MEM();
		WB();

		//更新中间寄存器
		IF_ID=IF_ID_old;
		ID_EX=ID_EX_old;
		EX_MEM=EX_MEM_old;
		MEM_WB=MEM_WB_old;

        if(exit_flag==1)
            break;

        reg[0]=0;//一直为零

	}
}


//取指令
void IF()
{
	//write IF_ID_old
	IF_ID_old.inst=memory[PC];
	PC=PC+1;
	IF_ID_old.PC=PC;
}

//译码
void ID()
{
	//Read IF_ID
	unsigned int inst=IF_ID.inst;
	int EXTop=0;
	unsigned int EXTsrc=0;

	char RegDst,ALUop,ALUSrc;
	char Branch,MemRead,MemWrite;
	char RegWrite,MemtoReg;
	OP = getbit(inst, 0, 6);
	rd=getbit(inst,7,11);
	fuc3=getbit(inst,12, 14);
	fuc7 = getbit(inst, 25, 31);
	rs = getbit(inst, 15, 19);
	rt = getbit(inst, 20, 24);
	//imm12 = 
	//imm20 = 
	//imm7 =
 	//imm5 = 

	
	if(OP==OP_R)
	{
		//add rd, rs1, rs2
		if(fuc3==F3_ADD&&fuc7==F7_ADD)
		{
            		EXTop=0;
			RegDst=1;
			ALUop=ADD;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
			MemtoReg=0;
		}
		//mul rd, rs1, rs2
		else if(fuc3 ==F3_MUL &&fuc7==F7_MUL)
		{
		 	EXTop=0;
			RegDst=1;
			ALUop=MUL;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
			
		}
		//sub rd, rs1, rs2
		else if(fuc3 == F3_SUB && fuc7 == F7_SUB)
		{
			EXTop=0;
			RegDst=1;
			ALUop=SUB;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;	
		}
		//sll rd, rs1, rs2
		else if(fuc == F3_SLL && fuc7 == F7_SLL)
		{
			EXTop=0;
			RegDst=1;
			ALUop= SLR;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//mulh rd, rs1, rs2
		else if(fuc3 == F3_MULH && fuc7 == F7_MULH)
		{
			EXTop=0;
			RegDst=1;
			ALUop= MUL;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//slt rd, rs1, rs2
		else if(fuc3 == F3_SLT && fuc7 == F7_SLT)
		{
			EXTop=0;
			RegDst=1;
			ALUop= SUB;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//xor rd, rs1, rs2
		else if(fuc3 == F3_XOR && fuc7 == F7_XOR)
		{
			EXTop=0;
			RegDst=1;
			ALUop= XOR;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//div rd, rs1, rs2
		else if(fuc3 == F3_DIV && fuc7 == F7_DIV)
		{
			EXTop=0;
			RegDst=1;
			ALUop= DIV;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//srl rd, rs1, rs2
		else if(fuc3 == F3_SRL && fuc7 == F7_SRL)
		{
			EXTop=0;
			RegDst=1;
			ALUop= SRL;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//sra rd, rs1, rs2
		else if(fuc3 == F3_SRA && fuc7 == F7_SRA)
		{
			EXTop=0;
			RegDst=1;
			ALUop= SRA;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//or rd, rs1, rs2
		else if(fuc3 == F3_OR && fuc7 == F7_OR)
		{
			EXTop=0;
			RegDst=1;
			ALUop= OR;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//rem rd, rs1, rs2
		else if(fuc3 == F3_OR && fuc7 == F7_OR)
		{
			EXTop=0;
			RegDst=1;
			ALUop= OR;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
		//and rd, rs1, rs2
		else 
		{
			EXTop=0;
			RegDst=1;
			ALUop= AND;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=1;
		}
	}
    else if(OP==OP_I)
    {
        if(fuc3==F3_ADDI)
        {
            
        }
        else
        {
           
        }
    }
    else if(OP==OP_SW)
    {
        if(fuc3==F3_SB)
        {
           
        }
        else
        {
           
        }
    }
    else if(OP==OP_LW)
    {
        if(fuc3==F3_LB)
        {
			
        }
        else
        {

        }
    }
    else if(OP==OP_BEQ)
    {
        if(fuc3==F3_BEQ)
        {
			
        }
        else
        {
           
        }
    }
    else if(OP==OP_JAL)
    {
        
    }
    else
    {
		
    }

	//write ID_EX_old
	ID_EX_old.Rd=rd;
	ID_EX_old.Rt=rt;
	ID_EX_old.Imm=ext_signed(EXTsrc,EXTop);
	//...

	ID_EX_old.Ctrl_EX_ALUOp=ALUop;
	//....

}

//执行
void EX()
{
	//read ID_EX
	int temp_PC=ID_EX.PC;
	char RegDst=ID_EX.Ctrl_EX_RegDst;
	char ALUOp=ID_EX.Ctrl_EX_ALUOp;

	//Branch PC calulate
	//...

	//choose ALU input number
	//...

	//alu calculate
	int Zero;
	REG ALUout;
	switch(ALUOp){
	default:;
	}

	//choose reg dst address
	int Reg_Dst;
	if(RegDst)
	{

	}
	else
	{

	}

	//write EX_MEM_old
	EX_MEM_old.ALU_out=ALUout;
	EX_MEM_old.PC=temp_PC;
    //.....
}

//访问存储器
void MEM()
{
	//read EX_MEM

	//complete Branch instruction PC change

	//read / write memory

	//write MEM_WB_old
}


//写回
void WB()
{
	//read MEM_WB

	//write reg
}
