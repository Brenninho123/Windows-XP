#ifndef HXCPP_CONFIG_INCLUDED
#define HXCPP_CONFIG_INCLUDED

#if !defined(HXCPP_ARMV7) && !defined(NO_HXCPP_ARMV7)
#define HXCPP_ARMV7 
#endif

#if !defined(HXCPP_VISIT_ALLOCS) && !defined(NO_HXCPP_VISIT_ALLOCS)
#define HXCPP_VISIT_ALLOCS 
#endif

#if !defined(HX_SMART_STRINGS) && !defined(NO_HX_SMART_STRINGS)
#define HX_SMART_STRINGS 
#endif

#if !defined(HXCPP_API_LEVEL) && !defined(NO_HXCPP_API_LEVEL)
#define HXCPP_API_LEVEL 430
#endif

#if !defined(ANDROID) && !defined(NO_ANDROID)
#define ANDROID ANDROID
#endif

#if !defined(HX_ANDROID) && !defined(NO_HX_ANDROID)
#define HX_ANDROID 
#endif

#if !defined(HXCPP_ANDROID_PLATFORM) && !defined(NO_HXCPP_ANDROID_PLATFORM)
#define HXCPP_ANDROID_PLATFORM 16
#endif

#include <hxcpp.h>

#endif
