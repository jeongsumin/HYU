ALL_COMMONRULES += src_RPCUpgrade_Configuration_test
src_RPCUpgrade_Configuration_test_parent := RPCUpgrade/Configuration
src_RPCUpgrade_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_Configuration_test,src/RPCUpgrade/Configuration/test,TEST))
