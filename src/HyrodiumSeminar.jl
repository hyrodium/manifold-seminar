module HyrodiumSeminar

using ImageClipboard
using Dates
using ImageIO
using FileIO

function saveimg(date::Date=Date(now()))
    str_date = string(date)
    dir_img = joinpath(@__DIR__, "..", "docs", "src", "img")
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

function addimg(date::Date=Date(now()))
    new_name = saveimg(date)
    dir_md = joinpath(@__DIR__, "..", "docs", "src")
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
