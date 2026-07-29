import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure NetworkCapacity where
  shannonCapacity : Prop
  multipleAccessCapacity : Prop
  broadcastCapacity : Prop
  relayCapacity : Prop
  interferenceLimit : Prop

structure NetworkCapacityEvidence (N : NetworkCapacity) where
  shannonCapacityClosed : N.shannonCapacity
  multipleAccessCapacityClosed : N.multipleAccessCapacity
  broadcastCapacityClosed : N.broadcastCapacity
  relayCapacityClosed : N.relayCapacity
  interferenceLimitClosed : N.interferenceLimit

def NetworkCapacityClosed (N : NetworkCapacity) : Prop :=
  N.shannonCapacity ∧ N.multipleAccessCapacity ∧ N.broadcastCapacity ∧ N.relayCapacity ∧ N.interferenceLimit

theorem network_capacity_closed_from_evidence (N : NetworkCapacity) (E : NetworkCapacityEvidence N) :
    NetworkCapacityClosed N := by
  exact And.intro E.shannonCapacityClosed
    (And.intro E.multipleAccessCapacityClosed
      (And.intro E.broadcastCapacityClosed
        (And.intro E.relayCapacityClosed E.interferenceLimitClosed)))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse