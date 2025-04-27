import Graph
import Lib

graph :: Graph String String
graph =
    Graph
        { label = "SimpleGraph"
        , vertices =
            [ Vertex 0 "A"
            , Vertex 1 "B"
            , Vertex 2 "C"
            ]
        , edges =
            [ Edge 0 0 1 "1"
            , Edge 1 1 0 "1"
            , Edge 2 2 0 "1"
            ]
        }

main :: IO ()
main = putStrLn $ toDotGraph graph
