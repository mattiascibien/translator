solution "Translator"
   configurations { "Debug", "Release" }
   platforms { "x32" }

   -- A project defines one build target
   project "translator"
      kind "ConsoleApp"
      language "C++"
      files {
      "**.h",
      "**.cpp",
      }

      defines { "_CRT_SECURE_NO_WARNINGS", "ANGLE_ENABLE_D3D9", "ANGLE_ENABLE_D3D11" }
      includedirs { ".", "./compiler"}
      targetname "translator"
      libdirs { "lib"}
      configuration "Debug"
         defines { "DEBUG" }
         targetdir "bin/debug"
         flags { "Symbols" }

      configuration "Release"
         defines { "NDEBUG" }
         targetdir "bin"
         flags { "Optimize" }

if _ACTION == "clean" then
   os.rmdir("bin")
   os.rmdir("ipch")
end
