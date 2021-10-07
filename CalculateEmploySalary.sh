TOTAL_WORK_DAY=20;
PAY_PER_HOUR=20;
totalSalary=0;
for ((day=1;day<=TOTAL_WORK_DAY;day++ ))
do
	isPresent=$(( RANDOM%3 ));
	#echo $isPresent;

	case $isPresent in
		0)
			perDaySalary=0;
		;;

		1)
			perDaySalary=$(( $PAY_PER_HOUR * 8 ));
		;;

		2)
			perDaySalary=$(( $PAY_PER_HOUR * 4 ));
		;;
	esac;

	#echo $perDaySalary;
	totalSalary=$(( $totalSalary + $perDaySalary ));
done

echo "Employee has earned $totalSalary $ in $TOTAL_WORK_DAY day";
