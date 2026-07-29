import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure GlobalAttractorPackage where
  phaseSpace : Type u
  flow : phaseSpace → ℝ → phaseSpace
  attractorSet : Set phaseSpace
  forwardInvariance : ∀ x ∈ attractorSet, ∀ t ≥ 0, flow x t ∈ attractorSet
  attractingProperty : Prop
  compactness : Prop
  invarianceUnderFlow : Prop

structure GlobalAttractorEvidence (G : GlobalAttractorPackage) where
  forwardInvarianceClosed : G.forwardInvariance
  attractingPropertyClosed : G.attractingProperty
  compactnessClosed : G.compactness
  invarianceUnderFlowClosed : G.invarianceUnderFlow

def GlobalAttractorClosed (G : GlobalAttractorPackage) : Prop :=
  G.forwardInvariance ∧ G.attractingProperty ∧ G.compactness ∧ G.invarianceUnderFlow

theorem global_attractor_closed_from_evidence (G : GlobalAttractorPackage)
    (E : GlobalAttractorEvidence G) : GlobalAttractorClosed G := by
  exact And.intro E.forwardInvarianceClosed
    (And.intro E.attractingPropertyClosed
      (And.intro E.compactnessClosed E.invarianceUnderFlowClosed))

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse