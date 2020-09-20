/*
File: cpu_pow_mon.c
Description:	This file is the top file to control the frequencies to be set
		and launches the scripts to start the benchmark run
*/

#include <stdio.h>
#include <stdlib.h>
#include "utilities.h"
#include "monitoring.h"
#include "jtx1inst.h"
#include "unistd.h"

int main(void) {

	printf("\n\t\t CPU POW MON:: Starting power monitor...\n");

	int freqs[17] = {102000, 204000, 307200, 403200, 518400, 614400, 710400, 825600, 921600, 1036800, 1132800, 1224000, 1326000, 1428000, 1555500, 1632000, 1734000};	//CPU frequency in kHz

	char cmdbuf[256];

	snprintf(cmdbuf,sizeof(cmdbuf),"./cpu_clocks_cool.sh --set 102000"); 
	system(cmdbuf);
	usleep(100000000); //wait for some time to setttle temp	

	printf("\tStarting Monitoring prologue...\n");
	power_monitoring_prologue ();
	printf("\tMonitoring prologue Done...\n");

	//for(int cfreq=0;cfreq<3;cfreq++)	// 3 frequencies in all : for temporary trials only
	for(int cfreq=0;cfreq<17;cfreq++)	// 17 frequencies in all : ALL trials
	{
		printf("\t cpu_pow_mon.c::main() : Setting CPU frequency (kHz) to %d\n",freqs[cfreq]);

		snprintf(cmdbuf,sizeof(cmdbuf),"./cpu_clocks.sh --set %d",freqs[cfreq]);
		system(cmdbuf);
		
		// Launch Test set (NVIDIA) benchmarks
		/*
		printf("\tLaunching NVIDIA BM...\n");
		system("./nvidia/run3.sh");
		printf("\tFinished running NVIDIA BM...\n");
		*/

		// Launch Train set (Rodinia) benchmarks
		/*
		printf("\tLaunching Rodinia BM...\n");
		system("./rodinia/run.sh");
		printf("\tFinished Rodinia BM...\n");
		*/

		
		printf("\tLaunching Rodinia BM...\n");
		system("./rodinia/run_edited.sh");		// Launches only 1 BM - For trial
		printf("\tFinished Rodinia BM...\n");

	}

	printf("\tStarting Monitoring epilogue...\n");
	power_monitoring_epilogue();
	printf("\tMonitoring epilogue Done...\n");


	printf("\t Finishing power monitor...\n");

	printf("\tRead CPU freqs...\n");
	system("./cpu_clocks.sh --read");

	return 0;	
}
