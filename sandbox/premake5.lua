-- sandbox project
project "sandbox"
    kind "ConsoleApp"
    language "C++"
	cppdialect "C++11"

    targetdir "bin"
    objdir "obj"

    includedirs {"include", "../sleipner/include"}
    libdirs {"lib", "../sleipner/lib", "../sleipner/bin"}

    files {"src/**.cpp", "src/**.h"}
    links {"sleipner"}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:debug"
        symbols "On"
    filter "configurations:release"
        optimize "On"
    filter "configurations:dist"
        optimize "On"