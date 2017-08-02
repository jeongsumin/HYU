ALL_COMMONRULES += src_SimG4Core_CustomPhysics_test
src_SimG4Core_CustomPhysics_test_parent := SimG4Core/CustomPhysics
src_SimG4Core_CustomPhysics_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4Core_CustomPhysics_test,src/SimG4Core/CustomPhysics/test,TEST))
