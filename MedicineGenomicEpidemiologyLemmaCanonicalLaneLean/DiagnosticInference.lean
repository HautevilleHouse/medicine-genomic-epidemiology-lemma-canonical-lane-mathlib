import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Float
  specificity : Float
  prevalence : Float
  positivePredictiveValue : Float
  negativePredictiveValue : Float
  bayesTheoremApplied : Prop
  thresholdAnalysis : Prop
  rocCurveDefined : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  bayesTheoremAppliedClosed : D.bayesTheoremApplied
  thresholdAnalysisClosed : D.thresholdAnalysis
  rocCurveDefinedClosed : D.rocCurveDefined

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.bayesTheoremApplied ∧ D.thresholdAnalysis ∧ D.rocCurveDefined

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact And.intro E.bayesTheoremAppliedClosed
    (And.intro E.thresholdAnalysisClosed E.rocCurveDefinedClosed)

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
