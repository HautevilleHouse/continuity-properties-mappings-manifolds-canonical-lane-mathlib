import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure MappingContinuityBundle where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  sourceManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  mapping : sourceManifold → targetManifold
  continuityCondition : Prop
  fibreType : Type w
  bundleContinuity : Prop
  mappingContinuityTerm : continuityCondition
  bundleContinuityTerm : bundleContinuity

structure MappingContinuityEvidence (M : MappingContinuityBundle) where
  mappingContinuityClosed : M.continuityCondition
  bundleContinuityClosed : M.bundleContinuity

def MappingContinuityClosed (M : MappingContinuityBundle) : Prop :=
  M.continuityCondition ∧ M.bundleContinuity

theorem mapping_continuity_closed_from_evidence (M : MappingContinuityBundle) (E : MappingContinuityEvidence M) : MappingContinuityClosed M := by
  exact And.intro E.mappingContinuityClosed E.bundleContinuityClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse