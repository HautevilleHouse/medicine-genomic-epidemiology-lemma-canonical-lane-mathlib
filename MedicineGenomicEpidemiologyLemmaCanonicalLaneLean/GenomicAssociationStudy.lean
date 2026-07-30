import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyLemmaCanonicalLaneLean

structure GenomicAssociation where
  geneticVariant : Type u
  phenotype : Prop
  oddsRatio : Prop
  pValue : Prop
  populationStratification : Prop
  variantClosed : Prop
  phenotypeClosed : phenotype
  oddsRatioClosed : oddsRatio
  pValueClosed : pValue
  populationStratificationClosed : populationStratification

def GenomicAssociationClosed (G : GenomicAssociation) : Prop :=
  G.variantClosed ∧ G.phenotype ∧ G.oddsRatio ∧ G.pValue ∧ G.populationStratification

theorem genomic_association_closed_from_evidence (G : GenomicAssociation) : GenomicAssociationClosed G := by
  exact And.intro G.variantClosed
    (And.intro G.phenotypeClosed
      (And.intro G.oddsRatioClosed
        (And.intro G.pValueClosed G.populationStratificationClosed)))

end MedicineGenomicEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse