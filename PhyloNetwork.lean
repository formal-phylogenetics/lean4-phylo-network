module

public import PhyloNetwork.External.HuberEtAl2025.Theorem51
public import PhyloNetwork.External.MitchellAllmanRhodes2019.CutModel
public import PhyloNetwork.External.MitchellAllmanRhodes2019.T1Limit
public import PhyloNetwork.External.MitchellAllmanRhodes2019.T3Density
public import PhyloNetwork.External.MitchellAllmanRhodes2019.T3Limit
public import PhyloNetwork.External.MitchellAllmanRhodes2019.T3Test
public import PhyloNetwork.External.Rhodes2020.Theorem2
public import PhyloNetwork.ForMathlib.Analysis.SpecialFunctions.EntropyExcess
public import PhyloNetwork.ForMathlib.Analysis.SpecialFunctions.Erf
public import PhyloNetwork.ForMathlib.Probability.GaussianPlane
public import PhyloNetwork.ForMathlib.Probability.GaussianStrip
public import PhyloNetwork.ForMathlib.Probability.GaussianTail
public import PhyloNetwork.ForMathlib.Probability.Transfer
public import PhyloNetwork.InducedSplits
public import PhyloNetwork.Level1Blobs
public import PhyloNetwork.Level1Blocks
public import PhyloNetwork.Level1CF
public import PhyloNetwork.NMSCChain
public import PhyloNetwork.Testing.Combining
public import PhyloNetwork.Testing.Defs
public import PhyloNetwork.Testing.IID
public import PhyloNetwork.Testing.Limits
public import PhyloNetwork.Testing.MissingTaxa
public import PhyloNetwork.Testing.Tails
public import PhyloNetwork.Testing.Trinomial.Bridge
public import PhyloNetwork.Testing.Trinomial.CLT
public import PhyloNetwork.Testing.Trinomial.Gaussian
public import PhyloNetwork.Testing.Trinomial.Statistics
public import PhyloNetwork.Testing.Trinomial.Tests
public import PhyloNetwork.Testing.Trinomial.Whiten
public import PhyloNetwork.Wedge

/-!
# PhyloNetwork

What the papers on network estimation share, those on the tree of blobs included, and that the root
library `Phylogenetics` does not hold. Import a single module to load only it and what it imports.

* `PhyloNetwork.Testing`: hypothesis tests on quartet counts, their statistics, p-values and limit
  laws, combining p-values, independent samples and missing taxa.
* `PhyloNetwork.External`: the sources several papers cite, each in the namespace `External.<Src>`:
  Mitchell, Allman, Rhodes 2019 (the T1 and T3 tests), Rhodes 2020 (the quartet distance), Huber et
  al. 2025 (Theorem 5.1).
* `PhyloNetwork.Level1Blobs`, `PhyloNetwork.Wedge`, `PhyloNetwork.Level1Blocks`,
  `PhyloNetwork.Level1CF`: blobs, wedge paths and blocks of level-1 networks, treelike sets of four
  taxa, and the strict dominance of an induced cut-edge split, in the namespace `PhyloNetwork.Level1`.
* `PhyloNetwork.InducedSplits`: cut splits of induced networks in the language of domination.
* `PhyloNetwork.NMSCChain`: the chain of the network multispecies coalescent on a concrete network.
* `PhyloNetwork.ForMathlib`: the analysis and probability these use, in Mathlib's namespaces.
-/
