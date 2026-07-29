import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean

structure LyapunovFunctionPackage where
  phaseSpace : Type u
  flow : phaseSpace → ℝ → phaseSpace
  equilibrium : phaseSpace
  functionVal : phaseSpace → ℝ
  positiveDefinite : ∀ x ≠ equilibrium, functionVal x > 0 ∧ functionVal equilibrium = 0
  decreasingOrbits : ∀ x ≠ equilibrium, ∀ t > 0, functionVal (flow x t) < functionVal x
  continuity : Prop

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  decreasingOrbitsClosed : L.decreasingOrbits
  continuityClosed : L.continuity

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.positiveDefinite ∧ L.decreasingOrbits ∧ L.continuity

theorem lyapunov_function_closed_from_evidence (L : LyapunovFunctionPackage)
    (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.decreasingOrbitsClosed E.continuityClosed)

end DynamicalSystemsOverGlobalGroundFoundationCanonicalLaneLean
end HautevilleHouse