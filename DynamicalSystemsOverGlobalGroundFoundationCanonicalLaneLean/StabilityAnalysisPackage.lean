import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.ContinuousFlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure StabilityAnalysisPackage {C : ContinuousFlowPackage} where
  equilibriumPoint : C.stateSpace
  lyapunovFunction : C.stateSpace → ℝ
  asymptoticStability : Prop
  lyapunovFunctionDefined : Prop
  asymptoticStabilityTerm : asymptoticStability
  lyapunovFunctionDefinedTerm : lyapunovFunctionDefined

def StabilityClosed {C : ContinuousFlowPackage} (S : StabilityAnalysisPackage C) : Prop :=
  S.asymptoticStability ∧ S.lyapunovFunctionDefined

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse
