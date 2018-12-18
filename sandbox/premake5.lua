-- sandbox project
project "sandbox"
    kind "ConsoleApp"
    language "C++"
	cppdialect "C++11"

    targetdir "bin"
    objdir "obj"

    includedirs {"inc", "../sleipnir/inc"}

    files {"src/**.cpp", "src/**.h"}
    links {"sleipnir"}

	filter "system:windows"
		systemversion "latest"
        staticruntime "On"
        defines {"SL_PLATFORM_WINDOWS"}

    filter "configurations:debug"
        defines {"SL_CONFIGURATION_DEBUG"}
        symbols "On"
    filter "configurations:release"
        defines {"SL_CONFIGURATION_RELEASE"}
        optimize "On"
    filter "configurations:dist"
        defines {"SL_CONFIGURATION_DIST"}
        optimize "On"
