import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.ManifoldMappings

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure DifferentiableMapping (M N : Type u) [NormedAddCommGroup M] [NormedAddCommGroup N] extends ManifoldMapping M N where
  derivative : M → (M →L[ℝ] N)
  frechetDifferentiable : ∀ x, HasFDerivAt toFun (derivative x) x

def DifferentiableMapping.differentiable (f : DifferentiableMapping M N) : Prop :=
  f.frechetDifferentiable

structure DifferentiableMappingEvidence (f : DifferentiableMapping M N) where
  differentiableClosed : ∀ x, HasFDerivAt f.toFun (f.derivative x) x

def DifferentiableMappingClosed (f : DifferentiableMapping M N) : Prop :=
  ∀ x, HasFDerivAt f.toFun (f.derivative x) x

theorem differentiable_mapping_closed_from_evidence
    {M N : Type u} [NormedAddCommGroup M] [NormedAddCommGroup N]
    (f : DifferentiableMapping M N) (E : DifferentiableMappingEvidence f) :
    DifferentiableMappingClosed f := by
  intro x
  exact E.differentiableClosed x

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse