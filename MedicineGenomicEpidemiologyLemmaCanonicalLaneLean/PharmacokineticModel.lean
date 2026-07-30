import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticModelPackage where
  drugConcentration : Type
  dosingRegimen : Type
  absorptionRate : Float
  eliminationRate : Float
  volumeOfDistribution : Float
  linearKinetics : Prop
  steadyStateConcentration : Prop
  bioavailabilityDefined : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  linearKineticsClosed : P.linearKinetics
  steadyStateConcentrationClosed : P.steadyStateConcentration
  bioavailabilityDefinedClosed : P.bioavailabilityDefined

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.linearKinetics ∧ P.steadyStateConcentration ∧ P.bioavailabilityDefined

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.linearKineticsClosed
    (And.intro E.steadyStateConcentrationClosed E.bioavailabilityDefinedClosed)

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
