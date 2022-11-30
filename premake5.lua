project "assimp"
	kind "StaticLib"
	language "C++"
	configmap 
	{
		["ReleaseWithInfo"] = "Release",
		["ReleaseNoImGui"] = "Release"
	}

	targetdir ("%{wks.location}/bin/" .. outputDir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputDir .. "/%{prj.name}")

	defines {
		-- "SWIG",
		--"ASSIMP_BUILD_NO_OWN_ZLIB",

		"ASSIMP_BUILD_NO_X_IMPORTER",
		"ASSIMP_BUILD_NO_3DS_IMPORTER",
		"ASSIMP_BUILD_NO_MD3_IMPORTER",
		"ASSIMP_BUILD_NO_MDL_IMPORTER",
		"ASSIMP_BUILD_NO_MD2_IMPORTER",
		-- "ASSIMP_BUILD_NO_PLY_IMPORTER",
		"ASSIMP_BUILD_NO_ASE_IMPORTER",
		-- "ASSIMP_BUILD_NO_OBJ_IMPORTER",
		"ASSIMP_BUILD_NO_AMF_IMPORTER",
		"ASSIMP_BUILD_NO_HMP_IMPORTER",
		"ASSIMP_BUILD_NO_SMD_IMPORTER",
		"ASSIMP_BUILD_NO_MDC_IMPORTER",
		"ASSIMP_BUILD_NO_MD5_IMPORTER",
		"ASSIMP_BUILD_NO_STL_IMPORTER",
		"ASSIMP_BUILD_NO_LWO_IMPORTER",
		"ASSIMP_BUILD_NO_DXF_IMPORTER",
		"ASSIMP_BUILD_NO_NFF_IMPORTER",
		"ASSIMP_BUILD_NO_RAW_IMPORTER",
		"ASSIMP_BUILD_NO_OFF_IMPORTER",
		"ASSIMP_BUILD_NO_AC_IMPORTER",
		"ASSIMP_BUILD_NO_BVH_IMPORTER",
		"ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
		"ASSIMP_BUILD_NO_IRR_IMPORTER",
		"ASSIMP_BUILD_NO_Q3D_IMPORTER",
		"ASSIMP_BUILD_NO_B3D_IMPORTER",
		-- "ASSIMP_BUILD_NO_COLLADA_IMPORTER",
		"ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
		"ASSIMP_BUILD_NO_CSM_IMPORTER",
		"ASSIMP_BUILD_NO_3D_IMPORTER",
		"ASSIMP_BUILD_NO_LWS_IMPORTER",
		"ASSIMP_BUILD_NO_OGRE_IMPORTER",
		"ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
		"ASSIMP_BUILD_NO_MS3D_IMPORTER",
		"ASSIMP_BUILD_NO_COB_IMPORTER",
		"ASSIMP_BUILD_NO_BLEND_IMPORTER",
		"ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
		"ASSIMP_BUILD_NO_NDO_IMPORTER",
		"ASSIMP_BUILD_NO_IFC_IMPORTER",
		"ASSIMP_BUILD_NO_XGL_IMPORTER",
		--"ASSIMP_BUILD_NO_FBX_IMPORTER",
		"ASSIMP_BUILD_NO_ASSBIN_IMPORTER",
		-- "ASSIMP_BUILD_NO_GLTF_IMPORTER",
		"ASSIMP_BUILD_NO_C4D_IMPORTER",
		"ASSIMP_BUILD_NO_3MF_IMPORTER",
		"ASSIMP_BUILD_NO_X3D_IMPORTER",
		"ASSIMP_BUILD_NO_MMD_IMPORTER",
		
		"ASSIMP_BUILD_NO_STEP_EXPORTER",
		"ASSIMP_BUILD_NO_SIB_IMPORTER",

		-- "ASSIMP_BUILD_NO_MAKELEFTHANDED_PROCESS",
		-- "ASSIMP_BUILD_NO_FLIPUVS_PROCESS",
		-- "ASSIMP_BUILD_NO_FLIPWINDINGORDER_PROCESS",
		-- "ASSIMP_BUILD_NO_CALCTANGENTS_PROCESS",
		"ASSIMP_BUILD_NO_JOINVERTICES_PROCESS",
		-- "ASSIMP_BUILD_NO_TRIANGULATE_PROCESS",
		"ASSIMP_BUILD_NO_GENFACENORMALS_PROCESS",
		-- "ASSIMP_BUILD_NO_GENVERTEXNORMALS_PROCESS",
		"ASSIMP_BUILD_NO_REMOVEVC_PROCESS",
		"ASSIMP_BUILD_NO_SPLITLARGEMESHES_PROCESS",
		"ASSIMP_BUILD_NO_PRETRANSFORMVERTICES_PROCESS",
		"ASSIMP_BUILD_NO_LIMITBONEWEIGHTS_PROCESS",
		-- "ASSIMP_BUILD_NO_VALIDATEDS_PROCESS",
		"ASSIMP_BUILD_NO_IMPROVECACHELOCALITY_PROCESS",
		"ASSIMP_BUILD_NO_FIXINFACINGNORMALS_PROCESS",
		"ASSIMP_BUILD_NO_REMOVE_REDUNDANTMATERIALS_PROCESS",
		"ASSIMP_BUILD_NO_FINDINVALIDDATA_PROCESS",
		"ASSIMP_BUILD_NO_FINDDEGENERATES_PROCESS",
		"ASSIMP_BUILD_NO_SORTBYPTYPE_PROCESS",
		"ASSIMP_BUILD_NO_GENUVCOORDS_PROCESS",
		"ASSIMP_BUILD_NO_TRANSFORMTEXCOORDS_PROCESS",
		"ASSIMP_BUILD_NO_FINDINSTANCES_PROCESS",
		"ASSIMP_BUILD_NO_OPTIMIZEMESHES_PROCESS",
		"ASSIMP_BUILD_NO_OPTIMIZEGRAPH_PROCESS",
		"ASSIMP_BUILD_NO_SPLITBYBONECOUNT_PROCESS",
		"ASSIMP_BUILD_NO_DEBONE_PROCESS",
		"ASSIMP_BUILD_NO_EMBEDTEXTURES_PROCESS",
		"ASSIMP_BUILD_NO_GLOBALSCALE_PROCESS",
	}

	files {
		"include/**",
		"code/Assimp.cpp",
		"code/BaseImporter.cpp",
		"code/ColladaLoader.cpp",
		"code/ColladaParser.cpp",
		"code/CreateAnimMesh.cpp",
		"code/PlyParser.cpp",
		"code/PlyLoader.cpp",
		"code/BaseProcess.cpp",
		"code/EmbedTexturesProcess.cpp",
		"code/ConvertToLHProcess.cpp",
		"code/DefaultIOStream.cpp",
		"code/DefaultIOSystem.cpp",
		"code/DefaultLogger.cpp",
		"code/GenVertexNormalsProcess.cpp",
		"code/Importer.cpp",
		"code/ImporterRegistry.cpp",
		"code/MaterialSystem.cpp",
		"code/PostStepRegistry.cpp",
		"code/ProcessHelper.cpp",
		"code/scene.cpp",
		"code/ScenePreprocessor.cpp",
		"code/ScaleProcess.cpp",
		"code/SGSpatialSort.cpp",
		"code/SkeletonMeshBuilder.cpp",
		"code/SpatialSort.cpp",
		"code/TriangulateProcess.cpp",
		"code/ValidateDataStructure.cpp",
		"code/Version.cpp",
		"code/VertexTriangleAdjacency.cpp",
		"code/ObjFileImporter.cpp",
		"code/ObjFileMtlImporter.cpp",
		"code/ObjFileParser.cpp",
		"code/glTFImporter.cpp",
		"code/glTF2Importer.cpp",
		"code/MakeVerboseFormat.cpp",
		"code/CalcTangentsProcess.cpp",
		"code/ScaleProcess.cpp",
		"code/EmbedTexturesProcess.cpp",

		"code/FBXAnimation.cpp",
		"code/FBXBinaryTokenizer.cpp",
		"code/FBXCommon.h",
		"code/FBXCompileConfig.h",
		"code/FBXConverter.cpp",
		"code/FBXConverter.h",
		"code/FBXDeformer.cpp",
		"code/FBXDocument.cpp",
		"code/FBXDocument.h",
		"code/FBXDocumentUtil.cpp",
		"code/FBXDocumentUtil.h",
		"code/FBXExporter.cpp",
		"code/FBXExporter.h",
		"code/FBXExportNode.cpp",
		"code/FBXExportNode.h",
		"code/FBXExportProperty.cpp",
		"code/FBXExportProperty.h",
		"code/FBXImporter.cpp",
		"code/FBXImporter.h",
		"code/FBXImportSettings.h",
		"code/FBXMaterial.cpp",
		"code/FBXMeshGeometry.cpp",
		"code/FBXMeshGeometry.h",
		"code/FBXModel.cpp",
		"code/FBXNodeAttribute.cpp",
		"code/FBXParser.cpp",
		"code/FBXParser.h",
		"code/FBXProperties.cpp",
		"code/FBXProperties.h",
		"code/FBXTokenizer.cpp",
		"code/FBXTokenizer.h",
		"code/FBXUtil.cpp",
		"code/FBXUtil.h",

		"contrib/irrXML/*",
		"contrib/zlib/adler32.c",
		"contrib/zlib/compress.c",
		"contrib/zlib/crc32.c",
		"contrib/zlib/deflate.c",
		"contrib/zlib/gzclose.c",
		"contrib/zlib/gzlib.c",
		"contrib/zlib/gzread.c",
		"contrib/zlib/gzwrite.c",
		"contrib/zlib/inflate.c",
		"contrib/zlib/infback.c",
		"contrib/zlib/inftrees.c",
		"contrib/zlib/inffast.c",
		"contrib/zlib/trees.c",
		"contrib/zlib/uncompr.c",
		"contrib/zlib/zutil.c",
		"contrib/zlib/crc32.h",
		"contrib/zlib/deflate.h",
		"contrib/zlib/gzguts.h",
		"contrib/zlib/inffast.h",
		"contrib/zlib/inffixed.h",
		"contrib/zlib/inflate.h",
		"contrib/zlib/inftrees.h",
		"contrib/zlib/trees.h",
		"contrib/zlib/zutil.h",
		"contrib/zlib/zlib.h"
	}

	includedirs
	{
		"include",
		"contrib/irrXML",
		"contrib/zlib",
		"contrib/rapidjson/include",
	}

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"


		filter "system:linux"
		cppdialect "C++17"
		systemversion "latest"

	filter  "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter  "configurations:Release"
		runtime "Release"
		optimize "On"
