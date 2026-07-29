import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.ManifoldMappings

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure Homeomorphism (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  toFun : M → N
  invFun : N → M
  leftInv : ∀ x, invFun (toFun x) = x
  rightInv : ∀ y, toFun (invFun y) = y
  continuous_toFun : Continuous toFun
  continuous_invFun : Continuous invFun

def Homeomorphism.bicontinuous (h : Homeomorphism M N) : Prop :=
  h.continuous_toFun ∧ h.continuous_invFun

structure HomeomorphismEvidence (h : Homeomorphism M N) where
  bicontinuousClosed : h.continuous_toFun ∧ h.continuous_invFun

def HomeomorphismClosed (h : Homeomorphism M N) : Prop :=
  h.continuous_toFun ∧ h.continuous_invFun

theorem homeomorphism_closed_from_evidence
    {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (h : Homeomorphism M N) (E : HomeomorphismEvidence h) :
    HomeomorphismClosed h := by
  exact E.bicontinuousClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse