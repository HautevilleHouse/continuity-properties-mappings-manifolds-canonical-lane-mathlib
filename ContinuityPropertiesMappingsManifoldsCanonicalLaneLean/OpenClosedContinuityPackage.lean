import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure OpenClosedContinuityPackage where
  openMapping : Prop
  closedMapping : Prop
  properMapping : Prop
  openMappingTerm : openMapping
  closedMappingTerm : closedMapping
  properMappingTerm : properMapping

structure OpenClosedContinuityEvidence (O : OpenClosedContinuityPackage) where
  openMappingClosed : O.openMapping
  closedMappingClosed : O.closedMapping
  properMappingClosed : O.properMapping

def OpenClosedContinuityClosed (O : OpenClosedContinuityPackage) : Prop :=
  O.openMapping ∧ O.closedMapping ∧ O.properMapping

theorem open_closed_continuity_closed_from_evidence (O : OpenClosedContinuityPackage) (E : OpenClosedContinuityEvidence O) : OpenClosedContinuityClosed O := by
  exact And.intro E.openMappingClosed (And.intro E.closedMappingClosed E.properMappingClosed)

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse