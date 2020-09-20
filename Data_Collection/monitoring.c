#include "monitoring.h"




struct a57_sample *head;

//char log_file_name[1000];
/*void file_power_profile_create (char *file_name) {
	time_t t;
	time(&t);
	strcat(file_name, ctime(&t));
	int charIndex = 0;
	while(file_name[charIndex] != '\0') {
		if (file_name[charIndex] == ' ' || file_name[charIndex] == ':')
			file_name[charIndex]='_';
		charIndex++;
	}
	file_name[charIndex-1] = '\0';

	strcat(file_name, "_Jetson_TX1");



	strcat(file_name, ".txt");


	FILE *fp=fopen(file_name, "a");
	fclose(fp);

}

*/

void power_monitoring_prologue () {

	//struct jetsontx1_sample *sample = head;
	head = (struct a57_sample *)a57_read_sample_pthread();

	a57_read_sample_start();
}



void power_monitoring_stop() {
	
	a57_read_sample_stop();
}
void power_monitoring_epilogue() {
       // printf("Doing stop");
	power_monitoring_stop();
	//printf("Done stop");
	//jetsontx1_save_average_pthread(head, log_file_name);
	a57_clear_sample_pthread(head);
}


