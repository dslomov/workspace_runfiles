load("//:rulez.bzl", "r")
sh_binary(name = "tryme",
          srcs = ["//tools:tryme.sh"],
          data = ["//data:data.txt", "@other_repo//repo_data:repo_data.txt"])

r(name = "r", runme = ":tryme",
  data = ["//data:data.txt", "@other_repo//repo_data:repo_data.txt"])
