import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure DrugDosingRegimen where
  dose : Type
  interval : Type
  route : Type

structure PharmacokineticModel (D : DrugDosingRegimen) where
  absorption : Type
  distribution : Type
  elimination : Type
  equationsClosed : Prop

structure PharmacokineticEvidence (D : DrugDosingRegimen) (M : PharmacokineticModel D) where
  equationsClosed : M.equationsClosed

def PharmacokineticModelClosed (D : DrugDosingRegimen) (M : PharmacokineticModel D) : Prop :=
  M.equationsClosed

theorem pharmacokinetic_model_closed_from_evidence (D : DrugDosingRegimen) (M : PharmacokineticModel D) (E : PharmacokineticEvidence D M) :
  PharmacokineticModelClosed D M := by
  exact E.equationsClosed

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse