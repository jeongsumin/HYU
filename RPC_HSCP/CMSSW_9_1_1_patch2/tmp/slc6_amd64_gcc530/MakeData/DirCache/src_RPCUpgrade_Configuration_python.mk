ifeq ($(strip $(PyRPCUpgradeConfiguration)),)
PyRPCUpgradeConfiguration := self/src/RPCUpgrade/Configuration/python
src_RPCUpgrade_Configuration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RPCUpgrade/Configuration/python)
PyRPCUpgradeConfiguration_files := $(patsubst src/RPCUpgrade/Configuration/python/%,%,$(wildcard $(foreach dir,src/RPCUpgrade/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRPCUpgradeConfiguration_LOC_USE := self cmssw 
PyRPCUpgradeConfiguration_PACKAGE := self/src/RPCUpgrade/Configuration/python
ALL_PRODS += PyRPCUpgradeConfiguration
PyRPCUpgradeConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRPCUpgradeConfiguration,src/RPCUpgrade/Configuration/python,src_RPCUpgrade_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRPCUpgradeConfiguration,src/RPCUpgrade/Configuration/python))
endif
ALL_COMMONRULES += src_RPCUpgrade_Configuration_python
src_RPCUpgrade_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_Configuration_python,src/RPCUpgrade/Configuration/python,PYTHON))
