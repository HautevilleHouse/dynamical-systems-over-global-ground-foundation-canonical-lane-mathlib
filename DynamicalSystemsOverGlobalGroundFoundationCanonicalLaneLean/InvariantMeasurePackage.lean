import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.FlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure InvariantMeasurePackage {G : GroundSpaceModel} (F : FlowPackage G) where
  measure : G.carrier → ℝ
  measurePositivity : Prop
  invarianceCondition : Prop

structure InvariantMeasureEvidence {G : GroundSpaceModel} {F : FlowPackage G}
    (M : InvariantMeasurePackage F) where
  measurePositivityClosed : M.measurePositivity
  invarianceConditionClosed : M.invarianceCondition

def InvariantMeasureClosed {G : GroundSpaceModel} {F : FlowPackage G}
    (M : InvariantMeasurePackage F) : Prop :=
  M.measurePositivity ∧ M.invarianceCondition

theorem invariant_measure_closed_from_evidence
    {G : GroundSpaceModel} {F : FlowPackage G}
    (M : InvariantMeasurePackage F) (E : InvariantMeasureEvidence M) :
    InvariantMeasureClosed M := by
  exact And.intro E.measurePositivityClosed E.invarianceConditionClosed

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse