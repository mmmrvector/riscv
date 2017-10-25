#include"Read_Elf.h"

FILE *elf=NULL;
Elf64_Ehdr elf64_hdr;

//Program headers
unsigned int padr=0;
unsigned int psize=0;
unsigned int pnum=0;

//Section Headers
unsigned int sadr=0;
unsigned int ssize=0;
unsigned int snum=0;
unsigned int shstrndx = 0;
//Symbol table
unsigned int symnum=0;
unsigned int symadr=0;
unsigned int symsize=0;

//用于指示 包含节名称的字符串是第几个节（从零开始计数）
//unsigned int index=0;

//字符串表在文件中地址，其内容包括.symtab和.debug节中的符号表
unsigned int stradr=0;
unsigned int strsize = 0;

char *globalVar;

bool open_file(char *fileName)
{
	
	file = fopen(fileName,"r");
	strcat(fileName, ".elf");
        elf = fopen(fileName, "w");
	return true;
}

void read_elf(char *fileName, char *GlobalVar)
{
	if(!open_file(fileName))
		return;
	globalVar = GlobalVar;
	fprintf(elf,"ELF Header:\n");
	read_Elf_header();

	fprintf(elf,"\n\nSection Headers:\n");
	read_elf_sections();

	fprintf(elf,"\n\nProgram Headers:\n");
	read_Phdr();

	fprintf(elf,"\n\nSymbol table:\n");
	read_symtable();


	fseek(file, 65964, SEEK_SET);
	unsigned int mem = 0;
	fread(&mem, 1, 55, file);
	fprintf(elf, "mem = %x\n", mem);
	//set cadr, vadr,csize...
	//printf("cadr = %d\n", cadr);
	//printf("csize = %d\n", csize);
	fclose(elf);
	//fclose(file);
       
}

void read_Elf_header()
{
	//file should be relocated
	fread(&elf64_hdr,1,sizeof(elf64_hdr),file);
		
	fprintf(elf," magic number:  ");
	for(int i = 0; i < 16; i ++)
	{
		fprintf(elf, "%02x",  elf64_hdr.e_ident[i]);
	}
	
	fprintf(elf," Class:  ELFCLASS32\n");
	
	fprintf(elf," Data:  little-endian\n");
		
	fprintf(elf," Version:   \n");

	fprintf(elf," OS/ABI:	 System V ABI\n");
	
	fprintf(elf," ABI Version:   \n");
	
	fprintf(elf," Type:  %d\n", elf64_hdr.e_type);
	
	fprintf(elf," Machine:   EXEC (Executable file)\n");
	
	fprintf(elf," Version:  RISC-V\n");

	fprintf(elf," Entry point address:  0x%x\n", elf64_hdr.e_entry);
	
	fprintf(elf," Start of program headers:   %d bytes into  file\n", elf64_hdr.e_phoff);

	fprintf(elf," Start of section headers:   %d bytes into  file\n", elf64_hdr.e_shoff);

	fprintf(elf," Flags:  0x%x, RVC, double-float ABI\n", elf64_hdr.e_flags);
	
	fprintf(elf," Size of this header:   %d Bytes\n", elf64_hdr.e_ehsize);

	fprintf(elf," Size of program headers: %d Bytes\n", elf64_hdr.e_phentsize);

	fprintf(elf," Number of program headers:  %d \n", elf64_hdr.e_phnum);

	fprintf(elf," Size of section headers:   %d Bytes\n", elf64_hdr.e_shentsize);

	fprintf(elf," Number of section headers: %d \n", elf64_hdr.e_shnum);

	fprintf(elf," Section header string table index:  %d \n", elf64_hdr.e_shstrndx);
	
	//section headers
	sadr = elf64_hdr.e_shoff;
	ssize = elf64_hdr.e_shentsize;
	snum = elf64_hdr.e_shnum;
	shstrndx = elf64_hdr.e_shstrndx;
	//printf("sadr = %d\n", sadr);
	//program headers
	padr = elf64_hdr.e_phoff;
	psize = elf64_hdr.e_phentsize;
	pnum = elf64_hdr.e_phnum;
	//section header string table
	 
	
}

