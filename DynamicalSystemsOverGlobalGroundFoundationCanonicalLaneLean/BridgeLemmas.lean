import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion.1 ∧ A.object.conclusion.2

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse