def recursive_bottom_helloworld(name, **kwargs):
  native.genrule(
    name = name,
    srcs = ["@BazelRecursiveBottom//:recursive_bottom_rule.sh"],
    outs = ["recursive_bottom_out.txt"],
    cmd = "./$(location @BazelRecursiveBottom//:recursive_bottom_rule.sh) $@",
    tools = ["@BazelRecursiveBottom//:recursive_bottom_rule.sh"],
    **kwargs
  )
