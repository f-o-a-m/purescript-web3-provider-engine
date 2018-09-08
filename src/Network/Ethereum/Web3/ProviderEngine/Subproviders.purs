module Network.Ethereum.Web3.ProviderEngine.Subproviders where

import Control.Monad.Eff (Eff)
import Network.Ethereum.Web3.ProviderEngine (class Web3Subprovider)
import Network.Ethereum.Web3.Types.Provider (Provider)

foreign import data CacheSubprovider :: Type

foreign import data FixtureSubprovider :: Type
foreign import data FixtureSubproviderOptions :: Type

foreign import data FilterSubprovider :: Type

foreign import data VmSubprovider :: Type
type VmSubproviderOptions = { debug :: Boolean }

foreign import data HookedWalletSubprovider :: Type
foreign import data HookedWalletSubproviderOptions :: Type

foreign import data NonceTrackerSubprovider :: Type

foreign import data RpcSubprovider :: Type

foreign import data ProviderSubprovider :: Type

foreign import data InfuraSubprovider :: Type
foreign import data InfuraSubproviderOptions :: Type

instance cacheSubproviderWeb3Subprovider        :: Web3Subprovider CacheSubprovider
instance fixtureSubproviderWeb3Subprovider      :: Web3Subprovider FixtureSubprovider
instance filterSubproviderWeb3Subprovider       :: Web3Subprovider FilterSubprovider
instance vmSubproviderWeb3Subprovider           :: Web3Subprovider VmSubprovider
instance hookedWalletSubproviderWeb3Subprovider :: Web3Subprovider HookedWalletSubprovider
instance nonceTrackerSubproviderWeb3Subprovider :: Web3Subprovider NonceTrackerSubprovider
instance rpcSubproviderWeb3Subprovider          :: Web3Subprovider RpcSubprovider
instance providerSubproviderWeb3Subprovider     :: Web3Subprovider ProviderSubprovider
instance infuraSubproviderWeb3Subprovider       :: Web3Subprovider InfuraSubprovider

foreign import newCacheSubprovider        :: forall eff. Eff eff CacheSubprovider
foreign import newFixtureSubprovider      :: forall eff. FixtureSubproviderOptions -> Eff eff FixtureSubprovider
foreign import newFilterSubprovider       :: forall eff. Eff eff FilterSubprovider
foreign import newVmSubprovider           :: forall eff. VmSubproviderOptions -> Eff eff VmSubprovider
foreign import newHookedWalletSubprovider :: forall eff. HookedWalletSubproviderOptions -> Eff eff HookedWalletSubprovider
foreign import newNonceTrackerSubprovider :: forall eff. Eff eff NonceTrackerSubprovider
foreign import newRpcSubprovider          :: forall eff. String -> Eff eff RpcSubprovider
foreign import newProviderSubprovider     :: forall eff. Provider -> Eff eff ProviderSubprovider
foreign import newInfuraSubprovider       :: forall eff. InfuraSubproviderOptions -> Eff eff InfuraSubprovider