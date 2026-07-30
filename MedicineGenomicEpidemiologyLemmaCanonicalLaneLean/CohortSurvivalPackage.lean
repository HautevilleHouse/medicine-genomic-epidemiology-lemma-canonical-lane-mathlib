import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure CohortSurvivalPackage where
  hazardRatio : Prop
  proportionalHazard : Prop
  censoringIndependent : Prop
  baselineHazardEstimated : Prop

structure CohortSurvivalEvidence (C : CohortSurvivalPackage) where
  hazardRatioClosed : C.hazardRatio
  proportionalHazardClosed : C.proportionalHazard
  censoringIndependentClosed : C.censoringIndependent
  baselineHazardEstimatedClosed : C.baselineHazardEstimated

def CohortSurvivalClosed (C : CohortSurvivalPackage) : Prop :=
  C.hazardRatio ∧ C.proportionalHazard ∧ C.censoringIndependent ∧ C.baselineHazardEstimated

theorem cohort_survival_closed_from_evidence (C : CohortSurvivalPackage) (E : CohortSurvivalEvidence C) :
    CohortSurvivalClosed C := by
  exact And.intro E.hazardRatioClosed (And.intro E.proportionalHazardClosed (And.intro E.censoringIndependentClosed E.baselineHazardEstimatedClosed))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse