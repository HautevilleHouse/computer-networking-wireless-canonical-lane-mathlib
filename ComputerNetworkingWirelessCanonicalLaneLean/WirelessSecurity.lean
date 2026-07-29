import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure EncryptionProtocol where
  keyExchange : Prop
  cipherAlgorithm : Prop
  authentication : Prop

structure SecurityPackage where
  encryption : EncryptionProtocol
  integrity : Prop
  confidentiality : Prop
  availability : Prop

structure SecurityEvidence (S : SecurityPackage) where
  keyExchangeClosed : S.encryption.keyExchange
  cipherClosed : S.encryption.cipherAlgorithm
  authClosed : S.encryption.authentication
  integrityClosed : S.integrity
  confidentialityClosed : S.confidentiality
  availabilityClosed : S.availability

def SecurityClosed (S : SecurityPackage) : Prop :=
  S.encryption.keyExchange ∧ S.encryption.cipherAlgorithm ∧ S.encryption.authentication ∧
  S.integrity ∧ S.confidentiality ∧ S.availability

theorem security_closed_from_evidence (S : SecurityPackage) (E : SecurityEvidence S) : SecurityClosed S := by
  exact And.intro E.keyExchangeClosed (And.intro E.cipherClosed (And.intro E.authClosed
    (And.intro E.integrityClosed (And.intro E.confidentialityClosed E.availabilityClosed))))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse