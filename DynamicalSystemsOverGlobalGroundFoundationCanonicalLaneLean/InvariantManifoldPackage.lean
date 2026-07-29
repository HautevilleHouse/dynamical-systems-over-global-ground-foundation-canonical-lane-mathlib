import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.DynamicalSystemBridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure InvariantManifoldPackage (A : AdmissibleClass) where
  centerManifold : Set A.object.system.stateSpace
  stableManifold : Set A.object.system.stateSpace
  unstableManifold : Set A.object.system.stateSpace
  invarianceUnderFlow : Prop
  smoothness : Prop

structure InvariantManifoldEvidence (A : AdmissibleClass) (I : InvariantManifoldPackage A) where
  invarianceClosed : I.invarianceUnderFlow
  smoothnessClosed : I.smoothness

def InvariantManifoldClosed (A : AdmissibleClass) (I : InvariantManifoldPackage A) : Prop :=
  I.invarianceUnderFlow ∧ I.smoothness

theorem invariant_manifold_closed_from_evidence
    (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (E : InvariantManifoldEvidence A I) : InvariantManifoldClosed A I := by
  exact And.intro E.invarianceClosed E.smoothnessClosed

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse