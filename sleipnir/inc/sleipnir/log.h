#ifndef SL_LOG_H
#define SL_LOG_H

#include "sleipnir\core.h"
#include <iostream>
#include <string>

namespace sl {

	enum LogLevel {
		ERROR,
		WARNING,
		INFO,
		DEBUG,
	};

	class SL_API Logger {
	public:
		static void log(LogLevel lvl, const std::string& msg);
	};

}

// enable all logging for debug
#ifdef SL_CONFIGURATION_DEBUG
#define SL_LOG_ERROR(MSG)	sl::Logger::log(sl::ERROR, MSG)
#define SL_LOG_WARNING(MSG)	sl::Logger::log(sl::WARNING, MSG)
#define SL_LOG_INFO(MSG)	sl::Logger::log(sl::INFO, MSG)
#define SL_LOG_DEBUG(MSG)	sl::Logger::log(sl::DEBUG, MSG)
#endif

// enable some logging for release
#ifdef SL_CONFIGURATION_RELEASE
#define SL_LOG_ERROR(MSG)	sl::Logger::log(sl::ERROR, MSG)
#define SL_LOG_WARNING(MSG)	sl::Logger::log(sl::WARNING, MSG)
#define SL_LOG_INFO(MSG)
#define SL_LOG_DEBUG(MSG)	
#endif

// disable all logging for dist
#ifdef SL_CONFIGURATION_DIST
#define SL_LOG_ERROR(MSG)
#define SL_LOG_WARNING(MSG)
#define SL_LOG_INFO(MSG)
#define SL_LOG_DEBUG(MSG)	
#endif

#endif // SL_LOG_H
