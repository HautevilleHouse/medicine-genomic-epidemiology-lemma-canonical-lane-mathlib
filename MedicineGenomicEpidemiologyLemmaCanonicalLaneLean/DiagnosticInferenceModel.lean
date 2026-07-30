import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure DiagnosticTest where
  testResult : Type u
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  genomicMarker : Prop
  testResultClosed : Prop
  sensitivityClosed : sensitivity
  specificityClosed : specificity
  positivePredictiveValueClosed : positivePredictiveValue
  negativePredictiveValueClosed : negativePredictiveValue
  genomicMarkerClosed : genomicMarker

def DiagnosticTestClosed (D : DiagnosticTest) : Prop :=
  D.testResultClosed ∧ D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.genomicMarker

theorem diagnostic_test_closed_from_evidence (D : DiagnosticTest) : DiagnosticTestClosed D := by
  exact And.intro D.testResultClosed
    (And.intro D.sensitivityClosed
      (And.intro D.specificityClosed
        (And.intro D.positivePredictiveValueClosed
          (And.intro D.negativePredictiveValueClosed D.genomicMarkerClosed))))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse