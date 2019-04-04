source $PRECISION100_FOLDER/conf/.sql-loader.env.sh
SPOOL_FILE=$PRECISION100_WORK_FOLDER/spool/pr_extract_volume.csv
mkdir -p $PRECISION100_WORK_FOLDER/spool

function make_line() {
  local file=$1
  local file_count=$(wc -l $SQLLDR_INPUT/$file.dat | cut -d ' ' -f 1)

  echo "$file,$file_count"
}

echo $(make_line "GFPF") >  $SPOOL_FILE

echo $(make_line "SCPF") >>  $SPOOL_FILE

echo $(make_line "C8PF") >>  $SPOOL_FILE

echo $(make_line "S5PF") >>  $SPOOL_FILE

echo $(make_line "C5PF") >>  $SPOOL_FILE

echo $(make_line "SX20LF") >>  $SPOOL_FILE

echo $(make_line "SVPF") >>  $SPOOL_FILE

echo $(make_line "BGPF") >>  $SPOOL_FILE

echo $(make_line "RIPF") >>  $SPOOL_FILE

echo $(make_line "RJPF") >>  $SPOOL_FILE
