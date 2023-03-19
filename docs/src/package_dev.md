# Package Development

Resources for package development:

* Tim Holy: [Advanced Scientific Computing](https://github.com/timholy/AdvancedScientificComputing)
* Chris Rackauckas [How to develop a Julia package](https://julialang.org/contribute/developing_package/)
* Antonello Lobianco [Concise tutorial](https://syl1.gitbook.io/julia-language-a-concise-tutorial/language-core/11-developing-julia-packages)

## PkgTemplates

Setting up project folder structure and CI.

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
  

From https://github.com/timholy/AdvancedScientificComputing/blob/main/lectures/ci_docs/CIandDocs.ipynb

``` julia
using PkgTemplates
tpl = Template(plugins=[GitHubActions(), Codecov(), Documenter{GitHubActions}()])
```

## Documenter 

Document the package using Documenter.

https://github.com/JuliaDocs/Documenter.jl


### DocumenterTools

Setting up DOCUMENTER_KEY for use with GitHub Actions

``` julia
julia> using DocumenterTools
julia> DocumenterTools.genkeys(user = "myuser", repo="myPkg.jl")
```

Follow the instructions.

## Revise

Developing packages is terrible without Revise.

https://github.com/timholy/Revise.jl

## SnoopCompile

Tool to improve precompilation.

https://github.com/timholy/SnoopCompile.jl

## ArgParse

Parse commandline arguments

* [ArgParse.jl](https://github.com/carlobaldassi/ArgParse.jl)
