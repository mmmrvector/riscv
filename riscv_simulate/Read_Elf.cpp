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

//Symbol table
unsigned int symnum=0;
unsigned int symadr=0;
unsigned int symsize=0;

//����ָʾ ���������Ƶ��ַ����ǵڼ����ڣ����㿪ʼ������
//unsigned int index=0;

//�ַ��������ļ��е�ַ�������ݰ���.symtab��.debug���еķ��ű�
unsigned int stradr=0;
unsigned int strsize = 0;


bool open_file()
{
	file = fopen("hello","r");
        elf = fopen("hello.elf", "w");
	return true;
}

void read_elf()
{
	if(!open_file())
		return;

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
	printf("cadr = %d\n", cadr);
	printf("csize = %d\n", csize);
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
	printf("sadr = %d\n", sadr);
	//program headers
	padr = elf64_hdr.e_phoff;
	psize = elf64_hdr.e_phentsize;
	pnum = elf64_hdr.e_phnum;
	
}

void read_elf_sections()
{

	Elf64_Shdr elf64_shdr;
	fseek(file, sadr, SEEK_SET);
	for(int c=0;c<snum;c++)
	{
		fprintf(elf," [%3d]\n",c);
		
		//file should be relocated
		fread(&elf64_shdr,1,sizeof(elf64_shdr),file);

		fprintf(elf," Name: %d ", elf64_shdr.sh_name);

		fprintf(elf," Type: %d ", elf64_shdr.sh_type);

		fprintf(elf," Address: %016llx ", elf64_shdr.sh_addr);

		fprintf(elf," Offest: %08llx \n", elf64_shdr.sh_offset);

		fprintf(elf," Size: %016llx ", elf64_shdr.sh_size);

		fprintf(elf," Entsize: %016llx ", elf64_shdr.sh_entsize);

		fprintf(elf," Flags:  %lld ", elf64_shdr.sh_flags);
		
		fprintf(elf," Link:  %d ", elf64_shdr.sh_link);

		fprintf(elf," Info:  %d ", elf64_shdr.sh_info);

		fprintf(elf," Align: %lld \n", elf64_shdr.sh_addralign);
		if(c == snum - 3)
		{
			symsize = elf64_shdr.sh_size;
			symnum = elf64_shdr.sh_entsize;
			symnum = symsize/symnum;
			
			symadr = elf64_shdr.sh_addr + elf64_shdr.sh_offset;
		}
		if(c == snum - 2)
		{
			stradr = elf64_shdr.sh_addr + elf64_shdr.sh_offset;	
			strsize = elf64_shdr.sh_size;
			printf("%d\n", stradr);
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
		//if(str[elf64_sym.st_name] == 'm' && str[elf64_sym.st_name + 1] =='a' && str[elf64_sym.st_name + 2] == 'i' && str[elf64_sym.st_name + 3] == 'n')
		{
			csize = elf64_sym.st_size;
		}
		fprintf(elf," Value:   %016llx\n", elf64_sym.st_value);
		if(strcmp(str+elf64_sym.st_name, "main") == 0)		
		//if(str[elf64_sym.st_name] == 'm' && str[elf64_sym.st_name + 1] =='a' && str[elf64_sym.st_name + 2] == 'i' && str[elf64_sym.st_name + 3] == 'n')
		{
			cadr = elf64_sym.st_value;			
		}

	}

}

