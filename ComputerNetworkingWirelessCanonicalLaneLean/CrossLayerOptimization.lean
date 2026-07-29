import ComputerNetworkingWirelessCanonicalLaneLean.RoutingPerformance

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure CrossLayerOptimizationPackage {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} {R : RoutingPerformancePackage C M} where
  jointDesign : Prop
  crossLayerFeedback : Prop
  adaptationGain : Prop
  stabilityMargin : Prop

structure CrossLayerOptimizationEvidence {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} {R : RoutingPerformancePackage C M}
    (O : CrossLayerOptimizationPackage C M R) where
  jointDesignClosed : O.jointDesign
  crossLayerFeedbackClosed : O.crossLayerFeedback
  adaptationGainClosed : O.adaptationGain
  stabilityMarginClosed : O.stabilityMargin

def CrossLayerOptimizationClosed {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} {R : RoutingPerformancePackage C M}
    (O : CrossLayerOptimizationPackage C M R) : Prop :=
  O.jointDesign ∧ O.crossLayerFeedback ∧ O.adaptationGain ∧ O.stabilityMargin

theorem cross_layer_optimization_closed_from_evidence {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} {R : RoutingPerformancePackage C M}
    (O : CrossLayerOptimizationPackage C M R)
    (E : CrossLayerOptimizationEvidence O) : CrossLayerOptimizationClosed O := by
  exact And.intro E.jointDesignClosed
    (And.intro E.crossLayerFeedbackClosed
      (And.intro E.adaptationGainClosed E.stabilityMarginClosed))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse