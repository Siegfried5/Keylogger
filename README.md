# C++ Keylogger
This is a KeyLogger I leaned to write from Udemy

Keylogger is Coded In C++, Will Work On Window 7, 8, 8.1, And 10

If you wish to use this keylogger You must edit the following lines of codes: 16-18 to sendMail
also you must enable your email to use less secure apps in order for you to recive the emails

## Compiler Setting For CodeBlocks:
  * added a new flag with the following `Setting -> Compiler`
    * name: windowsAPI
    * Compiler flags: -mwindows
    * linker flags: -mwindows
  * Have CodeBlocks use C++ 11 standards `Setting -> Compiler`
    * `[ ]Have g++ follow the C++11 ISO C++  language standard [-std=c++11]` must be toggled on 

## Debuging:
After you add the comiler flags and get it to compiler and it does not send the email their are a few  
thing to check and do to get it to work.
* _**Make Sure the email account used can support unsecure apps**_  
* _**Wifi; I have notice that sometimes the wifi will not allow email to send**_  
* _**Sometimes the powershell script in sendmail.h "does not work" So replace it with the code in powershell.docx**_  


## Disclamer:
If you use this keylogger on a computer that does not belong to you or do not have permission to
you are responsible for the outcome. NOT ME. 
