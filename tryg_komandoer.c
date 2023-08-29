#include <stdio.h>

int main() {
    int current_char;

    while ((current_char = getchar()) != EOF)
	{
		switch(current_char)
		{
			case ' ':
				printf("xdotool key KP_Space\n"); 
				break;
			case '\n':
				printf("xdotool key KP_Enter\n"); 
				break;
			case '\t':
				printf("xdotool key tab\n"); 
				break;
			default:
				printf("xdotool key %c\n",current_char); 
		}
	}
    return 0;
}

