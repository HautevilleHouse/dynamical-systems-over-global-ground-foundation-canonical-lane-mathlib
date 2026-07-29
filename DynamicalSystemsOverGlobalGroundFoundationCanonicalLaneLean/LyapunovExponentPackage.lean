import DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean.InvariantManifoldPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure LyapunovExponentPackage (A : AdmissibleClass) (I : InvariantManifoldPackage A) where
  exponentValues : List ℝ
  osgoodCondition : Prop
  multiplicativeErgodicTheorem : Prop

structure LyapunovExponentEvidence (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (L : LyapunovExponentPackage A I) where
  exponentComputed : L.exponentValues ≠ []
  osgoodClosed : L.osgoodCondition
  ergodicClosed : L.multiplicativeErgodicTheorem

def LyapunovExponentClosed (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (L : LyapunovExponentPackage A I) : Prop :=
  L.exponentValues ≠ [] ∧ L.osgoodCondition ∧ L.multiplicativeErgodicTheorem

theorem lyapunov_exponent_closed_from_evidence
    (A : AdmissibleClass) (I : InvariantManifoldPackage A)
    (L : LyapunovExponentPackage A I) (E : LyapunovExponentEvidence A I L) :
    LyapunovExponentClosed A I L := by
  exact And.intro E.exponentComputed (And.intro E.osgoodClosed E.ergodicClosed)

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse