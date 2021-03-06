# =================================================================================================
# ADOBE SYSTEMS INCORPORATED
# Copyright 2013 Adobe Systems Incorporated
# All Rights Reserved
#
# NOTICE: Adobe permits you to use, modify, and distribute this file in accordance with the terms
# of the Adobe license agreement accompanying it.
# =================================================================================================

# ==============================================================================
# define minimum cmake version
cmake_minimum_required(VERSION 3.5.2)

# ==============================================================================
# XMP config for XMPTOOLKIT and TestRunner
# ==============================================================================
if(NOT DEFINED XMP_ROOT)
	set(XMP_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/${XMP_THIS_PROJECT_RELATIVEPATH})
endif()
if(NOT DEFINED COMMON_BUILD_SHARED_DIR)
	set(COMMON_BUILD_SHARED_DIR ${XMP_ROOT}/build/shared)
endif()

set(INCLUDE_CPP_DOM_SOURCE TRUE)

if (INCLUDE_CPP_DOM_SOURCE)
	add_definitions(-DENABLE_CPP_DOM_MODEL=1)
else (INCLUDE_CPP_DOM_SOURCE)
	add_definitions(-DENABLE_CPP_DOM_MODEL=0)
endif(INCLUDE_CPP_DOM_SOURCE)

include(${XMP_ROOT}/build/XMP_ConfigCommon.cmake)

