ifeq ($(strip $(GeometryHcalTowerAlgoPlugins)),)
GeometryHcalTowerAlgoPlugins := self/src/Geometry/HcalTowerAlgo/plugins
GeometryHcalTowerAlgoPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet Geometry/Records Geometry/HcalTowerAlgo CondFormats/GeometryObjects
Geometry/HcalTowerAlgo_relbigobj+=GeometryHcalTowerAlgoPlugins
endif
ifeq ($(strip $(RecoEgammaEgammaElectronProducersPlugins)),)
RecoEgammaEgammaElectronProducersPlugins := self/src/RecoEgamma/EgammaElectronProducers/plugins
RecoEgammaEgammaElectronProducersPlugins_LOC_USE := self cmssw RecoEgamma/EgammaElectronAlgos RecoEgamma/EgammaIsolationAlgos RecoTracker/CkfPattern RecoTracker/TrackProducer CommonTools/CandAlgos Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records FWCore/Framework FWCore/ParameterSet FWCore/PluginManager DataFormats/EgammaCandidates DataFormats/DetId DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/ParticleFlowCandidate hepmc clhep root
RecoEgamma/EgammaElectronProducers_relbigobj+=RecoEgammaEgammaElectronProducersPlugins
endif
ifeq ($(strip $(Geometry/CaloTopology)),)
GeometryCaloTopology := self/Geometry/CaloTopology
Geometry/CaloTopology := GeometryCaloTopology
GeometryCaloTopology_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryCaloTopology_EX_USE := $(foreach d, self cmssw DataFormats/CaloTowers DataFormats/HcalDetId DataFormats/EcalDetId DataFormats/ForwardDetId DataFormats/Common Geometry/CaloGeometry Geometry/HcalCommonData Geometry/HGCalCommonData FWCore/Framework FWCore/ParameterSet FWCore/PluginManager boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryCaloTopology_EX_LIB   := GeometryCaloTopology
ALL_EXTERNAL_PRODS += GeometryCaloTopology
GeometryCaloTopology_CLASS := LIBRARY
Geometry/CaloTopology_relbigobj+=GeometryCaloTopology
endif
ifeq ($(strip $(RecoLocalCalo/HGCalRecProducers)),)
RecoLocalCaloHGCalRecProducers := self/RecoLocalCalo/HGCalRecProducers
RecoLocalCalo/HGCalRecProducers := RecoLocalCaloHGCalRecProducers
RecoLocalCaloHGCalRecProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloHGCalRecProducers_EX_USE := $(foreach d, self cmssw FWCore/MessageLogger FWCore/Framework Geometry/HGCalGeometry clhep RecoLocalCalo/HGCalRecAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloHGCalRecProducers_EX_LIB   := RecoLocalCaloHGCalRecProducers
ALL_EXTERNAL_PRODS += RecoLocalCaloHGCalRecProducers
RecoLocalCaloHGCalRecProducers_CLASS := LIBRARY
RecoLocalCalo/HGCalRecProducers_relbigobj+=RecoLocalCaloHGCalRecProducers
endif
ifeq ($(strip $(Geometry/HcalTowerAlgo)),)
GeometryHcalTowerAlgo := self/Geometry/HcalTowerAlgo
Geometry/HcalTowerAlgo := GeometryHcalTowerAlgo
GeometryHcalTowerAlgo_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryHcalTowerAlgo_EX_USE := $(foreach d, self cmssw Geometry/CaloGeometry Geometry/CaloTopology Geometry/HcalCommonData DataFormats/HcalDetId DataFormats/CaloTowers FWCore/MessageLogger FWCore/ParameterSet clhep boost_serialization,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryHcalTowerAlgo_EX_LIB   := GeometryHcalTowerAlgo
ALL_EXTERNAL_PRODS += GeometryHcalTowerAlgo
GeometryHcalTowerAlgo_CLASS := LIBRARY
Geometry/HcalTowerAlgo_relbigobj+=GeometryHcalTowerAlgo
endif
ifeq ($(strip $(Utilities/XrdAdaptor)),)
UtilitiesXrdAdaptor := self/Utilities/XrdAdaptor
Utilities/XrdAdaptor := UtilitiesXrdAdaptor
UtilitiesXrdAdaptor_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesXrdAdaptor_LOC_FLAGS_CPPDEFINES   := -D_FILE_OFFSET_BITS=64
UtilitiesXrdAdaptor_EX_USE := $(foreach d, self cmssw Utilities/StorageFactory FWCore/Utilities FWCore/MessageLogger xrootd,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesXrdAdaptor_EX_LIB   := UtilitiesXrdAdaptor
ALL_EXTERNAL_PRODS += UtilitiesXrdAdaptor
UtilitiesXrdAdaptor_CLASS := LIBRARY
Utilities/XrdAdaptor_relbigobj+=UtilitiesXrdAdaptor
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
ifeq ($(strip $(UtilitiesXrdAdaptorPlugin)),)
UtilitiesXrdAdaptorPlugin := self/src/Utilities/XrdAdaptor/plugins
UtilitiesXrdAdaptorPlugin_LOC_FLAGS_CXXFLAGS   := -D_FILE_OFFSET_BITS=64
UtilitiesXrdAdaptorPlugin_LOC_LIB   := XrdCl
UtilitiesXrdAdaptorPlugin_LOC_USE := self cmssw Utilities/StorageFactory Utilities/XrdAdaptor
Utilities/XrdAdaptor_relbigobj+=UtilitiesXrdAdaptorPlugin
endif
ifeq ($(strip $(RecoLocalCalo/HGCalRecAlgos)),)
RecoLocalCaloHGCalRecAlgos := self/RecoLocalCalo/HGCalRecAlgos
RecoLocalCalo/HGCalRecAlgos := RecoLocalCaloHGCalRecAlgos
RecoLocalCaloHGCalRecAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloHGCalRecAlgos_EX_USE := $(foreach d, self cmssw clhep DataFormats/HGCRecHit root rootminuit FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework CondFormats/DataRecord Geometry/HGCalGeometry Geometry/Records DataFormats/ParticleFlowReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloHGCalRecAlgos_EX_LIB   := RecoLocalCaloHGCalRecAlgos
ALL_EXTERNAL_PRODS += RecoLocalCaloHGCalRecAlgos
RecoLocalCaloHGCalRecAlgos_CLASS := LIBRARY
RecoLocalCalo/HGCalRecAlgos_relbigobj+=RecoLocalCaloHGCalRecAlgos
endif
ifeq ($(strip $(RecoLocalCaloHGCalRecProducersPlugins)),)
RecoLocalCaloHGCalRecProducersPlugins := self/src/RecoLocalCalo/HGCalRecProducers/plugins
RecoLocalCaloHGCalRecProducersPlugins_LOC_USE := self cmssw Geometry/CaloGeometry RecoLocalCalo/HGCalRecProducers RecoLocalCalo/HGCalRecAlgos FWCore/Framework FWCore/ParameterSet DataFormats/HGCDigi DataFormats/HGCRecHit CondFormats/DataRecord FWCore/MessageLogger FWCore/MessageService Geometry/HGCalGeometry
RecoLocalCalo/HGCalRecProducers_relbigobj+=RecoLocalCaloHGCalRecProducersPlugins
endif
ifeq ($(strip $(CalibCalorimetry/HcalPlugins)),)
CalibCalorimetryHcalPlugins := self/CalibCalorimetry/HcalPlugins
CalibCalorimetry/HcalPlugins := CalibCalorimetryHcalPlugins
CalibCalorimetryHcalPlugins_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryHcalPlugins_EX_USE := $(foreach d, self cmssw CalibCalorimetry/HcalAlgos CalibFormats/HcalObjects CondFormats/DataRecord CondFormats/HcalObjects DataFormats/HcalDetId DataFormats/HcalCalibObjects Geometry/ForwardGeometry FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities Geometry/CaloTopology,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += CalibCalorimetryHcalPlugins
CalibCalorimetryHcalPlugins_CLASS := LIBRARY
CalibCalorimetry/HcalPlugins_relbigobj+=CalibCalorimetryHcalPlugins
endif
ifeq ($(strip $(ValidationHGCalValidationAuto)),)
ValidationHGCalValidationAuto := self/src/Validation/HGCalValidation/plugins
ValidationHGCalValidationAuto_LOC_USE := self cmssw CalibFormats/HcalObjects CondFormats/GeometryObjects DataFormats/ForwardDetId DataFormats/HcalDetId DataFormats/HepMCCandidate DetectorDescription/Core DQMServices/Core FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/PluginManager Geometry/HcalCommonData Geometry/HGCalCommonData Geometry/HGCalGeometry Geometry/Records SimDataFormats/CaloHit SimDataFormats/CaloTest SimDataFormats/CaloAnalysis SimDataFormats/GeneratorProducts SimDataFormats/Track SimDataFormats/ValidationFormats SimG4Core/Notification SimG4Core/Watcher SimG4CMS/Calo RecoLocalCalo/HGCalRecAlgos geant4core clhep hepmc
Validation/HGCalValidation_relbigobj+=ValidationHGCalValidationAuto
endif
ifeq ($(strip $(RecoLocalMuon/RPCRecHit)),)
RecoLocalMuonRPCRecHit := self/RecoLocalMuon/RPCRecHit
RecoLocalMuon/RPCRecHit := RecoLocalMuonRPCRecHit
RecoLocalMuonRPCRecHit_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalMuonRPCRecHit_EX_USE := $(foreach d, self cmssw root FWCore/Framework Geometry/Records DataFormats/TrackingRecHit DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/RPCRecHit DataFormats/RPCDigi DataFormats/Common CondFormats/RPCObjects CondFormats/DataRecord Geometry/RPCGeometry Geometry/DTGeometry Geometry/CSCGeometry TrackingTools/TrackRefitter,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += RecoLocalMuonRPCRecHit
RecoLocalMuonRPCRecHit_CLASS := LIBRARY
RecoLocalMuon/RPCRecHit_relbigobj+=RecoLocalMuonRPCRecHit
endif
