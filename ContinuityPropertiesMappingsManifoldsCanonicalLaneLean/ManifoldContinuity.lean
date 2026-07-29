import HautevilleHouse.ContinuityPropertiesMappingsManifoldsCanonicalLaneLean.ContinuousMappings

/-!
# Manifold Continuity Package
-/

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure ManifoldContinuityPackage {C : ContinuousMappingPackage} where
  sourceManifoldSmooth : Prop
  targetManifoldSmooth : Prop
  mappingLocalExpressible : Prop
  chartCompatibility : Prop
  derivativeExists : Prop

structure ManifoldContinuityEvidence {C : ContinuousMappingPackage}
    (M : ManifoldContinuityPackage C) where
  sourceManifoldSmoothClosed : M.sourceManifoldSmooth
  targetManifoldSmoothClosed : M.targetManifoldSmooth
  mappingLocalExpressibleClosed : M.mappingLocalExpressible
  chartCompatibilityClosed : M.chartCompatibility
  derivativeExistsClosed : M.derivativeExists

def ManifoldContinuityClosed {C : ContinuousMappingPackage}
    (M : ManifoldContinuityPackage C) : Prop :=
  M.sourceManifoldSmooth ∧ M.targetManifoldSmooth ∧
  M.mappingLocalExpressible ∧ M.chartCompatibility ∧ M.derivativeExists

theorem manifold_continuity_closed_from_evidence
    {C : ContinuousMappingPackage} (M : ManifoldContinuityPackage C)
    (E : ManifoldContinuityEvidence M) : ManifoldContinuityClosed M := by
  exact And.intro E.sourceManifoldSmoothClosed
    (And.intro E.targetManifoldSmoothClosed
      (And.intro E.mappingLocalExpressibleClosed
        (And.intro E.chartCompatibilityClosed E.derivativeExistsClosed)))

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse
