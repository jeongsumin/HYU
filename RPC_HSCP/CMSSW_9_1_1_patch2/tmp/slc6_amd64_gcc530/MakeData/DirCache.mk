ALL_SUBSYSTEMS+=Configuration
subdirs_src_Configuration = src_Configuration_Generator src_Configuration_Configuration
ALL_PACKAGES += Configuration/Configuration
subdirs_src_Configuration_Configuration := 
ALL_PACKAGES += Configuration/Generator
subdirs_src_Configuration_Generator := src_Configuration_Generator_python src_Configuration_Generator_test
ifeq ($(strip $(PyConfigurationGenerator)),)
PyConfigurationGenerator := self/src/Configuration/Generator/python
src_Configuration_Generator_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/Generator/python)
PyConfigurationGenerator_files := $(patsubst src/Configuration/Generator/python/%,%,$(wildcard $(foreach dir,src/Configuration/Generator/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationGenerator_LOC_USE := self cmssw 
PyConfigurationGenerator_PACKAGE := self/src/Configuration/Generator/python
ALL_PRODS += PyConfigurationGenerator
PyConfigurationGenerator_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationGenerator,src/Configuration/Generator/python,src_Configuration_Generator_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationGenerator,src/Configuration/Generator/python))
endif
ALL_COMMONRULES += src_Configuration_Generator_python
src_Configuration_Generator_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Generator_python,src/Configuration/Generator/python,PYTHON))
ALL_COMMONRULES += src_Configuration_Generator_test
src_Configuration_Generator_test_parent := Configuration/Generator
src_Configuration_Generator_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Generator_test,src/Configuration/Generator/test,TEST))
ALL_SUBSYSTEMS+=RPCUpgrade
subdirs_src_RPCUpgrade = src_RPCUpgrade_MuonPerformance src_RPCUpgrade_Configuration src_RPCUpgrade_HSCPAnalysis
ALL_PACKAGES += RPCUpgrade/Configuration
subdirs_src_RPCUpgrade_Configuration := src_RPCUpgrade_Configuration_test src_RPCUpgrade_Configuration_python
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
ALL_COMMONRULES += src_RPCUpgrade_Configuration_test
src_RPCUpgrade_Configuration_test_parent := RPCUpgrade/Configuration
src_RPCUpgrade_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_Configuration_test,src/RPCUpgrade/Configuration/test,TEST))
ALL_PACKAGES += RPCUpgrade/HSCPAnalysis
subdirs_src_RPCUpgrade_HSCPAnalysis := src_RPCUpgrade_HSCPAnalysis_python src_RPCUpgrade_HSCPAnalysis_plugins src_RPCUpgrade_HSCPAnalysis_test
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
ALL_COMMONRULES += src_RPCUpgrade_HSCPAnalysis_test
src_RPCUpgrade_HSCPAnalysis_test_parent := RPCUpgrade/HSCPAnalysis
src_RPCUpgrade_HSCPAnalysis_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_HSCPAnalysis_test,src/RPCUpgrade/HSCPAnalysis/test,TEST))
ALL_PACKAGES += RPCUpgrade/MuonPerformance
subdirs_src_RPCUpgrade_MuonPerformance := src_RPCUpgrade_MuonPerformance_plugins src_RPCUpgrade_MuonPerformance_test
ALL_COMMONRULES += src_RPCUpgrade_MuonPerformance_test
src_RPCUpgrade_MuonPerformance_test_parent := RPCUpgrade/MuonPerformance
src_RPCUpgrade_MuonPerformance_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_MuonPerformance_test,src/RPCUpgrade/MuonPerformance/test,TEST))
ALL_SUBSYSTEMS+=SimG4Core
subdirs_src_SimG4Core = src_SimG4Core_CustomPhysics
ALL_PACKAGES += SimG4Core/CustomPhysics
subdirs_src_SimG4Core_CustomPhysics := src_SimG4Core_CustomPhysics_interface src_SimG4Core_CustomPhysics_plugins src_SimG4Core_CustomPhysics_python src_SimG4Core_CustomPhysics_src src_SimG4Core_CustomPhysics_test
ifeq ($(strip $(PySimG4CoreCustomPhysics)),)
PySimG4CoreCustomPhysics := self/src/SimG4Core/CustomPhysics/python
src_SimG4Core_CustomPhysics_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SimG4Core/CustomPhysics/python)
PySimG4CoreCustomPhysics_files := $(patsubst src/SimG4Core/CustomPhysics/python/%,%,$(wildcard $(foreach dir,src/SimG4Core/CustomPhysics/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySimG4CoreCustomPhysics_LOC_USE := self cmssw 
PySimG4CoreCustomPhysics_PACKAGE := self/src/SimG4Core/CustomPhysics/python
ALL_PRODS += PySimG4CoreCustomPhysics
PySimG4CoreCustomPhysics_INIT_FUNC        += $$(eval $$(call PythonProduct,PySimG4CoreCustomPhysics,src/SimG4Core/CustomPhysics/python,src_SimG4Core_CustomPhysics_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PySimG4CoreCustomPhysics,src/SimG4Core/CustomPhysics/python))
endif
ALL_COMMONRULES += src_SimG4Core_CustomPhysics_python
src_SimG4Core_CustomPhysics_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4Core_CustomPhysics_python,src/SimG4Core/CustomPhysics/python,PYTHON))
ALL_COMMONRULES += src_SimG4Core_CustomPhysics_test
src_SimG4Core_CustomPhysics_test_parent := SimG4Core/CustomPhysics
src_SimG4Core_CustomPhysics_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4Core_CustomPhysics_test,src/SimG4Core/CustomPhysics/test,TEST))
