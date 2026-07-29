import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure WhitneyEmbeddingPackage where
  abstractManifold : Type u
  targetEuclideanSpace : Type v
  embedding : abstractManifold → targetEuclideanSpace
  injectiveImmersion : Prop
  properEmbedding : Prop
  dimensionBound : Prop

structure WhitneyEmbeddingEvidence (P : WhitneyEmbeddingPackage) where
  injectiveImmersionClosed : P.injectiveImmersion
  properEmbeddingClosed : P.properEmbedding
  dimensionBoundClosed : P.dimensionBound

def WhitneyEmbeddingClosed (P : WhitneyEmbeddingPackage) : Prop :=
  P.injectiveImmersion ∧ P.properEmbedding ∧ P.dimensionBound

theorem whitney_embedding_closed_from_evidence (P : WhitneyEmbeddingPackage)
    (E : WhitneyEmbeddingEvidence P) : WhitneyEmbeddingClosed P := by
  exact And.intro E.injectiveImmersionClosed
    (And.intro E.properEmbeddingClosed E.dimensionBoundClosed)

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse