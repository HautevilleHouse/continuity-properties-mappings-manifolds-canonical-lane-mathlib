import ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.ContinuityMappingsPackage

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure MappingAnalysisPackage where
  continuityMappings : ContinuityMappingsPackage
  lipschitzCondition : Prop
  holderCondition : Prop
  compactnessCondition : Prop
  inverseMappingCondition : Prop
  implicitMappingCondition : Prop

def MappingAnalysisClosed (P : MappingAnalysisPackage) : Prop :=
  P.lipschitzCondition ∧ P.holderCondition ∧ P.compactnessCondition ∧
  P.inverseMappingCondition ∧ P.implicitMappingCondition

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
