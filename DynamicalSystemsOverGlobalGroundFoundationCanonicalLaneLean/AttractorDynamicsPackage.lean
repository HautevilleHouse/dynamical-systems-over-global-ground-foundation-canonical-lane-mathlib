import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.LyapunovExponentPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure AttractorDynamicsPackage (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (L : LyapunovExponentPackage A I) where
  attractorSet : Set A.object.system.stateSpace
  basinOfAttraction : Set A.object.system.stateSpace
  asymptoticPhaseVolume : Prop
  structuralStability : Prop

structure AttractorDynamicsEvidence (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (L : LyapunovExponentPackage A I) (D : AttractorDynamicsPackage A I L) where
  asymptoticPhaseVolumeClosed : D.asymptoticPhaseVolume
  structuralStabilityClosed : D.structuralStability

def AttractorDynamicsClosed (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (L : LyapunovExponentPackage A I) (D : AttractorDynamicsPackage A I L) : Prop :=
  D.asymptoticPhaseVolume ∧ D.structuralStability

theorem attractor_dynamics_closed_from_evidence
    (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (L : LyapunovExponentPackage A I) (D : AttractorDynamicsPackage A I L)
    (E : AttractorDynamicsEvidence A I L D) : AttractorDynamicsClosed A I L D := by
  exact And.intro E.asymptoticPhaseVolumeClosed E.structuralStabilityClosed

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse