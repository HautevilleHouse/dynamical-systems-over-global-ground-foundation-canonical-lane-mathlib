import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.RecurrencePackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure HyperbolicDynamicsPackage {G : GroundSpaceModel} {F : FlowPackage G}
    {M : InvariantMeasurePackage F} (R : RecurrencePackage M) where
  hyperbolicSet : G.carrier → Prop
  stableUnstableFoliation : Prop
  topologicalTransitivity : Prop

structure HyperbolicDynamicsEvidence {G : GroundSpaceModel} {F : FlowPackage G}
    {M : InvariantMeasurePackage F} {R : RecurrencePackage M}
    (H : HyperbolicDynamicsPackage R) where
  hyperbolicSetClosed : H.hyperbolicSet
  stableUnstableFoliationClosed : H.stableUnstableFoliation
  topologicalTransitivityClosed : H.topologicalTransitivity

def HyperbolicDynamicsClosed {G : GroundSpaceModel} {F : FlowPackage G}
    {M : InvariantMeasurePackage F} {R : RecurrencePackage M}
    (H : HyperbolicDynamicsPackage R) : Prop :=
  H.hyperbolicSet ∧ H.stableUnstableFoliation ∧ H.topologicalTransitivity

theorem hyperbolic_dynamics_closed_from_evidence
    {G : GroundSpaceModel} {F : FlowPackage G} {M : InvariantMeasurePackage F}
    {R : RecurrencePackage M} (H : HyperbolicDynamicsPackage R)
    (E : HyperbolicDynamicsEvidence H) : HyperbolicDynamicsClosed H := by
  exact And.intro E.hyperbolicSetClosed
    (And.intro E.stableUnstableFoliationClosed E.topologicalTransitivityClosed)

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse