import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  susceptible : Type
  exposed : Type
  infected : Type
  recovered : Type
  transmissionRate : Float
  incubationPeriod : Float
  recoveryRate : Float
  equationsWellDefined : Prop
  positivityPreserving : Prop
  steadyStateExists : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  equationsWellDefinedClosed : C.equationsWellDefined
  positivityPreservingClosed : C.positivityPreserving
  steadyStateExistsClosed : C.steadyStateExists

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.equationsWellDefined ∧ C.positivityPreserving ∧ C.steadyStateExists

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.equationsWellDefinedClosed
    (And.intro E.positivityPreservingClosed E.steadyStateExistsClosed)

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
