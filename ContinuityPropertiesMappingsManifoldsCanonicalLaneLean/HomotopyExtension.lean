import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsCanonicalLaneLean

structure HomotopyExtensionPackage where
  baseSpace : Type u
  totalSpace : Type v
  fiber : Type w
  topologyBase : TopologicalSpace baseSpace
  topologyTotal : TopologicalSpace totalSpace
  topologyFiber : TopologicalSpace fiber
  fibration : Fibration totalSpace baseSpace fiber
  homotopyLiftingProperty : Prop
  coveringHomotopyTheorem : Prop

structure HomotopyExtensionEvidence (P : HomotopyExtensionPackage) where
  homotopyLiftingPropertyClosed : P.homotopyLiftingProperty
  coveringHomotopyTheoremClosed : P.coveringHomotopyTheorem

def HomotopyExtensionClosed (P : HomotopyExtensionPackage) : Prop :=
  P.homotopyLiftingProperty ∧ P.coveringHomotopyTheorem

theorem homotopy_extension_closed_from_evidence (P : HomotopyExtensionPackage)
    (E : HomotopyExtensionEvidence P) : HomotopyExtensionClosed P := by
  exact And.intro E.homotopyLiftingPropertyClosed E.coveringHomotopyTheoremClosed

end ContinuityPropertiesMappingsManifoldsCanonicalLaneLean
end HautevilleHouse