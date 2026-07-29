import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ContinuityAdmittedObject where
  source : Type
  target : Type
  mapping : source → target
  continuous : Prop
  conclusion : continuous

structure ContinuityWitnessClosed (O : ContinuityAdmittedObject) : Prop where
  closed : O.continuous

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse