local Logger = require "logger"

--- Prefixed logger wrapper.
---@class PrefixedLogger
---@field private _logger Logger Wrapped logger.
---@field private _prefix string Prefix for all messages.
local PrefixedLogger = {}
PrefixedLogger.__index = PrefixedLogger

--- Constructor
---@param logger Logger Wrapped logger.
---@param prefix string Prefix for all messages.
function PrefixedLogger.new(logger, prefix)
  local self = setmetatable({}, PrefixedLogger)

  self._logger = logger
  self._prefix = prefix

  return self
end

--- Log message with prefix.
---@param level number
---@param message string
function PrefixedLogger:log(level, message)
  self._logger:log(level, self._prefix .. " " .. message)
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

return HandleLogger
