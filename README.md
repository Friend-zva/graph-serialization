# graph-serialization

**graph-serialization** — lib for serialization created graph to graphviz/DOT.

# Build

```shell
stack build
```

# Usage

Print created graph in [graphviz/DOT](https://graphviz.org/doc/info/lang.html) format to concole.

```shell
stack run
```

1. Print created graph in `graphviz/DOT` format to result/main/main.dot.
2. Creat visual representation created graph in `.png` format using [dot](https://graphviz.org/doc/info/command.html). Result save in result/main/main.png

```shell
./scripts/run.sh
```

> The graph is created in the main.hs in advance, as an example of the work.

# Test

```shell
stack test
```

## License

Distributed under the [BSD-3-Clause](https://choosealicense.com/licenses/mit/). See [`LICENSE`](LICENSE) for more information.
