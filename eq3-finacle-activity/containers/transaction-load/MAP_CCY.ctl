-- File Name		: MAP_CCY.ctl

-- File Created for	: Control file for upload the Branch details Mster DaTa

-- Created By		: Ashok Kumar.S

-- Client		: ENBD

-- Created On		: 01-11-2011
-------------------------------------------------------------------
load data
truncate into table MAP_CCY
fields terminated by x'09'
TRAILING NULLCOLS
(
    LEG_CCY,
    LEG_CCY_NAME,
    FIN_CCY,
    CUR_DIGIT
  )

