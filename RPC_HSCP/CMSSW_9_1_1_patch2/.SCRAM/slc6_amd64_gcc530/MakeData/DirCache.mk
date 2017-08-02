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
ifeq ($(strip $(SimG4CoreCustomPhysicsPlugins)),)
SimG4CoreCustomPhysicsPlugins := self/src/SimG4Core/CustomPhysics/plugins
PLUGINS:=yes
SimG4CoreCustomPhysicsPlugins_files := $(patsubst src/SimG4Core/CustomPhysics/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimG4Core/CustomPhysics/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimG4Core/CustomPhysics/plugins/$(file). Please fix src/SimG4Core/CustomPhysics/plugins/BuildFile.))))
SimG4CoreCustomPhysicsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4Core/CustomPhysics/plugins/BuildFile
SimG4CoreCustomPhysicsPlugins_LOC_USE := self cmssw SimG4Core/Watcher SimG4Core/Notification FWCore/ParameterSet FWCore/ServiceRegistry geant4core clhep boost SimG4Core/CustomPhysics
SimG4CoreCustomPhysicsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimG4CoreCustomPhysicsPlugins,SimG4CoreCustomPhysicsPlugins,$(SCRAMSTORENAME_LIB),src/SimG4Core/CustomPhysics/plugins))
SimG4CoreCustomPhysicsPlugins_PACKAGE := self/src/SimG4Core/CustomPhysics/plugins
ALL_PRODS += SimG4CoreCustomPhysicsPlugins
SimG4Core/CustomPhysics_forbigobj+=SimG4CoreCustomPhysicsPlugins
SimG4CoreCustomPhysicsPlugins_INIT_FUNC        += $$(eval $$(call Library,SimG4CoreCustomPhysicsPlugins,src/SimG4Core/CustomPhysics/plugins,src_SimG4Core_CustomPhysics_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
SimG4CoreCustomPhysicsPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,SimG4CoreCustomPhysicsPlugins,src/SimG4Core/CustomPhysics/plugins))
endif
ALL_COMMONRULES += src_SimG4Core_CustomPhysics_plugins
src_SimG4Core_CustomPhysics_plugins_parent := SimG4Core/CustomPhysics
src_SimG4Core_CustomPhysics_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4Core_CustomPhysics_plugins,src/SimG4Core/CustomPhysics/plugins,PLUGINS))
ifeq ($(strip $(SimG4Core/CustomPhysics)),)
ALL_COMMONRULES += src_SimG4Core_CustomPhysics_src
src_SimG4Core_CustomPhysics_src_parent := SimG4Core/CustomPhysics
src_SimG4Core_CustomPhysics_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimG4Core_CustomPhysics_src,src/SimG4Core/CustomPhysics/src,LIBRARY))
SimG4CoreCustomPhysics := self/SimG4Core/CustomPhysics
SimG4Core/CustomPhysics := SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_files := $(patsubst src/SimG4Core/CustomPhysics/src/%,%,$(wildcard $(foreach dir,src/SimG4Core/CustomPhysics/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimG4CoreCustomPhysics_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4Core/CustomPhysics/BuildFile
SimG4CoreCustomPhysics_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/MessageLogger SimG4Core/Physics SimG4Core/PhysicsLists geant4core clhep boost
SimG4CoreCustomPhysics_EX_LIB   := SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_EX_USE   := $(foreach d,$(SimG4CoreCustomPhysics_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreCustomPhysics_PACKAGE := self/src/SimG4Core/CustomPhysics/src
ALL_PRODS += SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_CLASS := LIBRARY
SimG4Core/CustomPhysics_forbigobj+=SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_INIT_FUNC        += $$(eval $$(call Library,SimG4CoreCustomPhysics,src/SimG4Core/CustomPhysics/src,src_SimG4Core_CustomPhysics_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
