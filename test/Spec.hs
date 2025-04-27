import Graph
import Lib
import Test.HUnit

testEmptyGraph :: Test
testEmptyGraph = TestCase $ do
    let graph = Graph "EmptyGraph" [] [] :: Graph String String
    assertEqual
        "Empty graph DOT serialization"
        ( unlines
            [ "digraph EmptyGraph {"
            , "  node [shape=circle];"
            , "}"
            ]
        )
        (toDotGraph graph)

testSingleVertex :: Test
testSingleVertex = TestCase $ do
    let graph =
            Graph
                { label =
                    "SingleVertex"
                , vertices =
                    [Vertex 1 "A"]
                , edges = []
                } ::
                Graph String String
    assertEqual
        "Single vertex graph DOT serialization"
        ( unlines
            [ "digraph SingleVertex {"
            , "  node [shape=circle];"
            , "  1 [label=\"A\"];"
            , "}"
            ]
        )
        (toDotGraph graph)

testSingleEdge :: Test
testSingleEdge = TestCase $ do
    let graph =
            Graph
                { label = "SingleEdge"
                , vertices =
                    [ Vertex 0 "A"
                    , Vertex 1 "B"
                    ]
                , edges = [Edge 0 0 1 "1"]
                }
    assertEqual
        "Example graph DOT serialization"
        ( unlines
            [ "digraph SingleEdge {"
            , "  node [shape=circle];"
            , "  0 [label=\"A\"];"
            , "  1 [label=\"B\"];"
            , "  0 -> 1 [label=\"1\"];"
            , "}"
            ]
        )
        (toDotGraph graph)

tests :: Test
tests =
    TestList
        [ TestLabel "Empty graph" testEmptyGraph
        , TestLabel "Single vertex" testSingleVertex
        , TestLabel "Single edge" testSingleEdge
        ]

main :: IO ()
main = runTestTTAndExit tests
