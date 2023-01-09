local logger = {}

local function getDateAndTime()
    return os.date("%F, %T", os.time())
end

local function log(level, message)
    local time = getDateAndTime()
    io.write(string.format("[%s] %s\t--- %s\n", time, level, message))
end

function logger.info(fmt, ...)
    local level = "INFO"
    local message = string.format(fmt, ...)
    log(level, message)
end

function logger.debug(fmt, ...)
    local level = "DEBUG"
    local message = string.format(fmt, ...)
    log(level, message)
end

function logger.trace(fmt, ...)
    local level = "TRACE"
    local message = string.format(fmt, ...)
    log(level, message)
end

function logger.warning(fmt, ...)
    local level = "WARNING"
    local message = string.format(fmt, ...)
    log(level, message)
end

function logger.error(fmt, ...)
    local level = "ERROR"
    local message = string.format(fmt, ...)
    log(level, message)
end

return logger
