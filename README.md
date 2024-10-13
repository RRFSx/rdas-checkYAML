# rdas-checkYAML

Make sure you are under `$RDASApp/ush` and the EVA Python Environment is loaded
```
cd $RDASApp/ush
source load_eva.sh
```
Then
```
git clone git@github.com:RRFSx/rdas-checkYAML
cp rdas-checkYAML/* .
./checkYAML.sh ../rrfs-test
```
Example to check further on errors: 
```
./ycheck ../rrfs-test/IODA/yaml/prepbufr_gpsipw.yaml
```
