using Documenter
using HyrodiumSeminar

pages = Any["Home"=>"index.md"]
seminars = [("多様体論", "manifold")]
for (name, dir) in seminars
    dir_md = joinpath(@__DIR__, "src", dir)
    files_md = [file for file in readdir(dir_md) if startswith(file,"20")]
    pages_seminar = [splitext(file)[1]=>joinpath(dir, file) for file in files_md]
    push!(pages, name=>pages_seminar)
end

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
