import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure GroundSpaceModel where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  riemannianMetric : Prop
  complete : Prop

structure GroundSpaceEvidence (G : GroundSpaceModel) where
  smoothStructureClosed : G.smoothStructure
  riemannianMetricClosed : G.riemannianMetric
  completeClosed : G.complete

def GroundSpaceClosed (G : GroundSpaceModel) : Prop :=
  G.smoothStructure ∧ G.riemannianMetric ∧ G.complete

theorem ground_space_closed_from_evidence (G : GroundSpaceModel)
    (E : GroundSpaceEvidence G) : GroundSpaceClosed G := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.riemannianMetricClosed E.completeClosed)

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse