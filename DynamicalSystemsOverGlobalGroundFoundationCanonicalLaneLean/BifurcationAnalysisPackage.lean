import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.ContinuousFlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure BifurcationAnalysisPackage {C : ContinuousFlowPackage} where
  parameterSpace : Type u
  bifurcationPoint : C.stateSpace × C.parameterSpace
  topologyChangeDetection : Prop
  criticalityConditions : Prop
  topologyChangeDetectionTerm : topologyChangeDetection
  criticalityConditionsTerm : criticalityConditions

def BifurcationClosed {C : ContinuousFlowPackage} (B : BifurcationAnalysisPackage C) : Prop :=
  B.topologyChangeDetection ∧ B.criticalityConditions

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse
