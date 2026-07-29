import ComputerNetworkingWirelessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure WirelessChannelPackage where
  frequencyBand : Type u
  pathLossModel : Type v
  fadingModel : Type w
  interferenceModel : Type x
  channelCapacityUpperBound : Prop
  capturesDiscretePropagation : Prop
  managesMultipath : Prop
  noiseCharacteristics : Prop

structure WirelessChannelEvidence (C : WirelessChannelPackage) where
  channelCapacityUpperBoundClosed : C.channelCapacityUpperBound
  capturesDiscretePropagationClosed : C.capturesDiscretePropagation
  managesMultipathClosed : C.managesMultipath
  noiseCharacteristicsClosed : C.noiseCharacteristics

def WirelessChannelClosed (C : WirelessChannelPackage) : Prop :=
  C.channelCapacityUpperBound ∧ C.capturesDiscretePropagation ∧
  C.managesMultipath ∧ C.noiseCharacteristics

theorem wireless_channel_closed_from_evidence (C : WirelessChannelPackage)
    (E : WirelessChannelEvidence C) : WirelessChannelClosed C := by
  exact And.intro E.channelCapacityUpperBoundClosed
    (And.intro E.capturesDiscretePropagationClosed
      (And.intro E.managesMultipathClosed E.noiseCharacteristicsClosed))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse