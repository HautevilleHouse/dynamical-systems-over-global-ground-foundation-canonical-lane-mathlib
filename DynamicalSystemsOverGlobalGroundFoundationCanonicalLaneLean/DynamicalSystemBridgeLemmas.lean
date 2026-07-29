import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.DynamicalSystemAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.stabilityHeld

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine A.object.conclusion

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse