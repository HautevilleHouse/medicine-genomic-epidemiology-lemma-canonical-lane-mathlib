import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticCompartmentPackage where
  drugMass : Type u
  compartmentVolume : Type v
  absorptionRate : Type w
  eliminationRate : Type x
  massBalanceODE : Prop
  initialDose : Prop
  clearanceDefined : Prop
  volumeOfDistributionDefined : Prop

structure PharmacokineticCompartmentEvidence (P : PharmacokineticCompartmentPackage) where
  massBalanceODEClosed : P.massBalanceODE
  initialDoseClosed : P.initialDose
  clearanceDefinedClosed : P.clearanceDefined
  volumeOfDistributionDefinedClosed : P.volumeOfDistributionDefined

def PharmacokineticCompartmentClosed (P : PharmacokineticCompartmentPackage) : Prop :=
  P.massBalanceODE ∧ P.initialDose ∧ P.clearanceDefined ∧ P.volumeOfDistributionDefined

theorem pharmacokinetic_compartment_closed_from_evidence
    (P : PharmacokineticCompartmentPackage) (E : PharmacokineticCompartmentEvidence P) :
    PharmacokineticCompartmentClosed P := by
  exact And.intro E.massBalanceODEClosed
    (And.intro E.initialDoseClosed
      (And.intro E.clearanceDefinedClosed E.volumeOfDistributionDefinedClosed))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse