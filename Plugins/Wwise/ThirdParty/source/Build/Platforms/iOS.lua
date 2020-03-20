--[[----------------------------------------------------------------------------
The content of this file includes portions of the AUDIOKINETIC Wwise Technology
released in source code form as part of the SDK installer package.

Commercial License Usage

Licensees holding valid commercial licenses to the AUDIOKINETIC Wwise Technology
may use this file in accordance with the end user license agreement provided
with the software or, alternatively, in accordance with the terms contained in a
written agreement between you and Audiokinetic Inc.

  Version: <VERSION>  Build: <BUILDNUMBER>
  Copyright (c) <COPYRIGHTYEAR> Audiokinetic Inc.
------------------------------------------------------------------------------]]

if not AK then AK = {} end
if not AK.Platforms then AK.Platforms = {} end

AK.Platforms.iOS =
{
	name = "iOS",
	directories = {
		src = {
			__default__ = "Mac",
			["AkMemoryMgr.cpp"] = "Common",
			CommunicationCentral = "POSIX"
		},
		simd = "SIMD",
		include = {
			AkMusicEngine = "POSIX"
		},
		project = "iOS",
		lualib = "Mac",
		lowlevelio = {
			GameSimulator = "POSIX",
			IntegrationDemo = "Mac"
		},
		luasln = "GameSimulator/source/",
	},
	kinds = {
		GameSimulator = "WindowedApp",
		IntegrationDemo = "WindowedApp"
	},
	suffix = {
		__default__ = "iOS",
		IntegrationDemo = "",
		IntegrationDemoMotion = ""
	},

	configurations =
	{
		"Debug",
		"Profile",
		"Profile_EnableAsserts",
		"Release"
	},
	platforms = { "iOS" },
	features = { "POSIX", "AAC", "IntegrationDemo", "iZotope" },
	validActions = { "xcode4" },
	xcodebuildsettings =
	{
		--ARCHS = {"$(ARCHS_STANDARD)", "armv7s"},		9.2
		--VALID_ARCHS = {"$(ARCHS_STANDARD)", "armv7s"},	9.2
		--SDKROOT = "iphoneos",
		--IPHONEOS_DEPLOYMENT_TARGET = "6.0",
		--TARGETED_DEVICE_FAMILY = '1,2',
		ENABLE_OPENMP_SUPPORT = "NO",
		ONLY_ACTIVE_ARCH = "NO",
		ENABLE_BITCODE = "NO",
		PRECOMPS_INCLUDE_HEADERS_FROM_BUILT_PRODUCTS_DIR = "YES",
		SCAN_ALL_SOURCE_FILES_FOR_INCLUDES = "NO",
		GCC_VERSION = "com.apple.compilers.llvm.clang.1_0",
		GCC_FAST_OBJC_DISPATCH = "YES",
		GCC_WARN_MISSING_PARENTHESES = "NO",
		GCC_WARN_CHECK_SWITCH_STATEMENTS = "NO",
		GCC_AUTO_VECTORIZATION = "NO",
		GCC_OBJC_CALL_CXX_CDTORS = "NO",
		GCC_ENABLE_SSE3_EXTENSIONS = "NO",
		GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS = "NO",
		GCC_STRICT_ALIASING = "NO",
		GCC_FEEDBACK_DIRECTED_OPTIMIZATION = "Off",
		GCC_GENERATE_DEBUGGING_SYMBOLS = "YES",
		GCC_DYNAMIC_NO_PIC = "NO",
		GCC_GENERATE_TEST_COVERAGE_FILES = "NO",
		GCC_INLINES_ARE_PRIVATE_EXTERN = "NO",
		GCC_MODEL_TUNING = "G4",
		GCC_INSTRUMENT_PROGRAM_FLOW_ARCS = "NO",
		GCC_ENABLE_KERNEL_DEVELOPMENT = "NO",
		GCC_DEBUGGING_SYMBOLS = "default",
		GCC_REUSE_STRINGS = "YES",
		GCC_NO_COMMON_BLOCKS = "NO",
		GCC_ENABLE_OBJC_GC = "unsupported",
		GCC_FAST_MATH = "YES",
		GCC_ENABLE_SYMBOL_SEPARATION = "YES",
		GCC_THREADSAFE_STATICS = "YES",
		GCC_SYMBOLS_PRIVATE_EXTERN = "NO",
		GCC_UNROLL_LOOPS = "NO",
		GCC_MODEL_PPC64 = "NO",
		GCC_CHAR_IS_UNSIGNED_CHAR = "NO",
		GCC_ENABLE_ASM_KEYWORD = "YES",
		GCC_C_LANGUAGE_STANDARD = "c99",
		GCC_CHECK_RETURN_VALUE_OF_OPERATOR_NEW = "NO",
		GCC_CW_ASM_SYNTAX = "YES",
		GCC_INPUT_FILETYPE = "automatic",
		GCC_ALTIVEC_EXTENSIONS = "NO",
		GCC_ENABLE_CPP_EXCEPTIONS = "NO",
		GCC_ENABLE_CPP_RTTI = "NO",
		GCC_LINK_WITH_DYNAMIC_LIBRARIES = "YES",
		GCC_ENABLE_OBJC_EXCEPTIONS = "YES",
		GCC_ENABLE_TRIGRAPHS = "NO",
		GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS = "NO",
		GCC_USE_INDIRECT_FUNCTION_CALLS = "NO",
		GCC_USE_REGISTER_FUNCTION_CALLS = "NO",
		GCC_INCREASE_PRECOMPILED_HEADER_SHARING = "NO",
		OTHER_CFLAGS = {"-Wno-sign-compare", "-fembed-bitcode"},
		GCC_PRECOMPILE_PREFIX_HEADER = "NO",
		GCC_ENABLE_BUILTIN_FUNCTIONS = "YES",
		GCC_ENABLE_PASCAL_STRINGS = "YES",
		GCC_FORCE_CPU_SUBTYPE_ALL = "NO",
		GCC_SHORT_ENUMS = "NO",
		GCC_USE_GCC3_PFE_SUPPORT = "YES",
		GCC_ONE_BYTE_BOOL = "YES",
		GCC_USE_STANDARD_INCLUDE_SEARCHING = "YES",
		GCC_WARN_ABOUT_RETURN_TYPE = "YES",
		GCC_WARN_ABOUT_POINTER_SIGNEDNESS = "YES",
		GCC_WARN_UNUSED_VARIABLE = "NO",
		GCC_THUMB_SUPPORT = "NO",
		--GCC_THUMB_SUPPORT[arch=armv7] = "YES", -- HACK: Weirdo chars in name... see end of file
		OTHER_CPLUSPLUSFLAGS = {"$(OTHER_CFLAGS)", "-Wno-write-strings", "-fvisibility-inlines-hidden", "-Wno-invalid-offsetof"},
		CLANG_CXX_LIBRARY = "libc++",
		COMPRESS_PNG_FILES = 'NO',
		CLANG_ENABLE_OBJC_ARC = "YES",
		-- 9.2 additions
		CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = "YES",
		CLANG_WARN_BOOL_CONVERSION = "YES",
		CLANG_WARN_COMMA = "YES",
		CLANG_WARN_CONSTANT_CONVERSION = "YES",
		CLANG_WARN_EMPTY_BODY = "YES",
		CLANG_WARN_ENUM_CONVERSION = "YES",
		CLANG_WARN_INFINITE_RECURSION = "YES",
		CLANG_WARN_INT_CONVERSION = "YES",
		CLANG_WARN_NON_LITERAL_NULL_CONVERSION = "YES",
		CLANG_WARN_OBJC_LITERAL_CONVERSION = "YES",
		CLANG_WARN_RANGE_LOOP_ANALYSIS = "YES",
		CLANG_WARN_STRICT_PROTOTYPES = "YES",
		CLANG_WARN_SUSPICIOUS_MOVE = "YES",
		CLANG_WARN_UNREACHABLE_CODE = "YES",
		CLANG_WARN__DUPLICATE_METHOD_MATCH = "YES",
		ENABLE_STRICT_OBJC_MSGSEND = "YES",
		GCC_WARN_64_TO_32_BIT_CONVERSION = "YES",
		GCC_WARN_UNDECLARED_SELECTOR = "YES",
		GCC_WARN_UNINITIALIZED_AUTOS = "YES",
		GCC_WARN_UNUSED_FUNCTION = "YES",
		DEVELOPMENT_TEAM = "BCB4VLKTK5",
	},
	
	AdditionalSoundEngineProjects = function()
		local AkAACDecoder = require "AkAACDecoder"
		return { AkAACDecoder.Create }
	end,

	-- API
	---------------------------------
	ImportAdditionalWwiseSDKProjects = function()
		importproject("AkAACDecoder")
	end,

	-- Project factory. Creates "StaticLib" target by default. Static libs (only) are added to the global list of targets.
	-- Other target types supported by premake are "WindowedApp", "ConsoleApp" and "SharedLib".
	-- Upon returning from this method, the current scope is the newly created project.
	CreateProject = function(in_fileName, in_targetName, in_projectLocation, in_suffix, pathPCH, in_targetType)
		verbosef("        Creating project: %s", in_targetName)

		-- Make sure that directory exist
		os.mkdir(AkMakeAbsolute(in_projectLocation))

		-- Create project
		local prj = project (in_targetName)

			platforms {"iOS"}
			system(premake.IOS)
			systemversion "8.0"
			flags {"HackSysIncludeDirs"} -- We need everything to be sysincludedirs, not includedirs.

			location(AkRelativeToCwd(in_projectLocation))
			targetname(in_targetName)
			if in_targetType == nil or in_targetType == "StaticLib" then
				kind("StaticLib")
				-- Add to global table
				_AK_TARGETS[in_targetName] = in_fileName
			else
				kind(in_targetType)
			end
			language("C++")
			uuid(GenerateUuid(in_fileName))
			filename(in_fileName)

			xcodebuildsettings (AK.Platforms.iOS.xcodebuildsettings)
			buildoptions { "-Wno-invalid-offsetof" }

			-- Standard configuration settings.
			filter "*Debug*"
				defines ("_DEBUG")
				symbols ("On")
				xcodebuildsettings { GCC_OPTIMIZATION_LEVEL = 0 }

			filter "Profile*"
				defines ("NDEBUG")
				optimize ("Speed")
				symbols ("On")

			filter "*Release*"
				defines ({"NDEBUG","AK_OPTIMIZED"})
				optimize ("Speed")
				symbols ("On")

			filter "*EnableAsserts"
				defines( "AK_ENABLE_ASSERTS" )

			-- 9.2
			filter "not *Release*"
				xcodebuildsettings {
					ENABLE_TESTABILITY = "YES",
				}

			-- Set the scope back to current project
			project(in_targetName)

		ApplyPlatformExceptions(prj.name, prj)

		return prj
	end,

	-- Plugin factory.
	-- Upon returning from this method, the current scope is the newly created plugin project.
	CreatePlugin = function(in_fileName, in_targetName, in_projectLocation, in_suffix, pathPCH, in_targetType)
		local prj = AK.Platforms.iOS.CreateProject(in_fileName, in_targetName, in_projectLocation, in_suffix, pathPCH, in_targetType)
		return prj
	end,

	Exceptions = {
		AkSoundEngine = function(prj)
			local prjLoc = AkRelativeToCwd(prj.location)
			if not _AK_BUILD_AUTHORING then
				filter "Release*"
					xcodebuildsettings { EXCLUDED_SOURCE_FILE_NAMES = {"*Proxy*", "Command*" } }
				filter {}
			end
			files {
				prjLoc .. "/../AppleCommon/*.cpp",
				prjLoc .. "/../AppleCommon/*.h",
			}
			includedirs {
				prjLoc .. "/../AppleCommon",
			}
			files {
				prjLoc .. "/../iOS/*.mm",
				prjLoc .. "/../iOS/*.cpp",
				prjLoc .. "/../iOS/*.h",
			}
			includedirs { 
				prjLoc .. "/../iOS",
			}
			xcodebuildsettings { GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO = "NO" }
		end,
		AkMusicEngine = function(prj)
			xcodebuildsettings { GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO = "NO" }
			filter "Release*"
				xcodebuildsettings { EXCLUDED_SOURCE_FILE_NAMES = {"*Proxy*", "Command*" } }
			filter {}
		end,
		AkAACDecoder = function(prj)
			local prjLoc = AkRelativeToCwd(prj.location)

			includedirs {
				prjLoc .. "/../../AkAudiolib/iOS",
				prjLoc .. "/../../AkAudiolib/Mac",
			}
		end,
		AkVorbisDecoder = function(prj)
			local prjLoc = AkRelativeToCwd(prj.location)
			includedirs {
				prjLoc .. "/../../../AkAudiolib/AppleCommon",
			}
		end,
		AuroHeadphoneFX = function(prj)
			xcodebuildsettings { CLANG_WARN_STRICT_PROTOTYPES = "NO", GCC_WARN_UNUSED_FUNCTION = "NO", CLANG_WARN_COMMA = "NO" }
		end,
		PluginFactory = function(prj)
			optimize("Size")
		end,
		GameSimulator = function(prj)
			local prjLoc = AkRelativeToCwd(prj.location)

			defines("LUA_USE_MACOSX")
			xcodebuildsettings {
				INFOPLIST_FILE = "Info.plist",
				CODE_SIGN_IDENTITY = 'iPhone Developer',
				OTHER_LDFLAGS = {"-framework", "Foundation","-framework", "UIKit"}
			}

			files{
				prjLoc .. "/ReadMe.txt",
				prjLoc .. "/Info.plist",
				prjLoc .. "/*.mm",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/iOS/GamePadViewController.mm",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/iOS/GamePadViewController.h",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/iOS/StickView.m",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/iOS/StickView.h",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/iOS/Platform.h",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/iOS/ViewHelper.mm",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/iOS/ViewHelper.h",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/AppleCommon/InputMgr.h"
			}

			includedirs {
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/MenuSystem",
				prjLoc .. "/../../../../SDK/samples/IntegrationDemo/AppleCommon",
			}

			xcodebuildsettings {
				GCC_WARN_UNUSED_VALUE = "NO",
				GCC_WARN_UNUSED_FUNCTION = "NO",
				GCC_WARN_UNUSED_VARIABLE = "NO",
				GCC_WARN_64_TO_32_BIT_CONVERSION = "NO",
				CLANG_WARN_COMMA = "NO",
			}
			ImportAllAkTargets(true)
			links {
				"LuaLib",
				"ToLuaLib",
				"CoreAudio.framework",
				"AudioToolbox.framework",
				"CoreGraphics.framework",
				"AVFoundation.framework"
			}
			importproject "CommunicationCentral"
		end,
		LuaLib = function(prj)
			defines("LUA_USE_MACOSX")
			xcodebuildsettings {
				GCC_WARN_UNUSED_VALUE = "NO",
				GCC_WARN_UNUSED_FUNCTION = "NO",
				GCC_WARN_UNUSED_VARIABLE = "NO",
				GCC_WARN_64_TO_32_BIT_CONVERSION = "NO",
				CLANG_WARN_COMMA = "NO",
			}
		end,
		ToLuaLib = function(prj)
			defines("LUA_USE_MACOSX")
			xcodebuildsettings {
				GCC_WARN_UNUSED_VALUE = "NO",
				GCC_WARN_UNUSED_FUNCTION = "NO",
				GCC_WARN_UNUSED_VARIABLE = "NO",
				GCC_WARN_64_TO_32_BIT_CONVERSION = "NO",
				CLANG_WARN_COMMA = "NO",
			}
		end,
		IntegrationDemoMotion = function(prj)
			AK.Platforms.iOS.Exceptions.IntegrationDemo(prj)
		end,
		IntegrationDemo = function(prj)
			local prjLoc = AkRelativeToCwd(prj.location)

			defines("LUA_USE_MACOSX")

			-- Required when building from Xcode to find Wwise_IDs.h
			includedirs {
				prjLoc .. "/../../WwiseProject/GeneratedSoundBanks",
			}
			
			-- System
			links { 
				"Foundation.framework",
				"UIKit.framework",
				"CoreGraphics.framework",
				"AVFoundation.framework",
				"OpenGLES.framework",
				"QuartzCore.framework",
				"AudioToolbox.framework",
				"CoreAudio.framework",
			}
			flags { "GlobalSiblings" }
			includedirs {
				prjLoc .. "/../../SoundEngine/POSIX",
				prjLoc .. "/../AppleCommon",
			}
			files {
				prjLoc .. "/*.mm",
				prjLoc .. "/*.m",
				prjLoc .. "/IntegrationDemo_Prefix.pch",
				prjLoc .. "/IntegrationDemo-Info.plist",
				prjLoc .. "/../../SoundEngine/POSIX/*.*",
				prjLoc .. "/../AppleCommon/*.*",
			}
			xcodebuildsettings {
				COPY_PHASE_STRIP = "NO",
				ENABLE_BITCODE = "YES",
				GCC_ENABLE_SYMBOL_SEPARATION = "NO",
				GCC_PREFIX_HEADER = "IntegrationDemo_Prefix.pch",
				INFOPLIST_FILE = "IntegrationDemo-Info.plist",
				INSTALL_PATH = false,
				CODE_SIGN_IDENTITY = "iPhone Developer",
			}
			xcodebuildresources {
				"../WwiseProject/GeneratedSoundBanks/iOS",
				"Icon.png",
				"Icon-72.png",
				"IntegrationDemo-Info.plist",
			}
			filter "Debug*"
				linkoptions	{ "../../../iOS/Debug$(EFFECTIVE_PLATFORM_NAME)/lib/libCommunicationCentral.a" }
			filter "Profile*"
				linkoptions	{ "../../../iOS/Profile$(EFFECTIVE_PLATFORM_NAME)/lib/libCommunicationCentral.a" }
			filter {}
		end,
		SoundEngineDllProject = function(prj)
			flags { "GlobalSiblings" }
			defines {
				"AKSOUNDENGINE_EXPORTS",
				"AKSOUNDENGINE_DLL",
			}
			links {
				"CoreFoundation.framework",
			}
		end,
		AllSoundEngineSln = function(sln)
			xcscheme "BuildAllSchemes"
		end,
		AkSoundEngineDLLSln = function(sln)
			xcscheme "All"
		end,
		WwiseSDKSln = function(sln)
			xcscheme "AllWwiseSDK"
		end,
	},

	Exclusions = {
		AkSoundEngine = function(prjLoc)
			excludes {
				prjLoc .. "/../AppleCommon/AkLEngineApple.cpp",
				prjLoc .. "/../Mac/AkSink.cpp",
				prjLoc .. "/../Mac/AkSink.h",
				prjLoc .. "/../Mac/AkLEngine.cpp",
				prjLoc .. "/../Mac/AkLEngine.h",
			}
		end,
		GameSimulator = function(prjLoc)
			excludes {
				prjLoc .. "/../../src/libraries/Common/UniversalScrollBuffer.*"
			}
		end,
		IntegrationDemo = function(projectLocation)
		end
	}
}
AK.Platforms.iOS.xcodebuildsettings['GCC_THUMB_SUPPORT[arch=armv7]'] = "YES" -- HACK: Weirdo chars in name...
return AK.Platforms.iOS
