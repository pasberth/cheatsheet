{-# LANGUAGE JavaScriptFFI      #-}
{-# LANGUAGE OverloadedStrings  #-}

import qualified GHCJS.Types    as T
import qualified GHCJS.Foreign

foreign import javascript unsafe "alert($1)" alert :: T.JSString -> IO ()
foreign import javascript unsafe "try { $r = $1.length } catch (nigiritubusu) { $r = null }" js_unsafeLength :: T.JSRef a -> T.JSNumber
foreign import javascript unsafe "\"\"+$1" js_toString :: T.JSRef a -> T.JSString

js_is_shigo_sabaki_ni_au :: T.JSRef a -> IO ()
js_is_shigo_sabaki_ni_au = alert . js_toString . js_unsafeLength

main = do
  js_is_shigo_sabaki_ni_au ("answer to life the universe and everything" :: T.JSString)
  js_is_shigo_sabaki_ni_au T.nullRef