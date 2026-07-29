import HautevilleHouse.ComputerNetworkingWirelessCanonicalLaneLean.WirelessChannelAdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure SignalPropagationModel where
  pathLossExponent : ℝ
  fadingModel : Type u
  pathLossExponentValid : pathLossExponent > 0
  fadingModelDefined : Prop

structure SignalPropagationEvidence (S : SignalPropagationModel) where
  pathLossExponentPositive : S.pathLossExponentValid
  fadingModelDefinedClosed : S.fadingModelDefined

def SignalPropagationClosed (S : SignalPropagationModel) : Prop :=
  S.pathLossExponentValid ∧ S.fadingModelDefined

theorem signal_propagation_closed_from_evidence (S : SignalPropagationModel)
    (E : SignalPropagationEvidence S) : SignalPropagationClosed S := by
  exact And.intro E.pathLossExponentPositive E.fadingModelDefinedClosed

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse
