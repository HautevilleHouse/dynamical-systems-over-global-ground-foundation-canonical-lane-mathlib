import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.DynamicalSystemObject

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure InvariantMeasurePackage (S : DynamicalSystemSpace) where
  measure : S.stateSpace → ℝ
  invarianceProof : ∀ x : S.stateSpace, measure (S.evolutionMap x) = measure x
  measurePositivity : ∀ x : S.stateSpace, measure x ≥ 0

def InvariantMeasureClosed (S : DynamicalSystemSpace) (M : InvariantMeasurePackage S) : Prop :=
  M.invarianceProof ∧ M.measurePositivity

theorem invariant_measure_closed (S : DynamicalSystemSpace) (M : InvariantMeasurePackage S) : InvariantMeasureClosed S M := by
  exact And.intro M.invarianceProof M.measurePositivity

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse