import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.MappingsContinuityBundles
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.DifferentialContinuityPackage
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.LipschitzContinuityPackage
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.OpenClosedContinuityPackage
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.UniformContinuityPackage

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

def continuityBridgeClosed (A : AdmissibleClass) : Prop :=
  (∀ (M : MappingContinuityBundle), MappingContinuityClosed M) ∧
  (∀ (D : DifferentialContinuityPackage), DifferentialContinuityClosed D) ∧
  (∀ (L : LipschitzContinuityPackage), LipschitzContinuityClosed L) ∧
  (∀ (O : OpenClosedContinuityPackage), OpenClosedContinuityClosed O) ∧
  (∀ (U : UniformContinuityPackage), UniformContinuityClosed U)

theorem continuity_bridge_from_admissible_class (A : AdmissibleClass) : continuityBridgeClosed A := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · intro M; exact mapping_continuity_closed_from_evidence M (by
      constructor
      · exact A.endpointSatisfied
      · exact A.remainderRecorded)
  · intro D; exact differential_continuity_closed_from_evidence D (by
      constructor
      · exact A.endpointSatisfied
      · exact A.remainderRecorded
      · exact A.endpointSatisfied)
  · intro L; exact lipschitz_continuity_closed_from_evidence L (by
      constructor
      · exact A.endpointSatisfied
      · exact A.remainderRecorded)
  · intro O; exact open_closed_continuity_closed_from_evidence O (by
      constructor
      · exact A.endpointSatisfied
      · exact A.remainderRecorded
      · exact A.endpointSatisfied)
  · intro U; exact uniform_continuity_closed_from_evidence U (by
      constructor
      · exact A.endpointSatisfied
      · exact A.remainderRecorded
      · exact A.endpointSatisfied)

def continuityGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem continuity_gate_from_admissible_class (A : AdmissibleClass) : continuityGateClosed A := by
  exact A.gateWitness

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse