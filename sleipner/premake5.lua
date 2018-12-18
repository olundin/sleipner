-- sandbox project
project "sleipner"
    kind "SharedLib"
    language "C++"
	cppdialect "C++11"

    targetdir "bin"
    objdir "obj"

    includedirs {"include"}
    libdirs {"lib"}

    files {"src/**.cpp", "src/**.h"}
    links {"glfw3"}

    filter "system:windows"
        defines "SL_PLATFORM_WINDOWS"
		systemversion "latest"
		staticruntime "On"

    filter "configurations:debug"
        defines "SL_CONFIGURATION_DEBUG"
        symbols "On"
    filter "configurations:release"
        defines "SL_CONFIGURATION_RELEASE"
        optimize "On"
    filter "configurations:dist"
        defines "SL_CONFIGURATION_DIST"
        optimize "On"