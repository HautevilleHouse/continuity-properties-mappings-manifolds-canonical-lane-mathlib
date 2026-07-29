import HautevilleHouse.TopologyContinuityPackage

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
