using JuliaEcosystem
using Documenter

DocMeta.setdocmeta!(JuliaEcosystem, :DocTestSetup, :(using JuliaEcosystem); recursive=true)

makedocs(;
    modules=[JuliaEcosystem],
    authors="Thomas Poulsen <ta.poulsen@gmail.com> and contributors",
    repo="https://github.com/tp2750/JuliaEcosystem.jl/blob/{commit}{path}#{line}",
    sitename="JuliaEcosystem.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://tp2750.github.io/JuliaEcosystem.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        ## "Home" => "index.md",
        "Package Development" => "package_dev.md",
        "Debugging" => "debugging.md",
        "Profiling" => "profiling.md",
        "Github Organizations" => "github_organizations.md",
        "Reporting" => "reporting.md",
        "Plotting" => "plotting.md",
        "Data Science" => "data_science.md",
        "CAS - Computer Algebra Systems" => "cas.md",
        "Chemistry" => "chemistry.md",
    ],
)

deploydocs(;
    repo="github.com/tp2750/JuliaEcosystem.jl",
    devbranch="main",
)
