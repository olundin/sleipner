#include "sleipnir\log.h"

namespace sl {

	void Logger::log(LogLevel lvl, const std::string& msg) {
		std::cout << msg << '\n';
	}

}