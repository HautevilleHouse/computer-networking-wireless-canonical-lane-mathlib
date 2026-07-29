import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure WirelessProtocol where
  accessScheme : Prop
  errorControl : Prop
  retransmission : Prop
  backoffAlgorithm : Prop
  handshakeSequence : Prop

structure WirelessProtocolEvidence (P : WirelessProtocol) where
  accessSchemeClosed : P.accessScheme
  errorControlClosed : P.errorControl
  retransmissionClosed : P.retransmission
  backoffAlgorithmClosed : P.backoffAlgorithm
  handshakeSequenceClosed : P.handshakeSequence

def WirelessProtocolClosed (P : WirelessProtocol) : Prop :=
  P.accessScheme ∧ P.errorControl ∧ P.retransmission ∧ P.backoffAlgorithm ∧ P.handshakeSequence

theorem wireless_protocol_closed_from_evidence (P : WirelessProtocol) (E : WirelessProtocolEvidence P) :
    WirelessProtocolClosed P := by
  exact And.intro E.accessSchemeClosed
    (And.intro E.errorControlClosed
      (And.intro E.retransmissionClosed
        (And.intro E.backoffAlgorithmClosed E.handshakeSequenceClosed)))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse