using MyPkg46
using Aqua
using JET
using Test

@testset "Aqua.jl" begin
    Aqua.test_all(MyPkg46)
end

@testset "JET.jl" begin
    JET.test_package(MyPkg46; target_modules = (MyPkg46,))
end

@testset "MyPkg46.hello" begin
    @test MyPkg46.hello() == "Hello, World!"
end
