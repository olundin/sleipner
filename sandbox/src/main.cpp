#include "sleipnir/application.h"
#include "sleipnir/log.h"
#include <iostream>

int main() {
	sl::Application app;
	SL_LOG_DEBUG("debug msg");
	std::cin.get();
	return 0;
}