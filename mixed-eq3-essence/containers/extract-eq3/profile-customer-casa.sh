SPOOL_FILE=$PRECISION100_LOCAL_REPO_FOLDER/spool/pr_extract_volume.csv
mkdir -p $(dirname $SPOOL_FILE)

function make_line() {
  local file=$1
  local file_count=$(wc -l $SQLLDR_INPUT/$file | cut -d ' ' -f 1)

  echo "$file,$file_count"
}

echo "          Extracting table GFPF"
cp $CONTAINER_FOLDER/$CONTAINER/GFPF.dat $SQLLDR_INPUT
echo $(make_line "GFPF") >  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table SCPF"
cp $CONTAINER_FOLDER/$CONTAINER/SCPF.dat $SQLLDR_INPUT
echo $(make_line "SCPF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table C8PF"
cp $CONTAINER_FOLDER/$CONTAINER/C8PF.dat $SQLLDR_INPUT
echo $(make_line "C8PF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table S5PF"
cp $CONTAINER_FOLDER/$CONTAINER/S5PF.dat $SQLLDR_INPUT
echo $(make_line "S5PF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table C5PF"
cp $CONTAINER_FOLDER/$CONTAINER/C5PF.dat $SQLLDR_INPUT
echo $(make_line "C5PF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table SX20LF"
cp $CONTAINER_FOLDER/$CONTAINER/SX20LF.dat $SQLLDR_INPUT
echo $(make_line "SX20LF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table SVPF"
cp $CONTAINER_FOLDER/$CONTAINER/SVPF.dat $SQLLDR_INPUT
echo $(make_line "SVPF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table BGPF"
cp $CONTAINER_FOLDER/$CONTAINER/BGPF.dat $SQLLDR_INPUT
echo $(make_line "BGPF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table RIPF"
cp $CONTAINER_FOLDER/$CONTAINER/RIPF.dat $SQLLDR_INPUT
echo $(make_line "RIPF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;

echo "          Extracting table RJPF"
cp $CONTAINER_FOLDER/$CONTAINER/RJPF.dat $SQLLDR_INPUT
echo $(make_line "RJPF") >>  $SPOOL_FILE
sleep $SIMULATION_SLEEP;
