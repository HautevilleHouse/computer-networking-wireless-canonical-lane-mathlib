import HautevilleHouse.ComputerNetworkingWirelessCanonicalLaneLean.ProtocolStackPackage

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure MultipleAccessProtocolPackage where
  carrierSense : Prop
  collisionDetection : Prop
  collisionResolution : Prop
  fairnessGuarantee : Prop

structure MultipleAccessProtocolEvidence (M : MultipleAccessProtocolPackage) where
  carrierSenseClosed : M.carrierSense
  collisionDetectionClosed : M.collisionDetection
  collisionResolutionClosed : M.collisionResolution
  fairnessGuaranteeClosed : M.fairnessGuarantee

def MultipleAccessProtocolClosed (M : MultipleAccessProtocolPackage) : Prop :=
  M.carrierSense ∧ M.collisionDetection ∧ M.collisionResolution ∧ M.fairnessGuarantee

theorem multiple_access_protocol_closed_from_evidence
    (M : MultipleAccessProtocolPackage)
    (E : MultipleAccessProtocolEvidence M) : MultipleAccessProtocolClosed M := by
  exact And.intro E.carrierSenseClosed
    (And.intro E.collisionDetectionClosed
      (And.intro E.collisionResolutionClosed E.fairnessGuaranteeClosed))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse
