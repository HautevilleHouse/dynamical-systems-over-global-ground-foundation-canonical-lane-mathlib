import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.DynamicalSystemsFoundation

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure InvariantMeasurePackage {C : DynamicalCorePackage} {F : DynamicalCoreEvidence C}
    (G : GlobalGroundPackage F) where
  measureSpace : Type u
  sigmaAlgebra : Type v
  invariantMeasure : Type w
  measurePreservingProperty : Prop
  ergodicityProperty : Prop
  measurePreservingPropertyTerm : measurePreservingProperty
  ergodicityPropertyTerm : ergodicityProperty

structure InvariantMeasureEvidence {C : DynamicalCorePackage} {F : DynamicalCoreEvidence C}
    {G : GlobalGroundPackage F} (M : InvariantMeasurePackage G) where
  measurePreservingPropertyClosed : M.measurePreservingProperty
  ergodicityPropertyClosed : M.ergodicityProperty

def InvariantMeasureClosed {C : DynamicalCorePackage} {F : DynamicalCoreEvidence C}
    {G : GlobalGroundPackage F} (M : InvariantMeasurePackage G) : Prop :=
  M.measurePreservingProperty ∧ M.ergodicityProperty

theorem invariant_measure_closed_from_evidence {C : DynamicalCorePackage} {F : DynamicalCoreEvidence C}
    {G : GlobalGroundPackage F} (M : InvariantMeasurePackage G)
    (E : InvariantMeasureEvidence M) : InvariantMeasureClosed M := by
  exact And.intro E.measurePreservingPropertyClosed E.ergodicityPropertyClosed

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse