import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.GroundSpaceModel

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure FlowPackage (G : GroundSpaceModel) where
  timeDomain : Type v
  timeTopology : TopologicalSpace timeDomain
  flowMap : timeDomain → G.carrier → G.carrier
  groupLaw : Prop
  smoothAction : Prop

structure FlowEvidence {G : GroundSpaceModel} (F : FlowPackage G) where
  groupLawClosed : F.groupLaw
  smoothActionClosed : F.smoothAction

def FlowClosed {G : GroundSpaceModel} (F : FlowPackage G) : Prop :=
  F.groupLaw ∧ F.smoothAction

theorem flow_closed_from_evidence {G : GroundSpaceModel}
    (F : FlowPackage G) (E : FlowEvidence F) : FlowClosed F := by
  exact And.intro E.groupLawClosed E.smoothActionClosed

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse