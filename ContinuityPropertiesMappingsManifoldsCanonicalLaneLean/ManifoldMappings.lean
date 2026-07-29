import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ManifoldMapping (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  toFun : M → N
  continuousToFun : Continuous toFun

def ManifoldMapping.continuous (f : ManifoldMapping M N) : Prop :=
  f.continuousToFun

structure ManifoldMappingEvidence (f : ManifoldMapping M N) where
  continuousClosed : f.continuousToFun

def ManifoldMappingClosed (f : ManifoldMapping M N) : Prop :=
  f.continuousToFun

theorem manifold_mapping_closed_from_evidence
    {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (f : ManifoldMapping M N) (E : ManifoldMappingEvidence f) :
    ManifoldMappingClosed f := by
  exact E.continuousClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse