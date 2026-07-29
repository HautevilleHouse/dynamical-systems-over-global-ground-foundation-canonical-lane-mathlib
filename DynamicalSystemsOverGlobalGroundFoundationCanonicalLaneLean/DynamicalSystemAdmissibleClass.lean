import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure DynamicalSystemObject where
  stateSpace : Type u
  evolution : stateSpace → stateSpace
  invariantSet : Set stateSpace
  attractorExists : Prop

structure DynamicalAdmittedObject where
  system : DynamicalSystemObject
  attractorCompact : Prop
  basinOpen : Prop
  stabilityHeld : attractorCompact ∧ basinOpen

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse