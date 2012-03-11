module Main where

import Control.Monad
import Happstack.Server (nullConf, simpleHTTP, ok, dir, notFound )

main :: IO ()
main = simpleHTTP nullConf $ msum [ dir "hello" $ ok "hello world" 
                                  , dir "bye" $ ok "bye bye world"
                                  , notFound "you crazy or wha' ?" 
                                  ]