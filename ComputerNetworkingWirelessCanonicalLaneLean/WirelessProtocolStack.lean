import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure WirelessProtocolLayer where
  physicalLayer : Prop
  macLayer : Prop
  networkLayer : Prop
  transportLayer : Prop
  applicationLayer : Prop

structure ProtocolStackPackage where
  layers : WirelessProtocolLayer
  crossLayerOptimization : Prop
  stackCompleteness : Prop

structure ProtocolStackEvidence (P : ProtocolStackPackage) where
  layersClosed : P.layers.physicalLayer ∧ P.layers.macLayer ∧ P.layers.networkLayer ∧ P.layers.transportLayer ∧ P.layers.applicationLayer
  crossLayerOptimizationClosed : P.crossLayerOptimization
  stackCompletenessClosed : P.stackCompleteness

def ProtocolStackClosed (P : ProtocolStackPackage) : Prop :=
  (P.layers.physicalLayer ∧ P.layers.macLayer ∧ P.layers.networkLayer ∧ P.layers.transportLayer ∧ P.layers.applicationLayer) ∧
  P.crossLayerOptimization ∧ P.stackCompleteness

theorem protocol_stack_closed_from_evidence (P : ProtocolStackPackage) (E : ProtocolStackEvidence P) : ProtocolStackClosed P := by
  exact And.intro E.layersClosed (And.intro E.crossLayerOptimizationClosed E.stackCompletenessClosed)

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse