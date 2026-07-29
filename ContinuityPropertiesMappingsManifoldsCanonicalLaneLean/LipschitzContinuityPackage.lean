import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure LipschitzContinuityPackage where
  metricCompatible : Prop
  lipschitzConstant : ℝ
  lipschitzProperty : Prop
  metricCompatibleTerm : metricCompatible
  lipschitzPropertyTerm : lipschitzProperty

structure LipschitzContinuityEvidence (L : LipschitzContinuityPackage) where
  metricCompatibleClosed : L.metricCompatible
  lipschitzPropertyClosed : L.lipschitzProperty

def LipschitzContinuityClosed (L : LipschitzContinuityPackage) : Prop :=
  L.metricCompatible ∧ L.lipschitzProperty

theorem lipschitz_continuity_closed_from_evidence (L : LipschitzContinuityPackage) (E : LipschitzContinuityEvidence L) : LipschitzContinuityClosed L := by
  exact And.intro E.metricCompatibleClosed E.lipschitzPropertyClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse