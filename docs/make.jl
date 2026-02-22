using MyPkg46
using Documenter

DocMeta.setdocmeta!(MyPkg46, :DocTestSetup, :(using MyPkg46); recursive=true)

makedocs(;
    modules = [MyPkg46],
    authors = "Shuhei Ohno",
    sitename = "MyPkg46.jl",
    format = Documenter.HTML(;
        canonical = "https://ohno.github.io/MyPkg46.jl",
        edit_link = "main",
        assets = String[],
    ),
    pages = [
        "Home" => "index.md",
        "User Guide" => "user.md",
        "Developer Guide" => "developer.md",
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo = "github.com/ohno/MyPkg46.jl",
    devbranch = "main",
)
