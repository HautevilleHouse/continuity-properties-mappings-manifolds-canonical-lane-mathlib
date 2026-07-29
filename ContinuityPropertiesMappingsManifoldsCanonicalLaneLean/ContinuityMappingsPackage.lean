import ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ContinuityMappingsPackage where
  sourceManifold : Type u
  targetManifold : Type v
  mappingType : Type w
  continuityCondition : Prop
  differentiabilityCondition : Prop
  parameterSpace : Type x
  topologyOnSource : TopologicalSpace sourceManifold
  topologyOnTarget : TopologicalSpace targetManifold
  topologyOnParameter : TopologicalSpace parameterSpace
  mappingFamily : parameterSpace → (sourceManifold → targetManifold)

def ContinuityMappingsClosed (P : ContinuityMappingsPackage) : Prop :=
  P.continuityCondition ∧ P.differentiabilityCondition

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
