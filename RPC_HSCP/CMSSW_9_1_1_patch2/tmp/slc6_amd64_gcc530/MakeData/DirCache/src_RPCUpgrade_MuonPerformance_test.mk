ALL_COMMONRULES += src_RPCUpgrade_MuonPerformance_test
src_RPCUpgrade_MuonPerformance_test_parent := RPCUpgrade/MuonPerformance
src_RPCUpgrade_MuonPerformance_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_MuonPerformance_test,src/RPCUpgrade/MuonPerformance/test,TEST))
