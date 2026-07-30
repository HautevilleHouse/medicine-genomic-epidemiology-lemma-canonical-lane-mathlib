import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure DiseaseModel where
  population : Type u
  diseaseState : Type v
  transmissionRate : Prop
  recoveryRate : Prop
  latencyPeriod : Prop
  genomicStrain : Prop
  populationClosed : Prop
  diseaseStateClosed : Prop
  transmissionRateClosed : transmissionRate
  recoveryRateClosed : recoveryRate
  latencyPeriodClosed : latencyPeriod
  genomicStrainClosed : genomicStrain

def DiseaseModelClosed (D : DiseaseModel) : Prop :=
  D.populationClosed ∧ D.diseaseStateClosed ∧ D.transmissionRate ∧ D.recoveryRate ∧
  D.latencyPeriod ∧ D.genomicStrain

theorem disease_model_closed_from_evidence (D : DiseaseModel) : DiseaseModelClosed D := by
  exact And.intro D.populationClosed
    (And.intro D.diseaseStateClosed
      (And.intro D.transmissionRateClosed
        (And.intro D.recoveryRateClosed
          (And.intro D.latencyPeriodClosed D.genomicStrainClosed))))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse