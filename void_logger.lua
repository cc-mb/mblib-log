local Logger = require "logger"

--- Void logger.
---@class VoidLogger
local VoidLogger = {}
setmetatable(VoidLogger, {__index = Logger})

--- Constructor
---@param handle table Write handle to write to.
---@param level number? Max level to accept. Defaults to TRACE.
function VoidLogger.new(handle, level)
  local self = setmetatable(Logger.new(), VoidLogger)
  return self
end

function VoidLogger:log(level, message)
end

return VoidLogger
