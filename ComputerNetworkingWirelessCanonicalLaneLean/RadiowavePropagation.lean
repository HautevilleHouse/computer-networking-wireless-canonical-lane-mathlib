import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure RadiowavePropagation where
  freeSpaceLoss : Prop
  reflectionCoefficient : Prop
  diffractionParam : Prop
  scatteringCrossSection : Prop
  pathLossModel : Prop

structure RadiowavePropagationEvidence (R : RadiowavePropagation) where
  freeSpaceLossClosed : R.freeSpaceLoss
  reflectionCoefficientClosed : R.reflectionCoefficient
  diffractionParamClosed : R.diffractionParam
  scatteringCrossSectionClosed : R.scatteringCrossSection
  pathLossModelClosed : R.pathLossModel

def RadiowavePropagationClosed (R : RadiowavePropagation) : Prop :=
  R.freeSpaceLoss ∧ R.reflectionCoefficient ∧ R.diffractionParam ∧ R.scatteringCrossSection ∧ R.pathLossModel

theorem radiowave_propagation_closed_from_evidence (R : RadiowavePropagation) (E : RadiowavePropagationEvidence R) :
    RadiowavePropagationClosed R := by
  exact And.intro E.freeSpaceLossClosed
    (And.intro E.reflectionCoefficientClosed
      (And.intro E.diffractionParamClosed
        (And.intro E.scatteringCrossSectionClosed E.pathLossModelClosed)))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse