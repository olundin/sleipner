#ifndef SL_APPLICATION_H
#define SL_APPLICATION_H

#include "sleipnir\core.h"

namespace sl {

	class SL_API Application {
	public:
		Application();
		virtual ~Application();

	private:
		bool running;
	};

}

#endif // SL_APPLICATION_H
