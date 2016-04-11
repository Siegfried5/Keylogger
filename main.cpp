#include <iostream>
#include <windows.h>
#include "KeyConstants.h"
#include "Helper.h"
#include "Base64.h"

using namespace std;

int main()
{
    MSG Msg;

    while (GetMessage (&Msg, NULL, 0,0))
    {
        TranslateMessage(&Msg);
        DispatchMessage(&Msg);
    }
}
