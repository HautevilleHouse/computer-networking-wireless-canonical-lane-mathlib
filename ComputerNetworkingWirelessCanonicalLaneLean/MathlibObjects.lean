import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NetworkSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NetworkAdmittedObject where
  space : NetworkSpace
  wirelessMediumShared : Prop
  protocolLayersCorrect : Prop
  pathModel : Type
  pathTopology : TopologicalSpace pathModel
  endToEndDelivery : Prop
  conclusion : endToEndDelivery

def NetworkWitnessClosed (O : NetworkAdmittedObject) : Prop :=
  O.endToEndDelivery

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse