
# solardataget.sh

mpp-solar -p /dev/hidraw0 -P PI17INFINI -c DAT$(date '+%y%m%d%H%M%S')

sleep 5 && mpp-solar -p /dev/hidraw0 -P PI17INFINI -c ET -o mqtt -q localhost --mqttuser Test
sleep 5 && mpp-solar -p /dev/hidraw0 -P PI17INFINI -c GS -o mqtt -q localhost --mqttuser Test
sleep 5 && mpp-solar -p /dev/hidraw0 -P PI17INFINI -c ID -o mqtt -q localhost --mqttuser Test
sleep 5 && mpp-solar -p /dev/hidraw0 -P PI17INFINI -c PS -o mqtt -q localhost --mqttuser Test
sleep 5 && mpp-solar -p /dev/hidraw0 -P PI17INFINI -c ED$(date '+%Y%m%d') -o mqtt -q localhost --mqttuser Test
sleep 5 && mpp-solar -p /dev/hidraw0 -P PI17INFINI -c EM$(date '+%Y%m') -o mqtt -q localhost --mqttuser Test
sleep 5 && mpp-solar -p /dev/hidraw0 -P PI17INFINI -c EY$(date '+%Y') -o mqtt -q localhost --mqttuser Test