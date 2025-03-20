#include<stdio.h>
#include <ctype.h>
#include<string.h>

char * lowercase( char * s )
{
  for (char * p = s;  *p;  ++p)
  {
    *p = tolower( *p );
  }
  return s;
}

int main(int argc, char ** argv)
{
	if(argc<2)
	{
	printf("file .rom o .eeprom\n");
	return 1;	
		}
	char *arg1= lowercase(argv[1]);
	char arg2[255];
	strcpy(arg2,argv[1]);
	char *p1=strstr(arg2,".rom");
	char *p2=strstr(arg2,".eeprom");
	if(p1==NULL)
    if(p2==NULL)
    {
		printf("file non trovato!!!!\n");
    	return 1;
    }
     else
    {
    	strcpy(p2,".rom");
    }
    else
    {
    	strcpy(p1,".eeprom");
    }
   char buffer[4][4096];
    FILE * in = fopen(argv[1],"rb");
    FILE * out = fopen(arg2,"wb");

    for(int i=0;i<4;i++)
    fread(&buffer[i],4096,1,in);
    if(p1!=NULL)
    {
    	fwrite(&buffer[1],4096,1,out);
    	fwrite(&buffer[2],4096,1,out);
    	fwrite(&buffer[3],4096,1,out);
    	fwrite(&buffer[0],4096,1,out);
    }
    if(p2!=NULL)
    {
    	fwrite(&buffer[3],4096,1,out);
    	fwrite(&buffer[0],4096,1,out);
    	fwrite(&buffer[1],4096,1,out);
    	fwrite(&buffer[2],4096,1,out);
    }
    fclose(in);
    fclose(out);
    return 0;
}