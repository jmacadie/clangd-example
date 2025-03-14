#include "module3.h"
#include <stdio.h>

void module3_second_function(void) { printf("Hello from Module3!\n"); }

void module3_function(void) { module3_second_function(); }
