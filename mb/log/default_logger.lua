local HandleLogger = require "handle_logger"

local DefaultLogger = HandleLogger.new(io.stderr, HandleLogger.LEVEL.WARNING)

return DefaultLogger