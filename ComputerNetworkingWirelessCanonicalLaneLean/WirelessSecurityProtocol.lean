import HautevilleHouse.ComputerNetworkingWirelessCanonicalLaneLean.ProtocolStackPackage

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure WirelessSecurityProtocol where
  encryptionAlgorithm : Type u
  authenticationMechanism : Type v
  keyExchangeProtocol : Type w
  encryptionDefined : Prop
  authDefined : Prop
  keyExchangeDefined : Prop

structure WirelessSecurityEvidence (W : WirelessSecurityProtocol) where
  encryptionClosed : W.encryptionDefined
  authClosed : W.authenticationMechanism
  keyExchangeClosed : W.keyExchangeDefined

def WirelessSecurityClosed (W : WirelessSecurityProtocol) : Prop :=
  W.encryptionDefined ∧ W.authDefined ∧ W.keyExchangeDefined

theorem wireless_security_closed_from_evidence (W : WirelessSecurityProtocol)
    (E : WirelessSecurityEvidence W) : WirelessSecurityClosed W := by
  exact And.intro E.encryptionClosed
    (And.intro E.authClosed E.keyExchangeClosed)

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse
