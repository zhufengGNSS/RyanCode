#!/bin/bash
#################################################
#      	Pyxis Test Core 3			#
# Tests the current build of Pyxis for the	#
# static test and gives results as plots from 	#
# matlab and other info regarding execution of 	#
# the file.					#
#						#
# Input: Raw Intermediate Frequency (IF) files  #
#	that are static real with apt and rnx. 	#
#						#
# Output:  MATLAB plots, 			#
#          DetermStat.txt			#
#################################################

## Execute Pyxis with Valgrind
cd ../output/StaticSim
#valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --num-callers=20 --track-fds=yes --log-file="valwar.txt" ./pyxis
./pyxis

## Set input, execute matlab code and save output (Make sure that the path is saved, even at restart).
cd ../../MATLAB
sed -i "/fileStr =/c\fileStr = 'timingrnxBinaries_0_0.bin';" AnalysisRNXScript3.m
sed -i "/parentpath =/c\parentpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/';" AnalysisRNXScript3.m
sed -i "/plotpath =/c\plotpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/Plots\/';" AnalysisRNXScript3.m
sed -i "/truthStr = /c\truthStr = {};" AnalysisRNXScript3.m

# Run matlab
matlab -nodesktop -r "run /home/dma/Documents/Test/MATLAB/AnalysisRNXScript3.m; exit;"

sed -i "/fileStr =/c\fileStr = 'timingrnxBinaries_1859_518400.bin';" AnalysisRNXScript3.m
sed -i "/parentpath =/c\parentpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/';" AnalysisRNXScript3.m
sed -i "/plotpath =/c\plotpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/Plots\/';" AnalysisRNXScript3.m
sed -i "/truthStr = /c\truthStr = {};" AnalysisRNXScript3.m

# Run matlab
matlab -nodesktop -r "run /home/dma/Documents/Test/MATLAB/AnalysisRNXScript3.m; exit;"

sed -i "/fileStr =/c\fileStr = 'timingrnxBinaries_1860_0.bin';" AnalysisRNXScript3.m
sed -i "/parentpath =/c\parentpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/';" AnalysisRNXScript3.m
sed -i "/plotpath =/c\plotpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/Plots\/';" AnalysisRNXScript3.m
sed -i "/truthStr = /c\truthStr = {};" AnalysisRNXScript3.m

# Run matlab
matlab -nodesktop -r "run /home/dma/Documents/Test/MATLAB/AnalysisRNXScript3.m; exit;"
sed -i "/fileStr =/c\fileStr = 'timingrnxBinaries_1860_86400.bin';" AnalysisRNXScript3.m
sed -i "/parentpath =/c\parentpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/';" AnalysisRNXScript3.m
sed -i "/plotpath =/c\plotpath = '\/home\/dma\/Documents\/Test\/output\/Static1Sim\/Plots\/';" AnalysisRNXScript3.m
sed -i "/truthStr = /c\truthStr = {};" AnalysisRNXScript3.m

# Run matlab
matlab -nodesktop -r "run /home/dma/Documents/Test/MATLAB/AnalysisRNXScript3.m; exit;"