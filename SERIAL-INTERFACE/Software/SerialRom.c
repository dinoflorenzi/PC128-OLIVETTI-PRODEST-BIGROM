#include <windows.h>
#include <stdio.h>
#include<string.h>
#include <dirent.h>
	HANDLE hSerial;
    DCB dcbSerialParams = {0};
    COMMTIMEOUTS timeouts = {0};
    DWORD bytes_written,eventMask, total_bytes_written = 0;
    char comstr[20]="\\\\.\\";
    char com[10];
    int speed=3;

void init();
void swap(char *);
int main()
{

    char byte_in;
 	printf("port? ");
    scanf("%s",com);
    strcat(comstr,com);
    printf("speed\n1:9600\n2:19200\n3:38400\n4:57600\n5:115200\n6:128000\n7:256000\n? ");
    scanf("%d",&speed);
    printf("%s\n",comstr);
    fprintf(stderr, "Serial Program\n");
    fprintf(stderr, "Serial Program\n");
    fprintf(stderr, "Opening serial port...");
	init();
 
 
	DIR *d;
    struct dirent *dir;
    //d = opendir("D:\\OlivettiProdest\\cart\\");
    d = opendir(".");
    if (d)
    {
        while ((dir = readdir(d)) != NULL)
        {	
        	char *file=dir->d_name;
			printf("file: %s\n",file);
        	if(strstr(file,".rom")!=NULL)
			{
				while(1)
				{
					printf("waiting....\n");
					if(WaitCommEvent(hSerial,&eventMask,NULL))
					{
					ReadFile(hSerial,byte_in,1,&bytes_written,NULL);
					//if(byte_in==2)
					break;
					}
					else
					init();
				}
				Sleep(1000);
				swap(file); 
			}
                    
        }
        closedir(d);
    }
 
    fprintf(stderr, "%d bytes written\n", bytes_written);

    // Close serial port
    fprintf(stderr, "Closing serial port...");
    if (CloseHandle(hSerial) == 0)
    {
        fprintf(stderr, "Error\n");
        return 1;
    }
    fprintf(stderr, "OK\n");

    // exit normally
    return 0;
}

void swap(char * filename)
{ 

	char bufferin[0x4064];
	char bufferout[0x4000];
	FILE *in=NULL;
	FILE *out=NULL;
    char filein[200];
    char fileout[200];
    //char foldername[]="D:\\OlivettiProdest\\cart\\";
	char foldername[]=".";
	strcpy(filein,foldername);
	strcpy(fileout,foldername);
	strcat(filein,filename);
	strcat(fileout,filename);
	fileout[strlen(fileout)-6]=0;
	strcat(fileout,".rom");
	printf("%s\n", filein);
	//printf("%s\n", fileout);
	in=fopen(filein,"rb");
	//out=fopen(fileout,"wb");
	//if(in==NULL||out==NULL)
	//printf("fail\n");
	fread(bufferin,0x4064,1,in);	
	//for(int i=0;i<0x1000;i++)
	//bufferout[i]=bufferin[i+0x3000];
	//for(int i=0;i<0x3000;i++)
	//bufferout[i+0x1000]=bufferin[i];
	//fwrite(bufferout,0x4000,0x0000,out);
	fclose(in);
	//fclose(out);
	fprintf(stderr, "Sending bytes...");
    if(!WriteFile(hSerial, bufferin, 0X4064, &bytes_written, NULL))
    {
        fprintf(stderr, "Error\n");
        CloseHandle(hSerial);
        return 1;
    }
	
}

void init()
{

	   hSerial = CreateFile(
                comstr
				, GENERIC_READ|GENERIC_WRITE, 0, NULL,
                OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
    if (hSerial == INVALID_HANDLE_VALUE)
    {
            fprintf(stderr, "Error\n");
            return 1;
    }
    else fprintf(stderr, "OK\n");

    // Set device parameters (38400 baud, 1 start bit,
    // 1 stop bit, no parity)
    dcbSerialParams.DCBlength = sizeof(dcbSerialParams);
    if (GetCommState(hSerial, &dcbSerialParams) == 0)
    {
        fprintf(stderr, "Error getting device state\n");
        CloseHandle(hSerial);
        return 1;
    }
	switch(speed)
	{
			case 1:
				dcbSerialParams.BaudRate = CBR_9600;
			break;
			case 2:
				dcbSerialParams.BaudRate = CBR_19200;
			break;
			case 3:
				dcbSerialParams.BaudRate = CBR_38400;
			break;
			case 4:
				dcbSerialParams.BaudRate = CBR_57600;
			break;
			case 5:
				dcbSerialParams.BaudRate = CBR_115200;
			break;
			case 6:
				dcbSerialParams.BaudRate = CBR_128000;
			break;
			case 7:
				dcbSerialParams.BaudRate = CBR_256000;
			break;
			default:
				dcbSerialParams.BaudRate = CBR_9600;
			break;
	}
	
	dcbSerialParams.fDtrControl = 0;
	dcbSerialParams.fRtsControl = 0;
    dcbSerialParams.ByteSize = 8; 
    dcbSerialParams.StopBits = ONESTOPBIT;
    dcbSerialParams.Parity = NOPARITY;
    if(SetCommState(hSerial, &dcbSerialParams) == 0)
    {
        fprintf(stderr, "Error setting device parameters\n");
        CloseHandle(hSerial);
        return 1;
    }

    // Set COM port timeout settings
	/*
    timeouts.ReadIntervalTimeout = 50;
    timeouts.ReadTotalTimeoutConstant = 50;
    timeouts.ReadTotalTimeoutMultiplier = 10;
    timeouts.WriteTotalTimeoutConstant = 50;
    timeouts.WriteTotalTimeoutMultiplier = 10;
    if(SetCommTimeouts(hSerial, &timeouts) == 0)
    {
        fprintf(stderr, "Error setting timeouts\n");
        CloseHandle(hSerial);
        return 1;
    }
	*/
	SetCommMask(hSerial,EV_RXCHAR);

}
