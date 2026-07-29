import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  invariantSet : Prop
  groundFoundation : Prop
  conclusion : invariantSet ∧ groundFoundation

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.invariantSet ∧ O.groundFoundation

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse