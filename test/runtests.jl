#--------------------------------------------------------------------------------------------------
using Test

#--------------------------------------------------------------------------------------------------

@testset "Hensel" begin
    @testset "sundry tests" begin
        include("sunry_tests.jl")
    end
    @testset "mfill tests" begin
        include("mfill_tests.jl")
    end
    @testset "mexpansion tests" begin
        include("mexpansion_tests.jl")
    end
end

#--------------------------------------------------------------------------------------------------
