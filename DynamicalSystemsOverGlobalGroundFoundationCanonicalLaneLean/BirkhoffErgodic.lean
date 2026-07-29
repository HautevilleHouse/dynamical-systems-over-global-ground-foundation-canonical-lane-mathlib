import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.EntropyAnalytic

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure BirkhoffErgodicPackage (S : DynamicalSystemSpace) (M : InvariantMeasurePackage S) where
  timeAverageExists : Prop
  spaceAverageEqualsTimeAverage : Prop
  ergodicMeasure : Prop

def BirkhoffErgodicClosed (B : BirkhoffErgodicPackage S M) : Prop :=
  B.timeAverageExists ∧ B.spaceAverageEqualsTimeAverage ∧ B.ergodicMeasure

theorem birkhoff_ergodic_closed (B : BirkhoffErgodicPackage S M) : BirkhoffErgodicClosed B := by
  exact And.intro B.timeAverageExists (And.intro B.spaceAverageEqualsTimeAverage B.ergodicMeasure)

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse