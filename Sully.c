#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
int i = 5;
#define F(x, y) int main(int argc, char **argv){if (x <= 0)exit(0); if(argc == 1 && argv[0])x=x+1; char s2[1000]; char cmd[1000]; char *s; s = (char *)malloc(sizeof(char)*9); s[0] = 'S'; s[1] = 'u'; s[2] = 'l'; s[3] = 'l'; s[4] = 'y'; s[5] = '_'; s[6] = i - 1 + '0'; s[7] = '.'; s[8] = 'c'; FILE *f; f = fopen(s, "w"); fprintf(f, y, x - 1, #y); fclose(f); strcpy(s2, s); s2[7] = '\0'; sprintf(cmd, "gcc -Werror -Wall -Wextra -o %s %s; ./%s 1", s2, s, s2); system(cmd);}
F(i, "#include <stdio.h>\n#include <stdlib.h>\n#include <strings.h>\nint i = %d;\n#define F(x, y) int main(int argc, char **argv){if (x <= 0)exit(0); if(argc == 1 && argv[0])x=x+1; char s2[1000]; char cmd[1000]; char *s; s = (char *)malloc(sizeof(char)*9); s[0] = \'S\'; s[1] = \'u\'; s[2] = \'l\'; s[3] = \'l\'; s[4] = \'y\'; s[5] = \'_\'; s[6] = i - 1 + \'0\'; s[7] = \'.\'; s[8] = \'c\'; FILE *f; f = fopen(s, \"w\"); fprintf(f, y, x - 1, #y); fclose(f); strcpy(s2, s); s2[7] = \'\\0\'; sprintf(cmd, \"gcc -Werror -Wall -Wextra -o %%s %%s; ./%%s 1\", s2, s, s2); system(cmd);}\nF(i, %s)\n")
