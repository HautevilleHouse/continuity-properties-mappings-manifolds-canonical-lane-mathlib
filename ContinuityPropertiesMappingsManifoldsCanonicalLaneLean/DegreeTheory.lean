import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure DegreeTheoryPackage where
  sourceManifold : Type u
  targetManifold : Type v
  orientationSource : Orientation sourceManifold
  orientationTarget : Orientation targetManifold
  mapping : sourceManifold → targetManifold
  degreeDefined : Prop
  homotopyInvariance : Prop
  computationByLocalDegree : Prop

structure DegreeTheoryEvidence (P : DegreeTheoryPackage) where
  homotopyInvarianceClosed : P.homotopyInvariance
  computationByLocalDegreeClosed : P.computationByLocalDegree

def DegreeTheoryClosed (P : DegreeTheoryPackage) : Prop :=
  P.homotopyInvariance ∧ P.computationByLocalDegree

theorem degree_theory_closed_from_evidence (P : DegreeTheoryPackage)
    (E : DegreeTheoryEvidence P) : DegreeTheoryClosed P := by
  exact And.intro E.homotopyInvarianceClosed E.computationByLocalDegreeClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse