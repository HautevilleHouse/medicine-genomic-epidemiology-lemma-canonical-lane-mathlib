import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure CausalInferencePackage where
  potentialOutcomes : Type u
  causalDAG : Type v
  backDoorCriterion : Prop
  frontDoorCriterion : Prop
  instrumentVariable : Prop
  propensityScore : Prop
  marginalStructuralModel : Prop

structure CausalInferenceEvidence (C : CausalInferencePackage) where
  backDoorCriterionClosed : C.backDoorCriterion
  frontDoorCriterionClosed : C.frontDoorCriterion
  instrumentVariableClosed : C.instrumentVariable
  propensityScoreClosed : C.propensityScore
  marginalStructuralModelClosed : C.marginalStructuralModel

def CausalInferenceClosed (C : CausalInferencePackage) : Prop :=
  C.backDoorCriterion ∧ C.frontDoorCriterion ∧ C.instrumentVariable ∧ C.propensityScore ∧ C.marginalStructuralModel

theorem causal_inference_closed_from_evidence
    (C : CausalInferencePackage) (E : CausalInferenceEvidence C) :
    CausalInferenceClosed C := by
  exact And.intro E.backDoorCriterionClosed
    (And.intro E.frontDoorCriterionClosed
      (And.intro E.instrumentVariableClosed
        (And.intro E.propensityScoreClosed E.marginalStructuralModelClosed)))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse