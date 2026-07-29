import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure MobileChannelModel where
  pathLossExponent : Prop
  shadowingStdDev : Prop
  fadingType : Prop
  dopplerShift : Prop
  coherenceTime : Prop

structure MobileChannelEvidence (M : MobileChannelModel) where
  pathLossExponentClosed : M.pathLossExponent
  shadowingStdDevClosed : M.shadowingStdDev
  fadingTypeClosed : M.fadingType
  dopplerShiftClosed : M.dopplerShift
  coherenceTimeClosed : M.coherenceTime

def MobileChannelClosed (M : MobileChannelModel) : Prop :=
  M.pathLossExponent ∧ M.shadowingStdDev ∧ M.fadingType ∧ M.dopplerShift ∧ M.coherenceTime

theorem mobile_channel_closed_from_evidence (M : MobileChannelModel) (E : MobileChannelEvidence M) :
    MobileChannelClosed M := by
  exact And.intro E.pathLossExponentClosed
    (And.intro E.shadowingStdDevClosed
      (And.intro E.fadingTypeClosed
        (And.intro E.dopplerShiftClosed E.coherenceTimeClosed)))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse