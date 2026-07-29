import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

def ConstrainedContinuityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuity_endgame (A : AdmissibleClass) :
    ConstrainedContinuityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
