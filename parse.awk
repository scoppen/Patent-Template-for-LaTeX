#!/bin/awk -f
BEGIN {
  FS = ":" }

/-- SECTION/ {
  gsub(/^ */,"",$2)
  a=$2;
  gsub(/^ */,"",$3)
  file=$3;
}

!/-- SECTION/ {
  if ($a)
    print > file
}

/-- SECTION/ {
  print file
  a=0;
}

