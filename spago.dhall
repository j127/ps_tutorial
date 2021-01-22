{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "ps_tutorial"
, dependencies = [ "arrays", "console", "effect", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
