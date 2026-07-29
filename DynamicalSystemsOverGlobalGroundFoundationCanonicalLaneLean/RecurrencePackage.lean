import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.InvariantMeasurePackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure RecurrencePackage {G : GroundSpaceModel} {F : FlowPackage G}
    (M : InvariantMeasurePackage F) where
  poincareRecurrence : Prop
  almostEverywhereClosure : Prop

structure RecurrenceEvidence {G : GroundSpaceModel} {F : FlowPackage G}
    {M : InvariantMeasurePackage F} (R : RecurrencePackage M) where
  poincareRecurrenceClosed : R.poincareRecurrence
  almostEverywhereClosureClosed : R.almostEverywhereClosure

def RecurrenceClosed {G : GroundSpaceModel} {F : FlowPackage G}
    {M : InvariantMeasurePackage F} (R : RecurrencePackage M) : Prop :=
  R.poincareRecurrence ∧ R.almostEverywhereClosure

theorem recurrence_closed_from_evidence
    {G : GroundSpaceModel} {F : FlowPackage G} {M : InvariantMeasurePackage F}
    (R : RecurrencePackage M) (E : RecurrenceEvidence R) : RecurrenceClosed R := by
  exact And.intro E.poincareRecurrenceClosed E.almostEverywhereClosureClosed

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse