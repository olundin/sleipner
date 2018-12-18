#ifndef SL_CORE_H
#define SL_CORE_H

#ifdef SL_PLATFORM_WINDOWS
    #ifdef SL_BUILD_DLL
        #define SL_API __declspec(dllexport)
    #else
        #define SL_API __declspec(dllimport)
    #endif
#else
    #error Sleipner only has Windows support as of this moment!
#endif

#endif // SL_CORE_H
