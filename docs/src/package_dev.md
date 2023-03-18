# Package Development

## PkgTemplates

https://github.com/JuliaCI/PkgTemplates.jl

```julia
using PkgTemplates
Template(interactive=true)("MyPkg")
```

I like to customize:

* user: just to be sure
* dir: choose "."
* plugins:
 
  - Documenter: use GitHubActions
  - Git: use ssh
  
  