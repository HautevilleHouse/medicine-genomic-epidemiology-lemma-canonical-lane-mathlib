import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicineGenomicEpidemiologyLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

def ConstrainedMedicineGenomicEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medicine_genomic_epidemiology_endgame (A : AdmissibleClass) :
  ConstrainedMedicineGenomicEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse