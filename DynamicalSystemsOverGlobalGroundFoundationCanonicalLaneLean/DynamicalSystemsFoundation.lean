import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure DynamicalCorePackage where
  stateSpace : Type u
  timeDomain : Type v
  evolutionMap : timeDomain → stateSpace → stateSpace
  semiflowProperty : Prop
  continuousTime : Prop
  semiflowPropertyTerm : semiflowProperty
  continuousTimeTerm : continuousTime

structure DynamicalCoreEvidence (C : DynamicalCorePackage) where
  semiflowPropertyClosed : C.semiflowProperty
  continuousTimeClosed : C.continuousTime

def DynamicalCoreClosed (C : DynamicalCorePackage) : Prop :=
  C.semiflowProperty ∧ C.continuousTime

theorem dynamical_core_closed_from_evidence (C : DynamicalCorePackage)
    (E : DynamicalCoreEvidence C) : DynamicalCoreClosed C := by
  exact And.intro E.semiflowPropertyClosed E.continuousTimeClosed

structure GlobalGroundPackage {C : DynamicalCorePackage} (F : DynamicalCoreEvidence C) where
  groundManifold : Type w
  groundMetric : Type x
  completenessProperty : Prop
  seperabilityProperty : Prop
  globalAttractorExists : Prop
  completenessPropertyTerm : completenessProperty
  seperabilityPropertyTerm : seperabilityProperty
  globalAttractorExistsTerm : globalAttractorExists

structure GlobalGroundEvidence {C : DynamicalCorePackage} {F : DynamicalCoreEvidence C}
    (G : GlobalGroundPackage F) where
  completenessPropertyClosed : G.completenessProperty
  seperabilityPropertyClosed : G.seperabilityProperty
  globalAttractorExistsClosed : G.globalAttractorExists

def GlobalGroundClosed {C : DynamicalCorePackage} {F : DynamicalCoreEvidence C}
    (G : GlobalGroundPackage F) : Prop :=
  G.completenessProperty ∧ G.seperabilityProperty ∧ G.globalAttractorExists

theorem global_ground_closed_from_evidence {C : DynamicalCorePackage} {F : DynamicalCoreEvidence C}
    (G : GlobalGroundPackage F) (E : GlobalGroundEvidence G) : GlobalGroundClosed G := by
  exact And.intro E.completenessPropertyClosed
    (And.intro E.seperabilityPropertyClosed E.globalAttractorExistsClosed)

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse