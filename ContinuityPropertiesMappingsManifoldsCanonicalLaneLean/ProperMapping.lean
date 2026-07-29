import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ProperMappingPackage where
  sourceManifold : Type u
  targetManifold : Type v
  topologySource : TopologicalSpace sourceManifold
  topologyTarget : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  properCondition : Prop
  closedMapping : Prop
  compactPreimageOfCompact : Prop

structure ProperMappingEvidence (P : ProperMappingPackage) where
  closedMappingClosed : P.closedMapping
  compactPreimageOfCompactClosed : P.compactPreimageOfCompact

def ProperMappingClosed (P : ProperMappingPackage) : Prop :=
  P.closedMapping ∧ P.compactPreimageOfCompact

theorem proper_mapping_closed_from_evidence (P : ProperMappingPackage)
    (E : ProperMappingEvidence P) : ProperMappingClosed P := by
  exact And.intro E.closedMappingClosed E.compactPreimageOfCompactClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse