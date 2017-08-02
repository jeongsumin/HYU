ALL_COMMONRULES += src_RPCUpgrade_HSCPAnalysis_test
src_RPCUpgrade_HSCPAnalysis_test_parent := RPCUpgrade/HSCPAnalysis
src_RPCUpgrade_HSCPAnalysis_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_HSCPAnalysis_test,src/RPCUpgrade/HSCPAnalysis/test,TEST))
