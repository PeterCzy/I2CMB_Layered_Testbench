add testbrowser ./*.ucdb
vcover merge -stats=none -strip 0 -totals sim_and_testplan_merged.ucdb ./*.ucdb 
coverage open ./sim_and_testplan_merged.ucdb
vcover report -detail -html -output covhtmlreport -assert -directive -cvg -code bcefst -threshL 50 -threshH 90 ./sim_and_testplan_merged.ucdb
