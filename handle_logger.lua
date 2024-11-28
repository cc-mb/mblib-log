local Logger = require "logger"

--- Write handle logger.
---@class HandleLogger
---@field private _handle table Write handle to write to.
---@field private _level number Max level to accept.
local HandleLogger = {}
setmetatable(HandleLogger, {__index = Logger})

--- Constructor
---@param handle table Write handle to write to.
---@param level number? Max level to accept. Defaults to TRACE.
function HandleLogger.new(handle, level)
  local self = setmetatable(Logger.new(), HandleLogger)

  self._handle = handle
  self._level = level or Logger.LEVEL.TRACE

  return self
end

function HandleLogger:log(level, message)
  if level <= self._level then
    self._handle.write(message)
  end
end

return HandleLogger
