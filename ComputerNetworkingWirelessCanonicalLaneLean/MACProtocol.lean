import ComputerNetworkingWirelessCanonicalLaneLean.WirelessChannelModel

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure MACProtocolPackage {C : WirelessChannelPackage} where
  accessScheme : Type u
  collisionResolution : Type v
  fairnessGuarantee : Prop
  throughputEfficiency : Prop
  energyAwareness : Prop

structure MACProtocolEvidence {C : WirelessChannelPackage}
    (M : MACProtocolPackage C) where
  fairnessGuaranteeClosed : M.fairnessGuarantee
  throughputEfficiencyClosed : M.throughputEfficiency
  energyAwarenessClosed : M.energyAwareness

def MACProtocolClosed {C : WirelessChannelPackage} (M : MACProtocolPackage C) : Prop :=
  M.fairnessGuarantee ∧ M.throughputEfficiency ∧ M.energyAwareness

theorem mac_protocol_closed_from_evidence {C : WirelessChannelPackage}
    (M : MACProtocolPackage C) (E : MACProtocolEvidence M) :
    MACProtocolClosed M := by
  exact And.intro E.fairnessGuaranteeClosed
    (And.intro E.throughputEfficiencyClosed E.energyAwarenessClosed)

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse