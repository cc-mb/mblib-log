local Logger = require "mb.log.logger"

--- Logger pack.
---@class MultiLogger
---@field private _loggers table Packed loggers.
local MultiLogger = setmetatable({}, {__index = Logger})
MultiLogger.__index = MultiLogger

--- Constructor
---@param ... Logger Packed loggers.
function MultiLogger.new(...)
  local self = setmetatable(Logger.new(), MultiLogger)

  self._loggers = {...}

  return self
end

function MultiLogger:log(level, message)
  for _, logger in pairs(self._loggers) do
    logger:log(level, message)
  end
end

return MultiLogger
