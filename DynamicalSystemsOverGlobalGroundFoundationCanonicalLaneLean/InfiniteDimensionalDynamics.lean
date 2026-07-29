import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure InfiniteDimensionalDynamicsPackage where
  stateSpace : Type u
  timeDomain : Type v
  evolutionOperator : stateSpace → timeDomain → stateSpace
  wellPosedness : Prop
  globalExistence : Prop
  continuousDependence : Prop
  compactAttractorContracting : Prop

structure InfiniteDimensionalDynamicsEvidence (I : InfiniteDimensionalDynamicsPackage) where
  wellPosednessClosed : I.wellPosedness
  globalExistenceClosed : I.globalExistence
  continuousDependenceClosed : I.continuousDependence
  compactAttractorContractingClosed : I.compactAttractorContracting

def InfiniteDimensionalDynamicsClosed (I : InfiniteDimensionalDynamicsPackage) : Prop :=
  I.wellPosedness ∧ I.globalExistence ∧ I.continuousDependence ∧ I.compactAttractorContracting

theorem infinite_dimensional_dynamics_closed_from_evidence
    (I : InfiniteDimensionalDynamicsPackage)
    (E : InfiniteDimensionalDynamicsEvidence I) : InfiniteDimensionalDynamicsClosed I := by
  exact And.intro E.wellPosednessClosed
    (And.intro E.globalExistenceClosed
      (And.intro E.continuousDependenceClosed E.compactAttractorContractingClosed))

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse