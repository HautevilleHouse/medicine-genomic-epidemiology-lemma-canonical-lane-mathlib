import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  stateTransitionRates : Prop
  compartmentBalance : Prop
  absorptionPaths : Prop
  initialConditions : Prop
  steadyStateExistence : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  stateTransitionRatesClosed : C.stateTransitionRates
  compartmentBalanceClosed : C.compartmentBalance
  absorptionPathsClosed : C.absorptionPaths
  initialConditionsClosed : C.initialConditions
  steadyStateExistenceClosed : C.steadyStateExistence

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.stateTransitionRates ∧ C.compartmentBalance ∧ C.absorptionPaths ∧ C.initialConditions ∧ C.steadyStateExistence

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.stateTransitionRatesClosed (And.intro E.compartmentBalanceClosed (And.intro E.absorptionPathsClosed (And.intro E.initialConditionsClosed E.steadyStateExistenceClosed)))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse