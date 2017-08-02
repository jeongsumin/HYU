ifeq ($(strip $(PyRPCUpgradeHSCPAnalysis)),)
PyRPCUpgradeHSCPAnalysis := self/src/RPCUpgrade/HSCPAnalysis/python
src_RPCUpgrade_HSCPAnalysis_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RPCUpgrade/HSCPAnalysis/python)
PyRPCUpgradeHSCPAnalysis_files := $(patsubst src/RPCUpgrade/HSCPAnalysis/python/%,%,$(wildcard $(foreach dir,src/RPCUpgrade/HSCPAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRPCUpgradeHSCPAnalysis_LOC_USE := self cmssw 
PyRPCUpgradeHSCPAnalysis_PACKAGE := self/src/RPCUpgrade/HSCPAnalysis/python
ALL_PRODS += PyRPCUpgradeHSCPAnalysis
PyRPCUpgradeHSCPAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRPCUpgradeHSCPAnalysis,src/RPCUpgrade/HSCPAnalysis/python,src_RPCUpgrade_HSCPAnalysis_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRPCUpgradeHSCPAnalysis,src/RPCUpgrade/HSCPAnalysis/python))
endif
ALL_COMMONRULES += src_RPCUpgrade_HSCPAnalysis_python
src_RPCUpgrade_HSCPAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_HSCPAnalysis_python,src/RPCUpgrade/HSCPAnalysis/python,PYTHON))
