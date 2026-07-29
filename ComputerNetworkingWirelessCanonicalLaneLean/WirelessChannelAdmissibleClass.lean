import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure WirelessNetworkNode (M : Type u) where
  node : M
  signalStrength : ℝ
  interferenceLevel : ℝ
  channelCapacity : ℝ

def nodeAdmissible (n : WirelessNetworkNode M) : Prop :=
  n.signalStrength > 0 ∧ n.interferenceLevel ≥ 0

structure WirelessAdmittedObject where
  network : Type u
  nodes : List (WirelessNetworkNode network)
  topology : Prop
  conclusion : ∀ n ∈ nodes, nodeAdmissible n

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse
