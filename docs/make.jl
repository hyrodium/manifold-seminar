using Documenter
using HyrodiumSeminar

dir_md = joinpath(@__DIR__, "src")
files_md = [file for file in readdir(dir_md) if startswith(file,"20")]
pages = [splitext(file)[1]=>file for file in files_md]
pushfirst!(pages, "Home"=>"index.md")

makedocs(;
    modules=[HyrodiumSeminar],
    authors="hyrodium <hyrodium@gmail.com>",
    repo="https://github.com/hyrodium/hyrodium.github.io/blob/{commit}{path}#L{line}",
    sitename="多様体論セミナー記録",
    doctest=false,
    format=Documenter.HTML(;
        prettyurls=true,
        canonical="https://hyrodium.github.io",
        assets=String[],
        lang="ja",
    ),
    source="src",
    build="build",
    pages=pages,
)

deploydocs(;
    devbranch="main",
    target="build",
    repo="github.com/hyrodium/manifold-seminar",
    versions=nothing
)
