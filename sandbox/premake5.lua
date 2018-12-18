-- sandbox project
project "sandbox"
    kind "ConsoleApp"
    language "C++"
	cppdialect "C++11"

    targetdir "bin"
    objdir "obj"

    includedirs {"inc", "../sleipnir/inc"}
    libdirs {"lib", "../sleipnir/lib", "../sleipnir/bin"}

    files {"src/**.cpp", "src/**.h"}
    links {"sleipnir"}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:debug"
        symbols "On"
    filter "configurations:release"
        optimize "On"
    filter "configurations:dist"
        optimize "On"
