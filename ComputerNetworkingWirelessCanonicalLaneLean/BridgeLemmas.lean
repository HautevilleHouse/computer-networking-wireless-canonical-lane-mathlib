import HautevilleHouse.ComputerNetworkingWirelessCanonicalLaneLean.WirelessChannelAdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WirelessWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse
