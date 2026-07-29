import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure UniformContinuityPackage where
  uniformContinuity : Prop
  uniformBoundedness : Prop
  equicontinuity : Prop
  uniformContinuityTerm : uniformContinuity
  uniformBoundednessTerm : uniformBoundedness
  equicontinuityTerm : equicontinuity

structure UniformContinuityEvidence (U : UniformContinuityPackage) where
  uniformContinuityClosed : U.uniformContinuity
  uniformBoundednessClosed : U.uniformBoundedness
  equicontinuityClosed : U.equicontinuity

def UniformContinuityClosed (U : UniformContinuityPackage) : Prop :=
  U.uniformContinuity ∧ U.uniformBoundedness ∧ U.equicontinuity

theorem uniform_continuity_closed_from_evidence (U : UniformContinuityPackage) (E : UniformContinuityEvidence U) : UniformContinuityClosed U := by
  exact And.intro E.uniformContinuityClosed (And.intro E.uniformBoundednessClosed E.equicontinuityClosed)

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse