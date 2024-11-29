local Logger = require "mb.log.logger"

--- Void logger.
local VOID_LOGGER = Logger.new()

function VOID_LOGGER:log(level, message)
end

return VOID_LOGGER
