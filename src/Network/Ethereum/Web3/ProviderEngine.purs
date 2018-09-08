module Network.Ethereum.Web3.ProviderEngine where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import Network.Ethereum.Web3.Types.Provider (Provider)

foreign import data Web3ProviderEngine :: Type
class Web3Subprovider sp

foreign import engineToProvider :: Web3ProviderEngine -> Provider
foreign import addSubprovider   :: forall sp eff. (Web3Subprovider sp) => Web3ProviderEngine -> sp -> Eff eff Unit
foreign import startEngine      :: forall ceff eff. Web3ProviderEngine -> Eff ceff Unit -> Eff eff Unit
foreign import stopEngine       :: forall eff. Web3ProviderEngine -> Eff eff Unit