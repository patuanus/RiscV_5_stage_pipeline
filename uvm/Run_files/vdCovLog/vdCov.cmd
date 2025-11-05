gui_exclusion -set_force true
gui_assert_mode -mode flat
gui_class_mode -mode hier
gui_excl_mgr_flat_list -on  0
gui_covdetail_select -id  CovDetail.1   -name   Line
verdiWindowWorkMode -win $_vdCoverage_1 -coverageAnalysis
gui_open_cov  -hier simv.vdb -testdir {} -test {} -merge MergedTest -db_max_tests 10 -fsm transition
gui_list_sort -id  CoverageTable.1   -list {covtblInstancesList} -descending  {Name}
gui_column_config -id  CoverageTable.1  -list  covtblInstancesList  -show 
gui_column_config -id  CoverageTable.1  -list  covtblInstancesList
vdCovExit -noprompt
