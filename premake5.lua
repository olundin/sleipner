-- sleipner workspace
workspace "sleipner"
    filename "sleipner"
	architecture "x64"
    configurations {
        "debug",    -- debug: logging, debugging
        "release",  -- release: logging, no debugging
        "dist"      -- distribution: no logging, no debugging
    }

include "sleipner"
include "sandbox"
