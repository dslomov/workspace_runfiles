load("//:rulez.bzl", "r")
sh_binary(name = "tryme",
          srcs = ["//tools:tryme.sh"],
          data = ["//data:data.txt", "@other_repo//repo_data:repo_data.txt"])

sh_binary(name = "tryme_extern",
          srcs = ["@other_repo//repo_tools:tryme.sh"],
          data = ["//data:data.txt", "@other_repo//repo_data:repo_data.txt"])

r(name = "r", runme = ":tryme",
  data = ["//data:data.txt", "@other_repo//repo_data:repo_data.txt"])

r(name = "r_extern", runme = ":tryme_extern")

r(name = "r_other", runme = "@other_repo//repo_tools:tryme")
