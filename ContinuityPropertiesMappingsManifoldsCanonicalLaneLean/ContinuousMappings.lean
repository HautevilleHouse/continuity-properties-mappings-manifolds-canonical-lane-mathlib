import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.MathlibObjects

/-!
# Continuous Mappings Package
-/

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ContinuousMappingPackage where
  sourceManifold : Type u
  targetManifold : Type v
  topologySource : TopologicalSpace sourceManifold
  topologyTarget : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  continuous : Prop
  smoothStructure : Prop
  mappingSmooth : Prop

structure ContinuousMappingEvidence (C : ContinuousMappingPackage) where
  continuousClosed : C.continuous
  smoothStructureClosed : C.smoothStructure
  mappingSmoothClosed : C.mappingSmooth

def ContinuousMappingClosed (C : ContinuousMappingPackage) : Prop :=
  C.continuous ∧ C.smoothStructure ∧ C.mappingSmooth

theorem continuous_mapping_closed_from_evidence (C : ContinuousMappingPackage)
    (E : ContinuousMappingEvidence C) : ContinuousMappingClosed C := by
  exact And.intro E.continuousClosed (And.intro E.smoothStructureClosed E.mappingSmoothClosed)

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
