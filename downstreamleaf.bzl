def downstreamleaf_helloworld(name, **kwargs):
  native.genrule(
    name = name,
    srcs = ["@BazelDownstreamLeaf//:downstream_leaf_rule.sh"],
    outs = ["downstream_leaf_out.txt"],
    cmd = "./$(location @BazelDownstreamLeaf//:downstream_leaf_rule.sh) $@",
    tools = ["@BazelDownstreamLeaf//:downstream_leaf_rule.sh"],
    **kwargs
  )
