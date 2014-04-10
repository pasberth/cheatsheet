{-# LANGUAGE JavaScriptFFI      #-}
{-# LANGUAGE OverloadedStrings  #-}

import qualified GHCJS.Types    as T
import qualified GHCJS.Foreign

foreign import javascript unsafe "alert($1)" alert :: T.JSString -> IO ()

main = alert "hello world"