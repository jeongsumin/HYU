ifeq ($(strip $(UpgradeRPCMuonPerformance_plugins)),)
UpgradeRPCMuonPerformance_plugins := self/src/RPCUpgrade/MuonPerformance/plugins
PLUGINS:=yes
UpgradeRPCMuonPerformance_plugins_files := $(patsubst src/RPCUpgrade/MuonPerformance/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RPCUpgrade/MuonPerformance/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RPCUpgrade/MuonPerformance/plugins/$(file). Please fix src/RPCUpgrade/MuonPerformance/plugins/BuildFile.))))
UpgradeRPCMuonPerformance_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RPCUpgrade/MuonPerformance/plugins/BuildFile
UpgradeRPCMuonPerformance_plugins_LOC_USE := self cmssw CommonTools/UtilAlgos DataFormats/RPCRecHit DataFormats/RPCDigi DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/GEMRecHit DataFormats/MuonReco Geometry/RPCGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/GEMGeometry
UpgradeRPCMuonPerformance_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UpgradeRPCMuonPerformance_plugins,UpgradeRPCMuonPerformance_plugins,$(SCRAMSTORENAME_LIB),src/RPCUpgrade/MuonPerformance/plugins))
UpgradeRPCMuonPerformance_plugins_PACKAGE := self/src/RPCUpgrade/MuonPerformance/plugins
ALL_PRODS += UpgradeRPCMuonPerformance_plugins
RPCUpgrade/MuonPerformance_forbigobj+=UpgradeRPCMuonPerformance_plugins
UpgradeRPCMuonPerformance_plugins_INIT_FUNC        += $$(eval $$(call Library,UpgradeRPCMuonPerformance_plugins,src/RPCUpgrade/MuonPerformance/plugins,src_RPCUpgrade_MuonPerformance_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
UpgradeRPCMuonPerformance_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UpgradeRPCMuonPerformance_plugins,src/RPCUpgrade/MuonPerformance/plugins))
endif
ALL_COMMONRULES += src_RPCUpgrade_MuonPerformance_plugins
src_RPCUpgrade_MuonPerformance_plugins_parent := RPCUpgrade/MuonPerformance
src_RPCUpgrade_MuonPerformance_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RPCUpgrade_MuonPerformance_plugins,src/RPCUpgrade/MuonPerformance/plugins,PLUGINS))
