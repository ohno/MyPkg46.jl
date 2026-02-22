```@meta
CurrentModule = MyPkg46
```

# Developer Guide

[![ColPrac: Contributor's Guide on Collaborative Practices for Community Packages](https://img.shields.io/badge/ColPrac-Contributor's%20Guide-blueviolet)](https://github.com/SciML/ColPrac) [![code style: runic](https://img.shields.io/badge/code_style-%E1%9A%B1%E1%9A%A2%E1%9A%BE%E1%9B%81%E1%9A%B2-black)](https://github.com/fredrikekre/Runic.jl)

Open an [issue](https://github.com/ohno/MyPkg46.jl/issues) before starting significant work. The [ColPrac](https://github.com/SciML/ColPrac) guidelines is recommended. This project uses [Runic](https://github.com/fredrikekre/Runic.jl), a code formatter with rules set in stone. Runic have no configuration.

## Local Setup

This procedure is required only once. Install several Julia packages for development. [Revise.jl](https://github.com/timholy/Revise.jl) and [Runic.jl](https://github.com/fredrikekre/Runic.jl) are required.

Clone this [repository](https://github.com/ohno/MyPkg46.jl).

Start from Step 3
https://julialang.org/contribute/developing_package/#step_3_write_code


```sh
# Install Tools
julia --startup-file=no -e 'import Pkg; Pkg.add("Revise")'
julia --project=@runic --startup-file=no -e 'using Pkg; Pkg.add("Runic")'

# Clone Repo
git clone https://github.com/ohno/MyPkg46.jl.git
cd MyPkg46.jl

# Start Session
julia --startup-file=no -i -E 'using Revise; import Pkg; Pkg.activate("."); using MyPkg46'

# 
```

## Development Flow

Start an interactive session with [Revise.jl](https://github.com/timholy/Revise.jl). Evaluate any function to see loading.

```sh
cd MyPkg46.jl
julia --startup-file=no -i -E 'using Revise; import Pkg; Pkg.activate("."); using MyPkg46'
```

The [Jupyter Notebook](https://github.com/JuliaLang/IJulia.jl) is available instead of REPL
Or run folloing code to start session on . 

```julia
using Revise
using Pkg
Pkg.activate("./MyPkg46.jl") # change here
Pkg.resolve()
Pkg.instantiate()
using MyPkg46
```

Use these commands to add `Something.jl` as a dependency. [Project.toml](https://github.com/ohno/MyPkg46.jl/blob/main/Project.toml) will be updated. If dependencies were edited manually, run `Pkg.resolve()` and `Pkg.instantiate()`.




Run formatter



Run the local test suite before pushing commits.

```sh
julia --project=. --startup-file=no -e 'import Pkg; Pkg.add("Something"); Pkg.resolve(); Pkg.instantiate()'

# Run Test
julia --project=. --startup-file=no -e 'using Pkg; Pkg.test()'
```


https://documenter.juliadocs.org/stable/man/guide/

Build the documentation locally. Run the first command once to set up the docs environment, and run the second command to rebuild the documentation.

```sh
# Generate Documentation
julia --project=docs --startup-file=no -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate();'
julia --project=docs --startup-file=no -e 'include("docs/make.jl")'
```

## Versioning and Registering


### Versioning

This project follows [Semantic Versioning](https://semver.org/). When bumping the version, update the version number in:

* [Project.toml](https://github.com/ohno/MyPkg46.jl/blob/main/Project.toml#L4)
* [CITATION.bib](https://github.com/ohno/MyPkg46.jl/blob/main/CITATION.bib#5)

### Registering

Install [Registrator](https://github.com/JuliaRegistries/Registrator.jl?tab=readme-ov-file#install-registrator).

Via the GitHub App:

`@JuliaRegistrator register`

