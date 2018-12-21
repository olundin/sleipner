-- sandbox project
project "sleipnir"
    kind "SharedLib"
    language "C++"
	cppdialect "C++11"

    targetdir "bin"
    objdir "obj"

    includedirs {"inc"}
    libdirs {"lib"}

    files {"src/**.cpp", "src/**.h", "inc/**.h"}
    links {"glfw3"}

    filter "system:windows"
        defines {"SL_PLATFORM_WINDOWS", "SL_BUILD_DLL"}
		systemversion "latest"
		staticruntime "On"

    filter "configurations:debug"
        defines {"SL_CONFIGURATION_DEBUG"}
        symbols "On"
    filter "configurations:release"
        defines {"SL_CONFIGURATION_RELEASE"}
        optimize "On"
    filter "configurations:dist"
        defines {"SL_CONFIGURATION_DIST"}
        optimize "On"

	-- doesn't work for some reason?
	postbuildcommands {("{COPY} bin/sleipnir.dll ../sandbox/bin")}