import HautevilleHouse.ComputerNetworkingWirelessCanonicalLaneLean.WirelessChannelAdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure ProtocolStackPackage where
  physicalLayer : Type u
  macLayer : Type v
  networkLayer : Type w
  transportLayer : Type x
  applicationLayer : Type y
  physicalLayerDefined : Prop
  macLayerDefined : Prop
  networkLayerDefined : Prop
  transportLayerDefined : Prop
  applicationLayerDefined : Prop

structure ProtocolStackEvidence (P : ProtocolStackPackage) where
  physicalLayerClosed : P.physicalLayerDefined
  macLayerClosed : P.macLayerDefined
  networkLayerClosed : P.networkLayerDefined
  transportLayerClosed : P.transportLayerDefined
  applicationLayerClosed : P.applicationLayerDefined

def ProtocolStackClosed (P : ProtocolStackPackage) : Prop :=
  P.physicalLayerDefined ∧ P.macLayerDefined ∧ P.networkLayerDefined ∧
  P.transportLayerDefined ∧ P.applicationLayerDefined

theorem protocol_stack_closed_from_evidence (P : ProtocolStackPackage)
    (E : ProtocolStackEvidence P) : ProtocolStackClosed P := by
  exact And.intro E.physicalLayerClosed
    (And.intro E.macLayerClosed
      (And.intro E.networkLayerClosed
        (And.intro E.transportLayerClosed E.applicationLayerClosed)))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse
