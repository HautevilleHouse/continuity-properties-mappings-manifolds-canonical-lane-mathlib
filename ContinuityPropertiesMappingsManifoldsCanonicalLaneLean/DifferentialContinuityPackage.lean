import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure DifferentialContinuityPackage where
  differentiableContinuity : Prop
  ckRegularity : Prop
  smoothContinuity : Prop
  differentialContinuityTerm : differentiableContinuity
  ckRegularityTerm : ckRegularity
  smoothContinuityTerm : smoothContinuity

structure DifferentialContinuityEvidence (D : DifferentialContinuityPackage) where
  differentiableContinuityClosed : D.differentiableContinuity
  ckRegularityClosed : D.ckRegularity
  smoothContinuityClosed : D.smoothContinuity

def DifferentialContinuityClosed (D : DifferentialContinuityPackage) : Prop :=
  D.differentiableContinuity ∧ D.ckRegularity ∧ D.smoothContinuity

theorem differential_continuity_closed_from_evidence (D : DifferentialContinuityPackage) (E : DifferentialContinuityEvidence D) : DifferentialContinuityClosed D := by
  exact And.intro E.differentiableContinuityClosed (And.intro E.ckRegularityClosed E.smoothContinuityClosed)

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse