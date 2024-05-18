//#ifndef UNICODE
//#define UNICODE
//#endif 

#define BTN_BUTTON 201
#define CMB_COMBOBOX 202
#define LST_LISTBOX 203
#define TXT_TEXTBOX 204
#define BTN_BUTTON2 205
#define BTN_BUTTON3 206
#define CMB_COMBOBOX2 207

#include <sys/time.h>
#include <tchar.h>
#include <windows.h>
#include <commctrl.h>
#include <stdio.h>
#include<string.h>
#include <dirent.h>
#include <stdint.h>
	HANDLE hSerial;
	HWND hWndListBox;
	HWND hWndTextBox;
	HWND hWndComboBox;
	HWND hWndComboBox2;
    DCB dcbSerialParams = {0};
    COMMTIMEOUTS timeouts = {0};
    DWORD bytes_written,eventMask, total_bytes_written = 0;
    char comstr[20]="";
	char verb[1024]="";
    char com[10];
    int speed=1;
	int count;
	HANDLE thread;
	DWORD threadId;
	int oldIndex=-1;
	long ti;
	BOOL uploading=FALSE;
	char temp[1024];
	CHAR FileName[1024];
struct {
	BOOL dragging;
	int startIndex;
	int draggedIndex;
	char * item;
} DragInfo;
int init();
unsigned short getcrc(char *,int);
long getMicrotime();
void loadRoms();
void upload(LPVOID);
void getComs();
void printBox(char *);
int swap(char *);
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
LRESULT CALLBACK ListBoxSubclassProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
INT ChooseProgram(PCHAR);
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR pCmdLine, int nCmdShow)
{
    // Register the window class.
    const char CLASS_NAME[]  = "Sample Window Class";
    
    WNDCLASSEX wc = { sizeof(WNDCLASSEX),CS_HREDRAW|CS_VREDRAW, WindowProc,0,0,hInstance,NULL,NULL,NULL,NULL,CLASS_NAME,NULL };
    RegisterClassEx(&wc);


    // Create the window.

    HWND hwnd = CreateWindowEx(
        0,                              // Optional window styles.
        CLASS_NAME,                     // Window class
        "BigRom Serial Uploading",    // Window text
        WS_OVERLAPPEDWINDOW,            // Window style

        // Size and position
        CW_USEDEFAULT, CW_USEDEFAULT, 900, 600,

        NULL,       // Parent window    
        NULL,       // Menu
        hInstance,  // Instance handle
        NULL        // Additional application data
        );

    if (hwnd == NULL)
    {
		printf("null");
        return 0;
    }
	
    ShowWindow(hwnd, nCmdShow);

    // Run the message loop.
    MSG msg = { };
    while (GetMessage(&msg, NULL, 0, 0) > 0)
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }

	return 0;
}

void upload(LPVOID lpParam)
{	
	LPARAM lParam = (LPARAM) lpParam;
	uploading = TRUE;
	char comStr[255]="";
    char byte_in;
	speed = SendMessage(hWndComboBox, CB_GETCURSEL, (WPARAM)0, (LPARAM)0)+1;
	printf("speed %d\n",speed);
	int selection = SendMessage(hWndComboBox2, CB_GETCURSEL, (WPARAM)0, (LPARAM)0);
	SendMessage(hWndComboBox2, CB_GETLBTEXT, (WPARAM)selection, (LPARAM)comStr);
    printf("Opening serial port %s\n",comstr);
	sprintf(comstr,"\\\\.\\%s",comStr);
	init();
	int count = SendMessage(hWndListBox,LB_GETCOUNT,0,lParam);
	for(int i=0;i<count;i++)
	{
		SendMessage(hWndListBox, LB_SETCURSEL, i, (LPARAM) 0);
		SendMessage(hWndListBox,LB_GETTEXT,i,(LPARAM)FileName);
				
				while(1)
				{
					printf("waiting....\n");
					printBox("waiting for link...\n");
					ti=getMicrotime();
					
					if(WaitCommEvent(hSerial,&eventMask,NULL))
					{
					ReadFile(hSerial,byte_in,1,&bytes_written,NULL);
					//if(byte_in==2)
					break;
					}
					else
					init();
				}
				
				Sleep(500);
				swap(FileName); 
	}
    fprintf(stderr, "%d bytes written\n", bytes_written);
	Sleep(2000);
    // Close serial port
    fprintf(stderr, "Closing serial port...");
    if (CloseHandle(hSerial) == 0)
    {
        fprintf(stderr, "Error\n");
        return 1;
    }
    fprintf(stderr, "OK\n");
	uploading = FALSE;
	MessageBeep(MB_ICONINFORMATION);
	MessageBoxExA(NULL,"Terminated","Upload",NULL,NULL);
	
}

void loadRoms()
{
	int count =0;
	char ** filelist=(char**)malloc(sizeof(char*)*50);
	if(ChooseProgram(FileName)==0)return;
	filelist[count]=&FileName[0];
	for(int i=0;i<1023;i++)
	{
	
		
		if(FileName[i]=='\0')
		{
			count++;			
			filelist[count]=&FileName[i+1];

			if(FileName[i+1]=='\0')
				break;	
		}
		
	}

		printf("%d\n",count);
	if(count>1)
	for(int i=1;i<count;i++)
	{
		char * path = filelist[0];
		char buffer[512];
		strcpy(buffer,path);
		strcat(buffer,"\\");
		strcat(buffer,filelist[i]);
		    int pos = (int)SendMessage(hWndListBox, LB_ADDSTRING, 0, (LPARAM) buffer);
			printf("%s %d\n",buffer,pos);
			SendMessage(hWndListBox, LB_SETITEMDATA, pos, (LPARAM) i);
	}
	else
	{
			int pos = (int)SendMessage(hWndListBox, LB_ADDSTRING, 0, (LPARAM) filelist[0]);
			printf("%s %d\n",filelist[0],pos);
			SendMessage(hWndListBox, LB_SETITEMDATA, pos, (LPARAM) 0);
	}
		SetFocus(hWndListBox);
		SendMessage(hWndListBox, LB_SETCURSEL, (WPARAM)0, (LPARAM) 0);
		DragInfo.dragging=FALSE;;
}

LRESULT CALLBACK ListBoxSubclassProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	if(uploading==FALSE)
	switch (uMsg)
    {
		case WM_KEYDOWN:
		//printf("%x\n",wParam);
		if(wParam==0x2e)
		{
				printf("mouse move\n");
			int count = SendMessage(hWndListBox,LB_GETCOUNT,0,lParam);
			if(count!=0)
			{
				int index = SendMessage(hWndListBox,LB_GETCURSEL,0,lParam);
				SendMessage(hWndListBox,LB_DELETESTRING,index,0);
			}
			break;	
		}

		case WM_LBUTTONDOWN:
		{
		
			int count = SendMessage(hWndListBox,LB_GETCOUNT,0,lParam);
			if(count!=0)
			{
				SetCapture(hwnd);
				int index = SendMessage(hWndListBox,LB_ITEMFROMPOINT,0,lParam);
				int index2 = SendMessage(hWndListBox,LB_GETANCHORINDEX,0,0);
				if(index!=-1 && DragInfo.dragging==FALSE)
				{
					DragInfo.dragging = TRUE;
					DragInfo.startIndex = index;
					DragInfo.draggedIndex = index;
					SendMessage(hWndListBox,LB_GETTEXT,index,(LPARAM)temp);
					SendMessage(hWndListBox,LB_DELETESTRING,index,0);
					DragInfo.item=temp;
				}
			}

		}
		break;
		case WM_MOUSEMOVE:
		{
			if(DragInfo.dragging)
			{
				int index = SendMessage(hWndListBox,LB_ITEMFROMPOINT,0, lParam);
			
				if(index != -1)
				{
					//SendMessage(hWndListBox,LB_DELETESTRING,DragInfo.startIndex,0);
					//SendMessage(hWndListBox,LB_INSERTSTRING,DragInfo.draggedIndex,(LPARAM)DragInfo.item);
					SendMessage(hWndListBox,LB_INSERTSTRING,index,(LPARAM)DragInfo.item);
					SendMessage(hWndListBox,LB_DELETESTRING,index,0);	
					DragInfo.draggedIndex = index;
				}
			}
		}
		break;
		case WM_LBUTTONUP:
		{
			printf("button up %d\n",DragInfo.draggedIndex);
			int count = SendMessage(hWndListBox,LB_GETCOUNT,0,lParam);
			if(count!=0)
			{
				if(DragInfo.dragging && DragInfo.startIndex != -1 && DragInfo.draggedIndex<count)
				{
					SendMessage(hWndListBox,LB_INSERTSTRING,DragInfo.draggedIndex,(LPARAM)DragInfo.item);
					ReleaseCapture();
					DragInfo.dragging = FALSE;
					DragInfo.startIndex = -1;
					DragInfo.item = NULL;
				}
				else
								{
					SendMessage(hWndListBox,LB_INSERTSTRING,DragInfo.startIndex,(LPARAM)DragInfo.item);
					ReleaseCapture();
					DragInfo.dragging = FALSE;
					DragInfo.startIndex = -1;
					DragInfo.item = NULL;
				}
			}
				
		}
		break;
	}
	return DefSubclassProc(hwnd, uMsg, wParam, lParam);
}
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{    
	
    switch (uMsg)
    {
    case WM_DESTROY:
        PostQuitMessage(0);
        return 0;
	case WM_KEYDOWN:
		//printf("%x\n",wParam);
	break;
	case WM_COMMAND:
        if (LOWORD(wParam) == BTN_BUTTON) {
            loadRoms(hwnd);
			break;
        }
		
		if (LOWORD(wParam) == BTN_BUTTON2) {
            SendMessage(hWndListBox, LB_RESETCONTENT, 0, 0);
			SetFocus(hWndListBox);
			break;
        }
        if (LOWORD(wParam) == BTN_BUTTON3) {
				SendMessage(hWndTextBox, LB_RESETCONTENT, 0, 0);
            if(uploading==FALSE)
			{
				thread = CreateThread(NULL,0,upload,lParam,0,&threadId);
			}
        }
        break;

	case WM_CREATE:
			DragInfo.dragging = FALSE;
			hWndListBox = CreateWindowEx (WS_EX_CLIENTEDGE,"listbox", NULL,
			 WS_VISIBLE | WS_CHILD | WS_BORDER |LBS_STANDARD | LBS_NOTIFY | LBS_WANTKEYBOARDINPUT,
			10, 10, 700, 400,
			hwnd, (HMENU)LST_LISTBOX,((LPCREATESTRUCT)lParam)->hInstance, NULL);
			SetWindowSubclass(hWndListBox,ListBoxSubclassProc,1,0);
		
            hWndTextBox = CreateWindowEx(WS_EX_CLIENTEDGE,"listbox", NULL,
                WS_VISIBLE | WS_CHILD | WS_BORDER | WS_VSCROLL ,
                10, 420, 700, 100,
                hwnd, (HMENU)TXT_TEXTBOX, GetModuleHandle(NULL), NULL);
			
			CreateWindow ("static", "com speed", WS_CHILD | WS_VISIBLE,
                720, 130,90, 20, hwnd, 0 , GetModuleHandle(NULL), NULL);
				
			hWndComboBox = CreateWindow ("combobox", NULL,
                WS_CHILD | WS_VISIBLE | CBS_DROPDOWNLIST,
                720, 150, 100, 90,
                hwnd, (HMENU)CMB_COMBOBOX, GetModuleHandle(NULL), NULL);
				SendMessage(hWndComboBox, CB_ADDSTRING, (WPARAM)0, (LPARAM)TEXT("9600"));
				SendMessage(hWndComboBox, CB_ADDSTRING, (WPARAM)0, (LPARAM)TEXT("19200"));
				SendMessage(hWndComboBox, CB_ADDSTRING, (WPARAM)0, (LPARAM)TEXT("38400"));
				SendMessage(hWndComboBox, CB_SETCURSEL, (WPARAM)0,(LPARAM)0);
				
			CreateWindow ("static", "com ports", WS_CHILD | WS_VISIBLE,
                720, 180,90, 20, hwnd, 0 , GetModuleHandle(NULL), NULL);
				
			hWndComboBox2 = CreateWindow ("combobox", NULL,
                WS_CHILD | WS_VISIBLE | CBS_DROPDOWNLIST,
                720, 200, 100, 90,
                hwnd, (HMENU)CMB_COMBOBOX2, GetModuleHandle(NULL), NULL);
			getComs();
			
            CreateWindow("button", "Load Roms",
                WS_CHILD | WS_VISIBLE | BS_DEFPUSHBUTTON,
                720, 10, 100, 30,
                hwnd, (HMENU)BTN_BUTTON, GetModuleHandle(NULL), NULL);
				
			CreateWindow("button", "Clear List",
                WS_CHILD | WS_VISIBLE | BS_DEFPUSHBUTTON,
                720, 50, 100, 30,
                hwnd, (HMENU)BTN_BUTTON2, GetModuleHandle(NULL), NULL);
				
			CreateWindow("button", "Upload Roms",
                WS_CHILD | WS_VISIBLE | BS_DEFPUSHBUTTON,
                720, 90, 100, 30,
                hwnd, (HMENU)BTN_BUTTON3, GetModuleHandle(NULL), NULL);
	break;
    case WM_PAINT:
        {
            PAINTSTRUCT ps;
            HDC hdc = BeginPaint(hwnd, &ps);

            // All painting occurs here, between BeginPaint and EndPaint.
				
            FillRect(hdc, &ps.rcPaint, (HBRUSH) (COLOR_WINDOW+1));

            EndPaint(hwnd, &ps);
        }
        return 0;

    }
    return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

// pick a program file
INT ChooseProgram(PCHAR FileName)
  { OPENFILENAME  ofn;        
    memset(&ofn,0,sizeof(ofn));
    ofn.lStructSize     = sizeof(ofn);
    ofn.hwndOwner       = NULL;
    ofn.hInstance       = 0;
    ofn.lpstrFilter = "rom image\0*.rom\0all\0*.*\0";
	ofn.nFilterIndex	= 1;	
    ofn.lpstrFile       = FileName;
    ofn.nMaxFile        = 1024;
    ofn.lpstrTitle      = "Please Select A File To Open\0";
    ofn.Flags           = OFN_ALLOWMULTISELECT | OFN_EXPLORER;
    if (!GetOpenFileName(&ofn))
      return(0);
   return 1; }
   
void printBox(char * str)
{
	SendMessage(hWndTextBox, LB_ADDSTRING, 0, (LPARAM) str);
	int count = SendMessage(hWndTextBox, LB_GETCOUNT, 0, 0);
	SendMessage(hWndTextBox, LB_SETCURSEL, count-1, 0);
	UpdateWindow(hWndTextBox);
}
unsigned short getcrc(char * buffer,int len)
{
	unsigned short crc=0;
	for (int i=0;i<len;i++)
		crc+=buffer[i];
	return crc;
}
long getMicrotime()
{
	struct timeval currentTime;
	gettimeofday(&currentTime,NULL);
	return currentTime.tv_sec*(int)1e6+currentTime.tv_usec;
}
int swap(char * filename)
{ 
	char bufferin[0x4000];
	char bufferout[0x4000];
	FILE *in=NULL;
	sprintf(verb,"%s\n\r", filename);
	printBox(verb);
	in=fopen(filename,"rb");
	fread(bufferin,0x4000,1,in);	
	fclose(in);
	fprintf(stderr, "Sending bytes...\n");
	printBox("Sending bytes...\n");
	unsigned short crc16=getcrc(bufferin,0x4000);
	sprintf(verb,"crc %04x\n",crc16);
	printBox(verb);
    if(!WriteFile(hSerial, bufferin, 0X4000, &bytes_written, NULL))
    {
        fprintf(stderr, "Error\n");
        CloseHandle(hSerial);
        return 1;
    }
	
}

void getComs()
{
	int ncoms=0;
	char comStr[255]="";
	for(int i=1;i<256;i++)
	{
		sprintf(comStr,"\\\\.\\com%d",i);
	   hSerial = CreateFile(
		comStr
		, GENERIC_READ|GENERIC_WRITE, 0, NULL,
		OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
    if (hSerial == INVALID_HANDLE_VALUE)
		{
				//printf("Error %s\n",comStr);
				CloseHandle(hSerial);
		}
    else 
	{
		sprintf(comStr,"com%d",i);
		SendMessage(hWndComboBox2, CB_ADDSTRING, (WPARAM)0, (LPARAM)comStr);
		CloseHandle(hSerial);
		ncoms++;
		printf("com%d OK\n",i);
	}	

	}
	if(ncoms>0)
		SendMessage(hWndComboBox2, CB_SETCURSEL, (WPARAM)0,(LPARAM)0);
}
int init()
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
				printf("9600\n");
			break;
			case 2:
				dcbSerialParams.BaudRate = CBR_19200;
				printf("19200\n");
			break;
			case 3:
				dcbSerialParams.BaudRate = CBR_38400;
				printf("38400\n");
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
    timeouts.ReadIntervalTimeout = 5;
    timeouts.ReadTotalTimeoutConstant = 5;
    if(SetCommTimeouts(hSerial, &timeouts) == 0)
    {
        fprintf(stderr, "Error setting timeouts\n");
        CloseHandle(hSerial);
        return 1;
    }
	*/
	SetCommMask(hSerial,EV_RXCHAR);

}
