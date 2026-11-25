# PhyloNetwork

The library of this hub: the definitions and results that two or more papers on network estimation
use, those of its sub-hub
[lean4-phylo-tree-of-blobs](https://github.com/vltanh/lean4-phylo-tree-of-blobs) (the tree of blobs)
included, and that the root library
[lean4-phylogenetics](https://github.com/vltanh/lean4-phylogenetics) does not hold. Each goes to the
lowest node of the tree above every repository that uses it: a result that one paper uses stays in
that paper's repository; one that only the papers on the tree of blobs use goes to
lean4-phylo-tree-of-blobs's library `TreeOfBlobs`; one that papers of several hubs use, or that
textbooks state, goes to the root library.

| Module | Content | Used by |
| --- | --- | --- |
| [`Testing/`](Testing) | Hypothesis tests on quartet counts: the star, T1 and cut tests, their statistics and p-values (`Testing/Defs`, with `IsT1Null`), combining p-values (`Testing/Combining`), independent samples (`Testing/IID`), tails and limits (`Testing/Tails`, `Testing/Limits`), missing taxa (`Testing/MissingTaxa`), and the limit laws through the trinomial central limit theorem (`Testing/Trinomial/`) | TINNiK, TOB-QMC, ECToBlob, NANUQ; Allman et al. 2023 (independent samples) |
| [`External/MitchellAllmanRhodes2019/`](External/MitchellAllmanRhodes2019) | Mitchell, Allman, Rhodes 2019: Theorem 3.1 for the trinomial cut model, the T3 and T1 tests with their limit laws and densities (Propositions 4.1, 4.2, 5.1, 5.2) | TINNiK, TOB-QMC, ECToBlob |
| [`External/Rhodes2020/`](External/Rhodes2020) | Rhodes 2020, Theorem 2: the quartet distance is a tree metric with the same topology | Allman et al. 2023, TINNiK, NANUQ |
| [`External/HuberEtAl2025/`](External/HuberEtAl2025) | Huber et al. 2025, Theorem 5.1, both directions, on rooted networks of any degrees | TOB-QMC, NANUQ |
| [`Level1Blobs`](Level1Blobs.lean) | Blobs of level-1 networks in the language of domination: bridges, the reticulation of a blob, walks that avoid a blob | TOB-QMC, ECToBlob, NANUQ |
| [`Wedge`](Wedge.lean) | Wedge paths, the subnetwork on a set of taxa and its cut edges, the cycle of a blob of a binary level-1 network (`Level1.BlobCycle`) | TOB-QMC, NANUQ |
| [`Level1Blocks`](Level1Blocks.lean) | Blocks at a blob, treelike sets of four taxa, and two of the three cases of TOB-QMC's Lemma 4, which NANUQ's Proposition 9 uses too | TOB-QMC, NANUQ |
| [`Level1CF`](Level1CF.lean) | At level 1, an induced cut-edge split that the tree of blobs does not display has the strictly largest concordance factor | TOB-QMC, ECToBlob, NANUQ |
| [`InducedSplits`](InducedSplits.lean) | Cut splits of induced networks in the language of domination, quartet trees as four taxa, and splits off a deletion | TOB-QMC, ECToBlob, NANUQ |
| [`NMSCChain`](NMSCChain.lean) | The chain of the network multispecies coalescent on a concrete network, from the root down, and the laws of a phylogenetic network from a rank function | Allman et al. 2023, ECToBlob, NANUQ |
| [`ForMathlib/`](ForMathlib) | Analysis and probability that do not mention phylogenetics, which the tests use: the error function, `x log x` near its tangent, the Gaussian plane, its strips and tails, transferring limit laws | the tests; TINNiK |

Its modules are `PhyloNetwork.*`, and import only Mathlib, `Phylogenetics` and this library;
[`PhyloNetwork.lean`](../PhyloNetwork.lean) imports them all. Their declarations are in Mathlib's
namespaces for the general mathematics of `ForMathlib/`, in `External.<Src>` for the cited sources
(each folder has a README that says what of its source is proved, and whether the source was read),
in `PhyloNetwork` (`PhyloNetwork.Level1`, and the induced splits) for what is the hub's own, and in
the root's namespaces (`Phylogenetics`, `Phylogenetics.RootedNetwork`, `Phylogenetics.QuartetTests`,
`Phylogenetics.Trinomial`, `Phylogenetics.NMSC.Chain`) for what may move up to the root library with
its name.

The modules were first written in lean4-phylo-tree-of-blobs, for the papers on the tree of blobs.
Its library `TreeOfBlobs` has deprecated modules of the same names that import them
(`TreeOfBlobs.Testing.Defs` for `PhyloNetwork.Testing.Defs`, …), which keep the names that the
declarations had there in a paper's namespace: deprecated aliases of the theorems
(`TOBQMC.Level1.exists_blobCycle` for `PhyloNetwork.Level1.exists_blobCycle`, …) and the definitions
exported into their former namespaces (`ECToBlob.FalseEdge.RDom` for `PhyloNetwork.RDom`,
`TOBQMC.Level1.BlobCycle` for `PhyloNetwork.Level1.BlobCycle`, …).