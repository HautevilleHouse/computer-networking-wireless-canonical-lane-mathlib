import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerNetworkingWirelessCanonicalLaneLean

structure NetworkCode where
  encodingFunction : Prop
  decodingFunction : Prop
  fieldSize : ℕ
  linearity : Prop

structure NetworkCodingPackage where
  code : NetworkCode
  throughputGain : Prop
  robustness : Prop
  complexity : Prop

structure NetworkCodingEvidence (N : NetworkCodingPackage) where
  encodingClosed : N.code.encodingFunction
  decodingClosed : N.code.decodingFunction
  linearityClosed : N.code.linearity
  throughputGainClosed : N.throughputGain
  robustnessClosed : N.robustness
  complexityClosed : N.complexity

def NetworkCodingClosed (N : NetworkCodingPackage) : Prop :=
  N.code.encodingFunction ∧ N.code.decodingFunction ∧ N.code.linearity ∧
  N.throughputGain ∧ N.robustness ∧ N.complexity

theorem network_coding_closed_from_evidence (N : NetworkCodingPackage) (E : NetworkCodingEvidence N) : NetworkCodingClosed N := by
  exact And.intro E.encodingClosed (And.intro E.decodingClosed (And.intro E.linearityClosed
    (And.intro E.throughputGainClosed (And.intro E.robustnessClosed E.complexityClosed))))

end ComputerNetworkingWirelessCanonicalLaneLean
end HautevilleHouse