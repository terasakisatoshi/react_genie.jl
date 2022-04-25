(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using MyApp
push!(Base.modules_warned_for, Base.PkgId(MyApp))
MyApp.main()
