--- Abstract base logger.
---@class Logger
local Logger = {
  LEVEL = {
    ERROR = 1,
    WARNING = 2,
    INFO = 3,
    DEBUG = 4,
    TRACE = 5
  }
}
Logger.__index = Logger

function Logger.new()
  local self = setmetatable({}, Logger)
  return self
end

--- Log message.
---@param level number
---@param message string
function Logger:log(level, message)
  error("Unimplemented.")
end

--- Report severe issue.
---@param message string Logged message.
function Logger:error(message)
  self:log(Logger.LEVEL.ERROR, message)
end

--- Report issue.
---@param message string Logged message.
function Logger:warning(message)
  self:log(Logger.LEVEL.WARNING, message)
end

--- Report important info.
---@param message string Logged message.
function Logger:info(message)
  self:log(Logger.LEVEL.INFO, message)
end

--- Report debugging info.
---@param message string Logged message.
function Logger:debug(message)
  self:log(Logger.LEVEL.DEBUG, message)
end

--- Report tracing info.
---@param message string Logged message.
function Logger:trace(message)
  self:log(Logger.LEVEL.TRACE, message)
end

return Logger
