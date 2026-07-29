import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure DynamicalSystemSpace where
  stateSpace : Type
  evolutionMap : stateSpace → stateSpace
  initialCondition : stateSpace

structure DynamicalSystemAdmittedObject where
  system : DynamicalSystemSpace
  invariantMeasureExistence : Prop
  ergodicProperty : Prop
  conclusion : invariantMeasureExistence ∧ ergodicProperty

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse