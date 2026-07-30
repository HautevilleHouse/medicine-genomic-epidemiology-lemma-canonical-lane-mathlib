import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure SurvivalCohort where
  timeToEvent : Type u
  censoringIndicator : Prop
  hazardFunction : Prop
  survivalFunction : Prop
  genomicCovariate : Prop
  timeClosed : Prop
  censoringIndicatorClosed : censoringIndicator
  hazardFunctionClosed : hazardFunction
  survivalFunctionClosed : survivalFunction
  genomicCovariateClosed : genomicCovariate

def SurvivalCohortClosed (S : SurvivalCohort) : Prop :=
  S.timeClosed ∧ S.censoringIndicator ∧ S.hazardFunction ∧ S.survivalFunction ∧ S.genomicCovariate

theorem survival_cohort_closed_from_evidence (S : SurvivalCohort) : SurvivalCohortClosed S := by
  exact And.intro S.timeClosed
    (And.intro S.censoringIndicatorClosed
      (And.intro S.hazardFunctionClosed
        (And.intro S.survivalFunctionClosed S.genomicCovariateClosed)))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse