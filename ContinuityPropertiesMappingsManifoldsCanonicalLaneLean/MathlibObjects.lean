import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuityAdmittedObject where
  space : ContinuitySpace
  continuousMapping : Prop
  manifoldStructure : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  mappingContinuous : Prop
  conclusion : mappingContinuous

structure ContinuityEndgameState where
  object : ContinuityAdmittedObject

def ContinuityWitnessClosed (O : ContinuityAdmittedObject) : Prop :=
  O.mappingContinuous

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
