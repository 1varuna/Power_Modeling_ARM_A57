echo > benchmarks
echo "binomialOptions"
echo "binomialOPtions">benchmarks
cd ./nvidia/binomialOptions
. ./run
cd ../..

echo > benchmarks
echo "BlackScholes"
echo "BlackScholes">benchmarks
cd ./nvidia/BlackScholes
. ./run
cd ../..


echo > benchmarks
echo "MonteCarloMultiGPU"
echo "MonteCarloMultiGPU">benchmarks
cd ./nvidia/MonteCarloMultiGPU
. ./run
cd ../..

echo > benchmarks
echo "particles"
echo "particles">benchmarks
cd ./nvidia/particles
. ./run
cd ../..

#echo > benchmarks
#echo "quasirandomGenerator"
#echo "quasirandomGenerator">benchmarks
#cd ./nvidia/quasirandomGenerator
#. ./run
#cd ../..

echo > benchmarks
echo "SobolQRNG"
echo "SobolQRNG">benchmarks
cd ./nvidia/SobolQRNG
. ./run
cd ../..