void read_elf_sections()
{

	Elf64_Shdr elf64_shdr;
	char sectionstr[1000];
	fseek(file, sadr, SEEK_SET);
	for(int c = 0;c<snum; c++)
	{
		fread(&elf64_shdr,1,sizeof(elf64_shdr),file);
		if(c == shstrndx)
		{
			fseek(file, elf64_shdr.sh_offset,SEEK_SET);
			fread(sectionstr, 1, elf64_shdr.sh_size, file);	
			break;
		}
	}
	fseek(file, sadr, SEEK_SET);
	for(int c=0;c<snum;c++)
	{
		fprintf(elf," [%3d]\n",c);
		
		//file should be relocated
		fread(&elf64_shdr,1,sizeof(elf64_shdr),file);

		fprintf(elf," Name: %s ", sectionstr + elf64_shdr.sh_name);

		fprintf(elf," Type: %d ", elf64_shdr.sh_type);

		fprintf(elf," Address: %016llx ", elf64_shdr.sh_addr);

		fprintf(elf," Offest: %08llx \n", elf64_shdr.sh_offset);

		fprintf(elf," Size: %016llx ", elf64_shdr.sh_size);

		fprintf(elf," Entsize: %016llx ", elf64_shdr.sh_entsize);

		fprintf(elf," Flags:  %lld ", elf64_shdr.sh_flags);
		
		fprintf(elf," Link:  %d ", elf64_shdr.sh_link);

		fprintf(elf," Info:  %d ", elf64_shdr.sh_info);

		fprintf(elf," Align: %lld \n", elf64_shdr.sh_addralign);
		if(strcmp(sectionstr+elf64_shdr.sh_name, ".symtab") == 0)
		{
			symsize = elf64_shdr.sh_size;
			symnum = elf64_shdr.sh_entsize;
			symnum = symsize/symnum;
			
			symadr = elf64_shdr.sh_addr + elf64_shdr.sh_offset;
		}
		if(strcmp(sectionstr+elf64_shdr.sh_name, ".strtab") == 0)
		{
			stradr = elf64_shdr.sh_addr + elf64_shdr.sh_offset;	
			strsize = elf64_shdr.sh_size;
			//printf("%d\n", stradr);
		}
 	}
}

void read_Phdr()
{
	Elf64_Phdr elf64_phdr;
	fseek(file, padr,SEEK_SET);
	for(int c=0;c<pnum;c++)
	{
		fprintf(elf," [%3d]\n",c);
			
		//file should be relocated
		fread(&elf64_phdr,1,sizeof(elf64_phdr),file);

		fprintf(elf," Type:   %d ", elf64_phdr.p_type);
		
		fprintf(elf," Flags:  %d ", elf64_phdr.p_flags);
		
		fprintf(elf," Offset:  0x%016llx ", elf64_phdr.p_offset);
		
		fprintf(elf," VirtAddr:  0x%016llx ", elf64_phdr.p_vaddr);
		
		fprintf(elf," PhysAddr:   0x%016llx ", elf64_phdr.p_vaddr);

		fprintf(elf," FileSiz:   0x%016llx ", elf64_phdr.p_filesz);

		fprintf(elf," MemSiz:   0x%016llx ", elf64_phdr.p_memsz);
		
		fprintf(elf," Align:   0x%x \n", elf64_phdr.p_align);
		if(c == 0)
		{
			cadr = elf64_phdr.p_offset;
			vadr = elf64_phdr.p_vaddr;
			//printf("code segment addres:cadr = %08x\n", cadr);
			//printf("virtual code segment addres:vadr = %08x\n", vadr);
			csize = elf64_phdr.p_filesz;
		}
		if(c == 1)
		{
			dadr = elf64_phdr.p_offset;
			vdadr = elf64_phdr.p_vaddr;
			//printf("data segment addres:cadr = %08x\n", dadr);
			//printf("virtual data segment addres:vdadr = %08x\n", vdadr);	
			dsize = elf64_phdr.p_filesz;
		}
	}
}


void read_symtable()
{
	Elf64_Sym elf64_sym;
	//read strtable
	fseek(file, stradr, SEEK_SET);
	char str[strsize];
	fread(str, 1, strsize, file);
	
	fseek(file, symadr, SEEK_SET);
	for(int c=0;c<symnum;c++)
	{
		fprintf(elf," [%3d]   ",c);
		
		//file should be relocated
		fread(&elf64_sym,1,sizeof(elf64_sym),file);
		fprintf(elf," Name:  %40s ", str+elf64_sym.st_name);
		
		fprintf(elf," Bind:   ");
		
		fprintf(elf," Type:   ");
		
		fprintf(elf," NDX:   %hu ", elf64_sym.st_shndx);
		
		fprintf(elf," Size:  %lld ", elf64_sym.st_size);
		if(strcmp(str+elf64_sym.st_name, "main") == 0)
		{
			endPC =  elf64_sym.st_value + elf64_sym.st_size;
		}
		fprintf(elf," Value:   %016llx\n", elf64_sym.st_value);
		if(strcmp(str+elf64_sym.st_name, "main") == 0)		
		{
			entry = elf64_sym.st_value;
			madr = entry;			
		}
		if(strcmp(str+elf64_sym.st_name, "__global_pointer$") == 0)
		{
		        gp = elf64_sym.st_value;	
		}
		if(strcmp(str+elf64_sym.st_name, globalVar)==0)
		{
			globalAddr = elf64_sym.st_value;
			globalVarSize = elf64_sym.st_size;	
		}

	}

}


