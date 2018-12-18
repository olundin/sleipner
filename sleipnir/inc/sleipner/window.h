#pragma once

namespace sl {

	class Window {
	public:
		Window(const char* title, unsigned int width, unsigned int height);
		virtual ~Window();
		
		virtual unsigned int get_width() const = 0;
		virtual unsigned int get_height() const = 0;
	};

}