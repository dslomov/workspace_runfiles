def _impl(ctx):
  f = ctx.actions.declare_file(ctx.label.name + ".output")
  ctx.actions.run(executable = ctx.executable.runme,
                  inputs= ctx.files.data,
                  outputs = [f],
                  arguments = [f.path] + [d.path for d in ctx.files.data])
  return [DefaultInfo(executable = ctx.executable.runme,
                      files = depset([f, ctx.executable.runme]),
                     )]


r = rule(_impl,
         executable = True,
         attrs = {
             "runme" : attr.label(executable = True, mandatory = True, cfg = "host"),
             "data" : attr.label_list(allow_files = True)
         },
)
