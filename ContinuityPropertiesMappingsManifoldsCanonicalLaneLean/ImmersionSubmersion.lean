import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ImmersionSubmersionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  differential : Type w
  mapping : sourceManifold → targetManifold
  immersionCondition : Prop
  submersionCondition : Prop
  constantRankTheorem : Prop
  localNormalForm : Prop

structure ImmersionSubmersionEvidence (P : ImmersionSubmersionPackage) where
  immersionConditionClosed : P.immersionCondition
  submersionConditionClosed : P.submersionCondition
  constantRankTheoremClosed : P.constantRankTheorem
  localNormalFormClosed : P.localNormalForm

def ImmersionSubmersionClosed (P : ImmersionSubmersionPackage) : Prop :=
  P.immersionCondition ∧ P.submersionCondition ∧
  P.constantRankTheorem ∧ P.localNormalForm

theorem immersion_submersion_closed_from_evidence (P : ImmersionSubmersionPackage)
    (E : ImmersionSubmersionEvidence P) : ImmersionSubmersionClosed P := by
  exact And.intro E.immersionConditionClosed
    (And.intro E.submersionConditionClosed
      (And.intro E.constantRankTheoremClosed E.localNormalFormClosed))

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse