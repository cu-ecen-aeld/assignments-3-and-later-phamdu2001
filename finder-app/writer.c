#include <stdio.h>
#include <syslog.h>
int main(int argc, char* argv[]){
	if(argc != 3) {
        syslog(LOG_ERR, "Usage: %s <filename> <string>", argv[0]);
		return 1;
	}
    char *filename = argv[1];
    char *str = argv[2];
    
	FILE *fp = fopen(filename, "a");
	if(!fp) {
		syslog(LOG_ERR,"Error: File creation failed!!");
		return 1;
	}

	syslog(LOG_DEBUG,"Writing %s to %s",str,filename);
	fprintf(fp,"%s", str);
	fclose(fp);

	return 0;
}

