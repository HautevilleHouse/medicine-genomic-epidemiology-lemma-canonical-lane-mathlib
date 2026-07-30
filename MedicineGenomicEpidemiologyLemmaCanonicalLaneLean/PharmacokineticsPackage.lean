import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  doseResponse : Prop
  steadyStateConcentration : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  doseResponseClosed : P.doseResponse
  steadyStateConcentrationClosed : P.steadyStateConcentration

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.doseResponse ∧ P.steadyStateConcentration

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.absorptionRateClosed (And.intro E.distributionVolumeClosed (And.intro E.eliminationRateClosed (And.intro E.doseResponseClosed E.steadyStateConcentrationClosed)))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse