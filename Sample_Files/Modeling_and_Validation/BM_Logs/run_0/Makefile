# Makefile use to run steps to create the power model

make_rodinia_model:
	./octave_makemodel.sh -r power_measurement_merged_global.txt -b benchmark_split.txt -f 102,204,307,403,518,614,710,825,921,1036,1132,1224,1326,1428,1555,1632,1734 -p 7 -m 1 -l 8,9,10,11,12,13 -n 3 -c 1 -o 2 -s model_0.txt

# Options mentioned with the makemodel script
# r - merged log
# b - file with benchmark list
#
#
make_nvidia_model:
	./octave_makemodel.sh -r power_measurement_merged_global.txt -b benchmark_13pc_nvidia2.txt -f 76,153,230,307,384,460,537,614,691,768,844,921,998 -p 7 -m 1 -l 8,9,10,11,12,13,14,15,16,17,18,19,20 -n 4 -c 1 -o 2
