ifeq ($(strip $(UpgradeRPCHSCPAnalysis_plugins)),)
UpgradeRPCHSCPAnalysis_plugins := self/src/RPCUpgrade/HSCPAnalysis/plugins
PLUGINS:=yes
UpgradeRPCHSCPAnalysis_plugins_files := $(patsubst src/RPCUpgrade/HSCPAnalysis/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RPCUpgrade/HSCPAnalysis/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RPCUpgrade/HSCPAnalysis/plugins/$(file). Please fix src/RPCUpgrade/HSCPAnalysis/plugins/BuildFile.))))
UpgradeRPCHSCPAnalysis_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RPCUpgrade/HSCPAnalysis/plugins/BuildFile
UpgradeRPCHSCPAnalysis_plugins_LOC_USE := self cmssw CommonTools/UtilAlgos DataFormats/RPCRecHit DataFormats/RPCDigi DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/GEMRecHit DataFormats/MuonReco Geometry/RPCGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/GEMGeometry
UpgradeRPCHSCPAnalysis_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UpgradeRPCHSCPAnalysis_plugins,UpgradeRPCHSCPAnalysis_plugins,$(SCRAMSTORENAME_LIB),src/RPCUpgrade/HSCPAnalysis/plugins))
UpgradeRPCHSCPAnalysis_plugins_PACKAGE := self/src/RPCUpgrade/HSCPAnalysis/plugins
ALL_PRODS += UpgradeRPCHSCPAnalysis_plugins
RPCUpgrade/HSCPAnalysis_forbigobj+=UpgradeRPCHSCPAnalysis_plugins
UpgradeRPCHSCPAnalysis_plugins_INIT_FUNC        += $$(eval $$(call Library,UpgradeRPCHSCPAnalysis_plugins,src/RPCUpgrade/HSCPAnalysis/plugins,src_RPCUpgrade_HSCPAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
UpgradeRPCHSCPAnalysis_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UpgradeRPCHSCPAnalysis_plugins,src/RPCUpgrade/HSCPAnalysis/plugins))
endif
ALL_COMMONRULES += src_RPCUpgrade_HSCPAnalysis_plugins
src_RPCUpgrade_HSCPAnalysis_plugins_parent := RPCUpgrade/HSCPAnalysis
src_RPCUpgrade_HSCPAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_HSCPAnalysis_plugins,src/RPCUpgrade/HSCPAnalysis/plugins,PLUGINS))
