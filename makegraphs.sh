#!/bin/bash
grapher -f europarl50000-nl-train.indexedpatternmodel.colibri -a
grapher -d europarl50000-nl-train.graphpatternmodel.colibri -c europarl50000-nl-train.cls  -P -G -q "woord" > graph_woord_P.dot
grapher -d europarl50000-nl-train.graphpatternmodel.colibri -c europarl50000-nl-train.cls  -P -X -G -q "woord" > graph_woord_PX.dot
grapher -d europarl50000-nl-train.graphpatternmodel.colibri -c europarl50000-nl-train.cls  -a -G -q "woord" > graph_woord_all.dot
grapher -d europarl50000-nl-train.graphpatternmodel.colibri -c europarl50000-nl-train.cls  -a -G -q "tot {*1*} van"  > graph_totvan_all.dot
dot -Tpng graph_woord_all.dot > graph_woord_all.png
dot -Tpng graph_woord_P.dot > graph_woord_P.png
dot -Tpng graph_woord_PX.dot > graph_woord_PX.png
dot -Tpng graph_totvan_all.dot > graph_totvan_all.png
