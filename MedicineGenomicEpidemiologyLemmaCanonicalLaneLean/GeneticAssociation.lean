import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure GeneticAssociationPackage where
  snpList : Type u
  phenotypeDefinition : Type v
  logisticRegression : Prop
  linearRegression : Prop
  multipleTestingCorrection : Prop
  populationStratification : Prop
  geneEnvironmentInteraction : Prop
  polygenicRiskScore : Prop

structure GeneticAssociationEvidence (G : GeneticAssociationPackage) where
  logisticRegressionClosed : G.logisticRegression
  linearRegressionClosed : G.linearRegression
  multipleTestingCorrectionClosed : G.multipleTestingCorrection
  populationStratificationClosed : G.populationStratification
  geneEnvironmentInteractionClosed : G.geneEnvironmentInteraction
  polygenicRiskScoreClosed : G.polygenicRiskScore

def GeneticAssociationClosed (G : GeneticAssociationPackage) : Prop :=
  G.logisticRegression ∧ G.linearRegression ∧ G.multipleTestingCorrection ∧ G.populationStratification ∧ G.geneEnvironmentInteraction ∧ G.polygenicRiskScore

theorem genetic_association_closed_from_evidence
    (G : GeneticAssociationPackage) (E : GeneticAssociationEvidence G) :
    GeneticAssociationClosed G := by
  exact And.intro E.logisticRegressionClosed
    (And.intro E.linearRegressionClosed
      (And.intro E.multipleTestingCorrectionClosed
        (And.intro E.populationStratificationClosed
          (And.intro E.geneEnvironmentInteractionClosed E.polygenicRiskScoreClosed))))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse