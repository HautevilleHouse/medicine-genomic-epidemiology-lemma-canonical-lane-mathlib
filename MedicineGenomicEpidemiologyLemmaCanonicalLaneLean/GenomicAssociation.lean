import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure GenomicAssociationPackage where
  genomeWideSignificance : Prop
  oddsRatio : Prop
  confidenceInterval : Prop
  effectSize : Prop
  alleleFrequency : Prop
  populationAttributableFraction : Prop

structure GenomicAssociationEvidence (G : GenomicAssociationPackage) where
  genomeWideSignificanceClosed : G.genomeWideSignificance
  oddsRatioClosed : G.oddsRatio
  confidenceIntervalClosed : G.confidenceInterval
  effectSizeClosed : G.effectSize
  alleleFrequencyClosed : G.alleleFrequency
  populationAttributableFractionClosed : G.populationAttributableFraction

def GenomicAssociationClosed (G : GenomicAssociationPackage) : Prop :=
  G.genomeWideSignificance ∧ G.oddsRatio ∧ G.confidenceInterval ∧
  G.effectSize ∧ G.alleleFrequency ∧ G.populationAttributableFraction

theorem genomic_association_closed_from_evidence (G : GenomicAssociationPackage)
    (E : GenomicAssociationEvidence G) : GenomicAssociationClosed G := by
  exact And.intro E.genomeWideSignificanceClosed
    (And.intro E.oddsRatioClosed
      (And.intro E.confidenceIntervalClosed
        (And.intro E.effectSizeClosed
          (And.intro E.alleleFrequencyClosed E.populationAttributableFractionClosed))))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse