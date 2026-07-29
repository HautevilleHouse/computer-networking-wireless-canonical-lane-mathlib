import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure CarrierSenseMechanism where
  clearChannelAssessment : Prop
  backoffProcedure : Prop
  navProtection : Prop

structure ChannelAccessPackage where
  csma : CarrierSenseMechanism
  tdmaSlotAllocation : Prop
  fdmaSubcarrierAssignment : Prop
  collisionAvoidance : Prop

structure ChannelAccessEvidence (C : ChannelAccessPackage) where
  csmaClosed : C.csma.clearChannelAssessment ∧ C.csma.backoffProcedure ∧ C.csma.navProtection
  tdmaClosed : C.tdmaSlotAllocation
  fdmaClosed : C.fdmaSubcarrierAssignment
  collisionAvoidanceClosed : C.collisionAvoidance

def ChannelAccessClosed (C : ChannelAccessPackage) : Prop :=
  (C.csma.clearChannelAssessment ∧ C.csma.backoffProcedure ∧ C.csma.navProtection) ∧
  C.tdmaSlotAllocation ∧ C.fdmaSubcarrierAssignment ∧ C.collisionAvoidance

theorem channel_access_closed_from_evidence (C : ChannelAccessPackage) (E : ChannelAccessEvidence C) : ChannelAccessClosed C := by
  exact And.intro E.csmaClosed (And.intro E.tdmaClosed (And.intro E.fdmaClosed E.collisionAvoidanceClosed))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse