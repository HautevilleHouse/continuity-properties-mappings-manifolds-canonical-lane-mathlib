import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.ManifoldMappings

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure LipschitzMapping (M N : Type u) [MetricSpace M] [MetricSpace N] extends ManifoldMapping M N where
  lipschitzConstant : ℝ
  lipschitzBound : ∀ x y : M, dist (toFun x) (toFun y) ≤ lipschitzConstant * dist x y

def LipschitzMapping.lipschitz (f : LipschitzMapping M N) : Prop :=
  f.lipschitzBound

structure LipschitzMappingEvidence (f : LipschitzMapping M N) where
  lipschitzClosed : f.lipschitzBound

def LipschitzMappingClosed (f : LipschitzMapping M N) : Prop :=
  f.lipschitzBound

theorem lipschitz_mapping_closed_from_evidence
    {M N : Type u} [MetricSpace M] [MetricSpace N]
    (f : LipschitzMapping M N) (E : LipschitzMappingEvidence f) :
    LipschitzMappingClosed f := by
  exact E.lipschitzClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse