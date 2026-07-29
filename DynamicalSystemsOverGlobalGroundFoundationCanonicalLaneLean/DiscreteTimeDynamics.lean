import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure DiscreteTimeDynamicsPackage where
  stateSpace : Type u
  transitionMap : stateSpace → stateSpace
  initialCondition : stateSpace
  iteratedMap : ℕ → stateSpace → stateSpace
  orbitDefined : Prop
  orbitDefinedTerm : orbitDefined

def DiscreteTimeDynamicsClosed (D : DiscreteTimeDynamicsPackage) : Prop :=
  D.orbitDefined

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse
