{-# LANGUAGE JavaScriptFFI      #-}
{-# LANGUAGE OverloadedStrings  #-}

import qualified GHCJS.Types    as T
import qualified GHCJS.Foreign  as F

foreign import javascript unsafe "window.onload = $1" onload :: T.JSFun a -> IO ()
foreign import javascript unsafe "alert($1)" alert :: T.JSString -> IO ()

main = do
  callback <- F.syncCallback F.AlwaysRetain True $ do
    alert "hello world"
  onload callback