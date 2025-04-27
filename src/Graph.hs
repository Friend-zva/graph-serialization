module Graph (
    Vertex (..),
    Edge (..),
    Graph (..),
) where

data Vertex t = Vertex
    { idVertex :: Int
    , infoVertex :: t
    }
    deriving (Show)

data Edge t = Edge
    { idEdge :: Int
    , idVSource :: Int
    , idVTarget :: Int
    , infoEdge :: t
    }
    deriving (Show)

data Graph t_e t_v = Graph
    { label :: String
    , vertices :: [Vertex t_v]
    , edges :: [Edge t_e]
    }
    deriving (Show)
