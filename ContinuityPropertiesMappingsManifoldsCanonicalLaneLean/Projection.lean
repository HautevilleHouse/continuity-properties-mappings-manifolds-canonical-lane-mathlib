import ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

def mappingProjection : Projection MappingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem mapping_projection_idempotent (x : MappingEndgameState) :
    mappingProjection.toFun (mappingProjection.toFun x) = mappingProjection.toFun x := by
  exact mappingProjection.idempotent x

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
