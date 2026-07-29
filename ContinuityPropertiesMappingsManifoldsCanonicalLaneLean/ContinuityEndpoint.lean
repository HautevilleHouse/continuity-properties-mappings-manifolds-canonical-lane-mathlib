import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.ManifoldContinuity

/-!
# Continuity Endpoint Package
-/

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ContinuityEndpointPackage {C : ContinuousMappingPackage}
    {M : ManifoldContinuityPackage C} where
  endpointContinuity : Prop
  endpointSmoothness : Prop
  endpointContinuous : Prop

structure ContinuityEndpointEvidence {C : ContinuousMappingPackage}
    {M : ManifoldContinuityPackage C}
    (E : ContinuityEndpointPackage M) where
  endpointContinuityClosed : E.endpointContinuity
  endpointSmoothnessClosed : E.endpointSmoothness
  endpointContinuousClosed : E.endpointContinuous

def ContinuityEndpointClosed {C : ContinuousMappingPackage}
    {M : ManifoldContinuityPackage C}
    (E : ContinuityEndpointPackage M) : Prop :=
  E.endpointContinuity ∧ E.endpointSmoothness ∧ E.endpointContinuous

theorem continuity_endpoint_closed_from_evidence
    {C : ContinuousMappingPackage} {M : ManifoldContinuityPackage C}
    (E : ContinuityEndpointPackage M)
    (Ev : ContinuityEndpointEvidence E) : ContinuityEndpointClosed E := by
  exact And.intro Ev.endpointContinuityClosed
    (And.intro Ev.endpointSmoothnessClosed Ev.endpointContinuousClosed)

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
