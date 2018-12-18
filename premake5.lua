-- sleipnir workspace
workspace "sleipnir"
    filename "sleipnir"
	architecture "x64"
    configurations {
        "debug",    -- debug: logging, debugging
        "release",  -- release: logging, no debugging
        "dist"      -- distribution: no logging, no debugging
    }

include "sleipnir"
include "sandbox"
