# POWER MODELLING of Quad-core ARM Cortex A57 CPU on NVIDIA Jetson TX1

# Step 1: Data Collection (Requires NVIDIA Jetson TX1)
1* Go to Data_Collection/
2* Run make -f Makefile_cpu cpu_pow to compile the files.
3* Run sudo ./pmon_cpu to start the benchmark run and collect data
4* Raw data file in the format .dat will be dumped.

# Step 2: Post Processing (Offline)
1* Transfer the raw data file obtained in step 1 onto another machine which can
  run python3 and bash scripts.
2* Go to Post_Processing/
3* Run the step which splits the .dat file into individual BM+Freq logs using
  splitter_freq.py .
4* Then use the global_merger_nvidia.py file to merge the files obtained in
  previous step into one global log.
5* To complete steps 3 & 4, there are separate targets within the
Makefile_split_and_merge_new.
For ex: make -f Makefile_split_and_merge_new dir_0_rodinia will create a separate
directory called run_0_rodinia after running steps 3 & 4.
6* Run step 5 for all the required BM logs.
7* Concatenate merged logs obtained for training set (Rodinia) and test
set(Nvidia) using one of the targets in the Makefile_split_and_merge_new.
For example:  make -f Makefile_split_and_merge_new create_run_0_dir
8* The concatenated file is fed to the script in the modeling and validation
step.

# Step 3: Power Modeling and Validation
1* Go to Modeling_and_Validation
2* Ensure the following files are present in the directory:
	# build_model.m
	# load_build_model.m
	# octave_makemodel.sh (Make it executable using chmod u+x
octave_makemodel.sh).
	# benchmark_split.txt
3* Generate and Validate the power model by launching the command: make
make_cpu_model
4* The model details can be output into an output log using the -s option.
5* Use ./octave_makemodel.sh -h to open the help menu.
