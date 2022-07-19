project "glad"
	kind "StaticLib"
	language "C"

	files
	{
		"include/glad/glad.h",
		"include/KHR/khrplatform.h",
		"src/glad.c"
	}

	sysincludedirs "include"

	filter "system:windows"
		staticruntime "off"

	filter { "configurations:Debug", "system:windows" }
		runtime "Debug"

	filter { "configurations:Release", "system:windows" }
		runtime "Release"

	filter "system:linux"
		pic "on"