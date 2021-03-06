{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-deprecations #-}

{-|
Exports modules that Data.Orphans needs. Because Data.Orphans uses several modules
that only need to be in scope for certain versions of GHC, exporting all of the modules
separately eliminates the need to use CPP pragmas for GHC-version-specific imports.
This makes it much easier to be -Wall-compliant.

Note that this module does not export any modules that could introduce name clashes.
-}
module Data.Orphans.Prelude (module OrphansPrelude) where

import Control.Applicative as OrphansPrelude
import Control.Arrow as OrphansPrelude hiding (loop)
import Control.Category as OrphansPrelude hiding ((.), id)
import Control.Concurrent.QSem as OrphansPrelude
import Control.Monad as OrphansPrelude hiding (mapM, sequence)
import Control.Monad.Fix as OrphansPrelude

import Data.Bits as OrphansPrelude
import Data.Char as OrphansPrelude
import Data.Complex as OrphansPrelude (Complex(..))
import Data.Fixed as OrphansPrelude
import Data.Int as OrphansPrelude
import Data.Ix as OrphansPrelude
import Data.List as OrphansPrelude (genericLength)
import Data.Version as OrphansPrelude
import Data.Word as OrphansPrelude

import Foreign.C.Error as OrphansPrelude
import Foreign.C.Types as OrphansPrelude
import Foreign.Marshal.Pool as OrphansPrelude
import Foreign.Ptr as OrphansPrelude (castPtr)
import Foreign.Storable as OrphansPrelude

import GHC.Base as OrphansPrelude
import GHC.Conc as OrphansPrelude
import GHC.Desugar as OrphansPrelude (AnnotationWrapper)
import GHC.ForeignPtr as OrphansPrelude
import GHC.IO.Buffer as OrphansPrelude
import GHC.IO.BufferedIO as OrphansPrelude (BufferedIO)
import GHC.IO.Device as OrphansPrelude (IODevice, IODeviceType(..), RawIO)
import GHC.IO.Encoding as OrphansPrelude
import GHC.IO.Handle as OrphansPrelude
import GHC.IO.Handle.Types as OrphansPrelude
import GHC.Real as OrphansPrelude (Ratio(..), (%))
import GHC.ST as OrphansPrelude

import Numeric as OrphansPrelude (showHex)

import System.Console.GetOpt as OrphansPrelude
import System.IO as OrphansPrelude
import System.Posix.Internals as OrphansPrelude
import System.Posix.Types as OrphansPrelude

import Text.Printf as OrphansPrelude

import Unsafe.Coerce as OrphansPrelude (unsafeCoerce)

#if defined(mingw32_HOST_OS)
import GHC.IO.Encoding.CodePage.Table as OrphansPrelude
#endif

#if MIN_VERSION_base(4,4,0)
import Control.Monad.Zip as OrphansPrelude
import Data.Typeable.Internal as OrphansPrelude
import GHC.Fingerprint as OrphansPrelude
import GHC.IO.Encoding.Failure as OrphansPrelude

# if !defined(mingw32_HOST_OS) && !defined(__GHCJS__)
import GHC.Event as OrphansPrelude
# endif
#endif

#if MIN_VERSION_base(4,5,0)
import GHC.Stack as OrphansPrelude
import GHC.Stats as OrphansPrelude
#endif

#if MIN_VERSION_base(4,6,0)
import GHC.GHCi as OrphansPrelude
import GHC.IP as OrphansPrelude
import GHC.TypeLits as OrphansPrelude
#endif

#if MIN_VERSION_base(4,7,0)
import Data.Proxy as OrphansPrelude
import Data.Type.Coercion as OrphansPrelude (Coercion, TestCoercion)
import Data.Type.Equality as OrphansPrelude ((:~:), TestEquality)
import Text.Read.Lex as OrphansPrelude (Number)
#else
import Control.Concurrent.SampleVar as OrphansPrelude
#endif
