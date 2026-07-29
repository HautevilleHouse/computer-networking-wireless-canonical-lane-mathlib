import HautevilleHouse.ComputerNetworkingWirelessCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

def ConstrainedWirelessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wireless_endgame (A : AdmissibleClass) :
    ConstrainedWirelessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse
