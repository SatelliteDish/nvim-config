return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap",
    "dotnet/vscode-csharp",
  },
  config = function()
    local dap = require('dap')
    dap.adapters.gdb = {
      type = "executable",
      command = "gdb",
      args = { "-i", "dap" }
    }


    dap.configurations.cpp = {
      {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
      },
    }
    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp

    local dapui = require('dapui')
    dapui.setup()


    local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
      dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
      dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
      dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.api.nvim_set_keymap("n", "<leader>dbr", ":DapToggleBreakpoint<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({ reset = true })<CR>", { noremap = true })

  end,
}
