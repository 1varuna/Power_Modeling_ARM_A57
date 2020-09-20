echo > benchmarks
echo "stream_cluster"
echo "stream_cluster">benchmarks
cd ./rodinia/streamcluster
. ./run
cd ../..

echo "particle_filter"
echo "particle_filter">benchmarks
cd ./rodinia/particlefilter
. ./run
. ./run
. ./run
. ./run
. ./run
cd ../..

echo "mmumergpu"
echo "mmumergpu">benchmarks
cd ./rodinia/mummergpu
. ./run
cd ../..


echo "lud">benchmarks
cd ./rodinia/lud
. ./run
cd ../..

echo "leukocyte">benchmarks
cd ./rodinia/leukocyte
. ./run
cd ../..

echo "lavaMD">benchmarks
cd ./rodinia/lavaMD
. ./run
cd ../..

echo "backprop">benchmarks
cd ./rodinia/backprop
. ./run
cd ../..

echo "bfs">benchmarks
cd ./rodinia/bfs
. ./run
cd ../..

echo "b+tree">benchmarks
cd ./rodinia/b+tree
. ./run
cd ../..

echo "cfd">benchmarks
cd ./rodinia/cfd
. ./run
cd ../..

echo "dwt2d">benchmarks
cd ./rodinia/dwt2d
. ./run
cd ../..

echo "gaussian">benchmarks
cd rodinia/gaussian
. ./run
cd ../..

echo "heartwall">benchmarks
cd rodinia/heartwall
. ./run
cd ../..

echo "hotspot3d">benchmarks
cd rodinia/hotspot3D
. ./run
cd ../..

echo "hotspot">benchmarks
cd rodinia/hotspot
. ./run
cd ../..

echo "hybridsort">benchmarks
cd rodinia/hybridsort
. ./run
cd ../..

echo "kmeans">benchmarks
cd rodinia/kmeans
. ./run
cd ../..

echo "myocyte">benchmarks
cd rodinia/myocyte
. ./run
cd ../..

echo "nn">benchmarks
cd rodinia/nn
. ./run
cd ../..

echo "nw">benchmarks
cd rodinia/nw
. ./run
cd ../..

echo "pathfinder">benchmarks
cd rodinia/pathfinder
. ./run
cd ../..

echo "srad_v1">benchmarks
cd rodinia/srad
cd srad_v1
. ./run
cd ../../..

echo "srad_v2">benchmarks
cd rodinia/srad
cd srad_v2
. ./run
cd ../../..


exit 0



