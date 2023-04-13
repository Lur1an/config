local dap = require "dap"

dap.setup()
-- Python
dap.adapters.python = {
    type = "executable",
   command = os.getenv "VIRTUAL_ENV" + "/bin/python",
    args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
    {
        type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
        request = "launch",
        name = "Launch current file",

        -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

        program = "${file}", -- This configuration will launch the current file if used.
        pythonPath = os.getenv "VIRTUAL_ENV" .. "/bin/python",
    },
}

local dap_python = require "dap-python"
dap_python.setup(os.getenv "VIRTUAL_ENV" + "/bin/python")
-- Rust
