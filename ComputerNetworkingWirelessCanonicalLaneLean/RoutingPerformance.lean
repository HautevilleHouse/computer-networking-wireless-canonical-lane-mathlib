import ComputerNetworkingWirelessCanonicalLaneLean.MACProtocol

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure RoutingPerformancePackage {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} where
  routingMetric : Type u
  convergenceTime : Prop
  pathOptimality : Prop
  loadBalancing : Prop
  scalability : Prop

structure RoutingPerformanceEvidence {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} (R : RoutingPerformancePackage C M) where
  convergenceTimeClosed : R.convergenceTime
  pathOptimalityClosed : R.pathOptimality
  loadBalancingClosed : R.loadBalancing
  scalabilityClosed : R.scalability

def RoutingPerformanceClosed {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} (R : RoutingPerformancePackage C M) : Prop :=
  R.convergenceTime ∧ R.pathOptimality ∧ R.loadBalancing ∧ R.scalability

theorem routing_performance_closed_from_evidence {C : WirelessChannelPackage}
    {M : MACProtocolPackage C} (R : RoutingPerformancePackage C M)
    (E : RoutingPerformanceEvidence R) : RoutingPerformanceClosed R := by
  exact And.intro E.convergenceTimeClosed
    (And.intro E.pathOptimalityClosed
      (And.intro E.loadBalancingClosed E.scalabilityClosed))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse