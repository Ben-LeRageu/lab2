#include <stdio.h>
#include <stdlib.h>
void main()
{
    int iSystem;
    
    iSystem = system("./I2CTestCapteur.sh");
    iSystem = system("./GetIDCapteur.sh");
}
