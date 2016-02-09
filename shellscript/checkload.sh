#!/bin/bash
threshold=0.01
thresholdc=6
tmp_value=0

#loadcheck()
#{

for i in {1..6};
do
tmp_value=`cat /proc/loadavg | awk '{print $1}'`
echo "before loop lv = $tmp_value"
if (( $(echo "$tmp_value < $threshold"| bc -l) )) 
then
echo "in loop  lv =$tmp_value"
tmp_value=0
break
else  
sleep 2s
fi
done

if (( $(echo "$tmp_value > $threshold" | bc -l) ))
then
echo "in mail loop..wohoooo"
mail -s "a Load high on host `hostname`" viswanatha.reddy@capillarytech.com  < /dev/null
tmp_value=0
#loadcheck()
fi    
#}
 
