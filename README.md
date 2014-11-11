CairoTestMac
------------

This is a small test application that uses the cross-platform Cairo graphics library
from inside a Cocoa application. It creates a new view in a window and in that view's
-drawRect: method creates a Cairo surface and context for this view, then draws a
rectangle inside this view.


Installation/Requirements
-------------------------

This assumes you have Cairo in /usr/local. The easiest way to get that is probably using
Homebrew, by doing:

	brew install cairo --without-x11

This example links to libcairo.a, so should result in a stand-alone application in the
end that any Mac user could run.


License
-------

This code is released under the zlib license:

	Copyright 2014 Uli Kusterer.
	
	This software is provided 'as-is', without any express or implied
	warranty. In no event will the authors be held liable for any damages
	arising from the use of this software.

	Permission is granted to anyone to use this software for any purpose,
	including commercial applications, and to alter it and redistribute it
	freely, subject to the following restrictions:

	   1. The origin of this software must not be misrepresented; you must not
	   claim that you wrote the original software. If you use this software
	   in a product, an acknowledgment in the product documentation would be
	   appreciated but is not required.

	   2. Altered source versions must be plainly marked as such, and must not be
	   misrepresented as being the original software.

	   3. This notice may not be removed or altered from any source
	   distribution.
