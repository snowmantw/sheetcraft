module Buffer exposing (..)

-- Buffer only stores things.
-- How to show on the screen and what's the
-- manipulation methods is handled by each editor.
type Buffer
    = EditString StringBuffer
    | EditImage BinaryBuffer

type StringBuffer = StringBuffer String

-- TODO: typed array??
type BinaryBuffer = BinaryBuffer String