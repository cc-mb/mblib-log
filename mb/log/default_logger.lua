local HandleLogger = require "mb.log.handle_logger"

local DEFAULT_LOGGER = HandleLogger.new(io.stderr, HandleLogger.LEVEL.WARNING)

return DEFAULT_LOGGER