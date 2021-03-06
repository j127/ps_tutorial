module Shapes
    ( Shape (..)
    , Position
    , area
    ) where

import Prelude

data Shape
    = Circle Position Number
    | Square Position Number
    | Rectangle Position Number Number
    | Triangle Position Number Number

type Position = { x :: Number, y :: Number }

circle :: Shape
circle = Circle  { x: 0.0, y: 0.0 }  1.0

area :: Shape -> Number
area (Circle _ radius) = 3.14 * radius * radius
area (Square _ side) = side * side
area (Rectangle _ width height) = width * height
area (Triangle _ side1 side2) = (side1 * side2) / 2.0

isAtOrigin :: Position -> Boolean
isAtOrigin { x: 0.0, y: 0.0 } = true
isAtOrigin _ = false

identifyShape :: Shape -> String
identifyShape (Circle _ _) = "This is a circle"
identifyShape (Square _ _) = "This is a square"
identifyShape (Rectangle _ _ _) = "This is a rectangle"
identifyShape (Triangle _ _ _) = "This is a triangle"

