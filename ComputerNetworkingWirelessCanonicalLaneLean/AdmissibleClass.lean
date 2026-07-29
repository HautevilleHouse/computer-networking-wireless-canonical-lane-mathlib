import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure AdmissibleClass where
  object : NetworkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NetworkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse