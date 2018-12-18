#ifndef SL_WINDOW_H
#define SL_WINDOW_H

#include "sleipnir\core.h"

namespace sl {

	class SL_API Window {
	public:
		Window();
		virtual ~Window();

	private:
		bool running;
	};

}

#endif // SL_WINDOW_H
