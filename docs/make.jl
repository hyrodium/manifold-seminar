using Documenter
using HyrodiumHome

makedocs(;
    modules=[HyrodiumHome],
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
    pages=[
        "Home" => "index.md",
        "2020-06-27" => "2020-06-27.md",
        "2020-07-04" => "2020-07-04.md",
        "2020-07-25" => "2020-07-25.md",
        "2020-08-01" => "2020-08-01.md",
        "2020-08-09" => "2020-08-09.md",
        "2020-08-16" => "2020-08-16.md",
        "2020-08-29" => "2020-08-29.md",
        "2020-09-05" => "2020-09-05.md",
        "2020-09-12" => "2020-09-12.md",
        "2020-09-26" => "2020-09-26.md",
        "2020-10-10" => "2020-10-10.md",
        "2020-10-18" => "2020-10-18.md",
        "2020-10-24" => "2020-10-24.md",
        "2020-10-31" => "2020-10-31.md",
        "2020-11-07" => "2020-11-07.md",
        "2020-11-21" => "2020-11-21.md",
        "2020-11-28" => "2020-11-28.md",
        "2020-12-06" => "2020-12-06.md",
        "2020-12-12" => "2020-12-12.md",
        "2021-01-23" => "2021-01-23.md",
        "2021-01-30" => "2021-01-30.md",
        "2021-02-06" => "2021-02-06.md",
        "2021-02-20" => "2021-02-20.md",
        "2021-03-06" => "2021-03-06.md",
        "2021-04-17" => "2021-04-17.md",
        "2021-05-01" => "2021-05-01.md",
        "2021-05-08" => "2021-05-08.md",
        "2021-05-22" => "2021-05-22.md",
        "2021-06-19" => "2021-06-19.md",
        "2021-07-10" => "2021-07-10.md",
        "2021-07-31" => "2021-07-31.md",
        "2021-08-07" => "2021-08-07.md",
    ],
)

deploydocs(;
    devbranch="main"
    target="build",
    repo="github.com/hyrodium/hyrodium.github.io/manifold-seminor",
    versions=nothing
)
