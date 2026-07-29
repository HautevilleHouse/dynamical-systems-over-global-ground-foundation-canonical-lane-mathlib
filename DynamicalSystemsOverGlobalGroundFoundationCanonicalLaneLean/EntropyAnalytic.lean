import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.InvariantMeasure

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure EntropyPackage (S : DynamicalSystemSpace) (M : InvariantMeasurePackage S) where
  entropy : S.stateSpace → ℝ
  entropyPositivity : ∀ x : S.stateSpace, entropy x ≥ 0
  entropyInvariant : ∀ x : S.stateSpace, entropy (S.evolutionMap x) = entropy x

def EntropyClosed (E : EntropyPackage S M) : Prop :=
  E.entropyPositivity ∧ E.entropyInvariant

theorem entropy_closed (E : EntropyPackage S M) : EntropyClosed E := by
  exact And.intro E.entropyPositivity E.entropyInvariant

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse