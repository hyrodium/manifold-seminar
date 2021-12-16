module HyrodiumSeminar

using ImageClipboard
using Dates
using ImageIO
using FileIO

export addimg

function saveimg(seminar::String, date::Date)
    str_date = string(date)
    dir_img = joinpath(@__DIR__, "..", "docs", "src", seminar, "img")
    mkpath(dir_img)
    names = readdir(dir_img)
    names = names[findall(startswith.(names, str_date))]

    indices = [parse(Int, split(split(name,".")[1],"_")[end]) for name in names]
    if isempty(indices)
        i = 1
    else
        i = maximum(indices) + 1
    end

    new_name = "$(date)_$(i).png"
    img = clipboard_img()
    save(joinpath(dir_img, new_name), img)
    return new_name
end

function addimg(seminar::String, date::Date=Date(now()))
    dir_md = joinpath(@__DIR__, "..", "docs", "src", seminar)
    mkpath(dir_md)
    new_name = saveimg(seminar, date)
    path_md = joinpath(dir_md, "$(date).md")
    if !isfile(path_md)
        script = """
        # $(date)
        """
        write(path_md, script)
    end
    script = read(path_md, String)
    script *= """

    ![](img/$(new_name))
    """
    write(path_md, script)
end

end
