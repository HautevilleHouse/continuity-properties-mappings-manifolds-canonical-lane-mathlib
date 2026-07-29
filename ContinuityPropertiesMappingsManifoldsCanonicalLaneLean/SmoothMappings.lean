import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure SmoothMappingsPackage where
  sourceManifold : Type u
  targetManifold : Type v
  smoothAtlasSource : Atlas sourceManifold
  smoothAtlasTarget : Atlas targetManifold
  smoothMappings : Set (sourceManifold → targetManifold)
  smoothComposition : Prop
  chainRuleValid : Prop

structure SmoothMappingsEvidence (P : SmoothMappingsPackage) where
  smoothCompositionClosed : P.smoothComposition
  chainRuleValidClosed : P.chainRuleValid

def SmoothMappingsClosed (P : SmoothMappingsPackage) : Prop :=
  P.smoothComposition ∧ P.chainRuleValid

theorem smooth_mappings_closed_from_evidence (P : SmoothMappingsPackage)
    (E : SmoothMappingsEvidence P) : SmoothMappingsClosed P := by
  exact And.intro E.smoothCompositionClosed E.chainRuleValidClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse