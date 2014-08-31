#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char **argv)
{
#define BUF 4096

    unsigned char buf[BUF];
    FILE *fin, *fout;
    int i, ff, size_l, len, len_all;
    unsigned int* tmp;
    unsigned char cmp[sizeof(unsigned int)] = {0};
    size_l = sizeof(unsigned int);

    for(i = 0; i < size_l; i++)
    {
        cmp[i] = 0xFF;
    }

    if(argc != 3)
    {
        fprintf(stderr, "%s [dev] [outfile]\n", argv[0]);
        return 1;
    }

    fin = fopen(argv[1], "rb");
    if(NULL == fin)
    {
        fprintf(stderr, "error open %s\n", argv[1]);
        return;
    }

    ff = 0;
    len = fread(buf, 1, BUF, fin);
    while(len > 0)
    {
        len_all += len;
        for(i = 0; i < len; i++)
        {
            if(buf[i] == 0xff)
            {
                ff++;
            }
            else
            {
                ff = 0;
            }
        }

        len = fread(buf, 1, BUF, fin);
    }
    fclose(fin);

    len_all -= ff;
    fin = fopen(argv[1], "rb");
    fout = fopen(argv[2], "wb");
    len = fread(buf, 1, BUF, fin);
    while(len > 0)
    {
        if((len_all-len) <= 0)
        {
            fwrite(buf, 1, len_all, fout);
            break;
        }
        else
        {
            fwrite(buf, 1, len, fout);
            len_all -= len;
        }

        len = fread(buf, 1, BUF, fin);
    }
    fclose(fin);
    fclose(fout);
    
    return 1;
}

