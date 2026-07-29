import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ContinuityStructure {M : Type u} [TopologicalSpace M] {N : Type v} [TopologicalSpace N] where
  mapping : M → N
  pointwiseContinuity : Set M
  uniformContinuityOnSubsets : Prop
  continuityCondition : Prop

structure ContinuityEvidence {M : Type u} [TopologicalSpace M] {N : Type v} [TopologicalSpace N]
    (C : ContinuityStructure M N) where
  pointwiseContinuityClosed : ∀ x ∈ C.pointwiseContinuity, ContinuousAt C.mapping x
  uniformContinuityClosed : C.uniformContinuityOnSubsets
  continuityConditionClosed : C.continuityCondition

def ContinuityClosed {M : Type u} [TopologicalSpace M] {N : Type v} [TopologicalSpace N]
    (C : ContinuityStructure M N) : Prop :=
  (∀ x ∈ C.pointwiseContinuity, ContinuousAt C.mapping x) ∧
  C.uniformContinuityOnSubsets ∧ C.continuityCondition

theorem continuity_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {N : Type v} [TopologicalSpace N]
    (C : ContinuityStructure M N) (E : ContinuityEvidence C) :
    ContinuityClosed C := by
  exact And.intro E.pointwiseContinuityClosed
    (And.intro E.uniformContinuityClosed E.continuityConditionClosed)

end HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse