import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure TransversalityPackage where
  manifold : Type u
  submanifold1 : Submanifold manifold
  submanifold2 : Submanifold manifold
  transverseCondition : Prop
  intersectionSubmanifold : Prop
  codimensionAdditivity : Prop

structure TransversalityEvidence (P : TransversalityPackage) where
  intersectionSubmanifoldClosed : P.intersectionSubmanifold
  codimensionAdditivityClosed : P.codimensionAdditivity

def TransversalityClosed (P : TransversalityPackage) : Prop :=
  P.intersectionSubmanifold ∧ P.codimensionAdditivity

theorem transversality_closed_from_evidence (P : TransversalityPackage)
    (E : TransversalityEvidence P) : TransversalityClosed P := by
  exact And.intro E.intersectionSubmanifoldClosed E.codimensionAdditivityClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse