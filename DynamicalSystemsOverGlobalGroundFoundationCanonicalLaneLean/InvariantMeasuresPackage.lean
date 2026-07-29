import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.DiscreteTimeDynamics

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure InvariantMeasuresPackage {D : DiscreteTimeDynamicsPackage} where
  measure : D.stateSpace → ℝ
  invariantUnderMap : Prop
  ergodicProperty : Prop
  invariantUnderMapTerm : invariantUnderMap
  ergodicPropertyTerm : ergodicProperty

def InvariantMeasuresClosed {D : DiscreteTimeDynamicsPackage} (I : InvariantMeasuresPackage D) : Prop :=
  I.invariantUnderMap ∧ I.ergodicProperty

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse
