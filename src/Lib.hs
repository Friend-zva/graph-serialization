module Lib (toDotGraph) where

import Graph

toDotGraph :: (Show t_e, Show t_v) => Graph t_e t_v -> String
toDotGraph graph =
    unlines $
        ("digraph " ++ name ++ " {")
            : (tab ++ "node [shape=circle];")
            : map toDotVertex (vertices graph)
            ++ map toEdgeDot (edges graph)
            ++ ["}"]
  where
    name = label graph
    tab = "  "

    toEdgeDot :: (Show t) => Edge t -> String
    toEdgeDot e =
        tab
            ++ show (idVSource e)
            ++ " -> "
            ++ show (idVTarget e)
            ++ " [label="
            ++ show (infoEdge e)
            ++ "];"

    toDotVertex :: (Show t) => Vertex t -> String
    toDotVertex v =
        tab
            ++ show (idVertex v)
            ++ " [label="
            ++ show (infoVertex v)
            ++ "];"
