import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure DiagnosticInferencePackage where
  priorProbabilities : Prop
  likelihoodFunction : Prop
  posteriorDistribution : Prop
  decisionThresholds : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  priorProbabilitiesClosed : D.priorProbabilities
  likelihoodFunctionClosed : D.likelihoodFunction
  posteriorDistributionClosed : D.posteriorDistribution
  decisionThresholdsClosed : D.decisionThresholds

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.priorProbabilities ∧ D.likelihoodFunction ∧ D.posteriorDistribution ∧ D.decisionThresholds

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.priorProbabilitiesClosed (And.intro E.likelihoodFunctionClosed (And.intro E.posteriorDistributionClosed E.decisionThresholdsClosed))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse