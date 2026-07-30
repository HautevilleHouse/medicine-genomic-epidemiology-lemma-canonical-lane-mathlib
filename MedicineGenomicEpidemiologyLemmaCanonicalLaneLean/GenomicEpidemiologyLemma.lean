import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicineGenomicEpidemiologyLemmaCanonicalLaneLean.CompartmentModel
import HautevilleHouse.MedicineGenomicEpidemiologyLemmaCanonicalLaneLean.Pharmacokinetics
import HautevilleHouse.MedicineGenomicEpidemiologyLemmaCanonicalLaneLean.DiagnosticInference
import HautevilleHouse.MedicineGenomicEpidemiologyLemmaCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure GenomicEpidemiologyLemma where
  compartmentModel : CompartmentModelParameters
  sirModel : SIRModel compartmentModel
  dosingRegimen : DrugDosingRegimen
  pkModel : PharmacokineticModel dosingRegimen
  diagnosticTest : DiagnosticTest
  diModel : DiagnosticInferenceModel diagnosticTest
  censoringMechanism : CensoringMechanism
  survivalModel : SurvivalModel censoringMechanism
  lemmaConclusion : Prop

structure GenomicEpidemiologyLemmaEvidence (L : GenomicEpidemiologyLemma) where
  compartmentModelClosed : SIRModelClosed L.compartmentModel L.sirModel
  pkModelClosed : PharmacokineticModelClosed L.dosingRegimen L.pkModel
  diModelClosed : DiagnosticInferenceModelClosed L.diagnosticTest L.diModel
  survivalModelClosed : SurvivalModelClosed L.censoringMechanism L.survivalModel
  lemmaConclusionClosed : L.lemmaConclusion

def GenomicEpidemiologyLemmaClosed (L : GenomicEpidemiologyLemma) : Prop :=
  SIRModelClosed L.compartmentModel L.sirModel ∧
  PharmacokineticModelClosed L.dosingRegimen L.pkModel ∧
  DiagnosticInferenceModelClosed L.diagnosticTest L.diModel ∧
  SurvivalModelClosed L.censoringMechanism L.survivalModel ∧
  L.lemmaConclusion

theorem genomic_epidemiology_lemma_closed_from_evidence (L : GenomicEpidemiologyLemma) (E : GenomicEpidemiologyLemmaEvidence L) :
  GenomicEpidemiologyLemmaClosed L := by
  exact And.intro E.compartmentModelClosed
    (And.intro E.pkModelClosed
      (And.intro E.diModelClosed
        (And.intro E.survivalModelClosed E.lemmaConclusionClosed)))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse