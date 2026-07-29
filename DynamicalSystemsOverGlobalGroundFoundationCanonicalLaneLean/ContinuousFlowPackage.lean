import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure ContinuousFlowPackage where
  stateSpace : Type u
  flowMap : ℝ → stateSpace → stateSpace
  flowGroupProperty : Prop
  infinitesimalGeneratorDefined : Prop
  flowGroupPropertyTerm : flowGroupProperty
  infinitesimalGeneratorDefinedTerm : infinitesimalGeneratorDefined

def ContinuousFlowClosed (C : ContinuousFlowPackage) : Prop :=
  C.flowGroupProperty ∧ C.infinitesimalGeneratorDefined

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse
