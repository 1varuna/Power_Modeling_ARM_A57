echo > benchmarks
echo "convolutionTexture"
echo "convolutionTexture">benchmarks
cd ./nvidia/convolutionTexture
. ./run
cd ../..

echo > benchmarks
echo "FDTD3d"
echo "FDTD3d">benchmarks
cd ./nvidia/FDTD3d
. ./run
cd ../..


echo > benchmarks
echo "nbody"
echo "nbody">benchmarks
cd ./nvidia/nbody
. ./run
cd ../..

echo > benchmarks
echo "radixSortThrust"
echo "radixSortThrust">benchmarks
cd ./nvidia/radixSortThrust
. ./run
cd ../..

#echo > benchmarks
#echo "quasirandomGenerator"
#echo "quasirandomGenerator">benchmarks
#cd ./nvidia/quasirandomGenerator
#. ./run
#cd ../..

echo > benchmarks
echo "transpose"
echo "transpose">benchmarks
cd ./nvidia/transpose
. ./run
cd ../..


