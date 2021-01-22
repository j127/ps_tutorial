module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Shapes (Shape (Circle), area)

main :: Effect Unit
main = do
    log (show (area (Circle { x: 0.0, y: 0.0 } 5.3)))
    log "hello world"
