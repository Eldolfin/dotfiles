local home = os.getenv("HOME")
local root_markers = { "gradlew", "mvnw", ".git" }
local root_dir = require("jdtls.setup").find_root(root_markers)
local workspace_folder = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local config = {
  cmd = {

    "java", -- or '/path/to/java17_or_newer/bin/java'
    -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xms1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",

    "-jar",
    "/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",

    "-configuration",
    "/usr/share/java/jdtls/config_linux",

    "-data",
    workspace_folder,
  },

  root_dir = vim.fs.dirname(vim.fs.find(root_markers, { upward = true })[1]),

  init_options = {
    bundles = {
      vim.fn.glob(
        "~/.m2/repository/com/microsoft/java/com.microsoft.java.debug.plugin/0.44.0/com.microsoft.java.debug.plugin-0.44.0.jar"
      ),
    },
  },
}

config["on_attach"] = function(client, bufnr)
  -- With `hotcodereplace = 'auto' the debug adapter will try to apply code changes
  -- you make during a debug session immediately.
  -- Remove the option if you do not want that.
  -- You can use the `JdtHotcodeReplace` command to trigger it manually
  require("jdtls").setup_dap({ hotcodereplace = "auto" })

  require("jdtls.dap").setup_dap_main_class_configs()
end

require("jdtls").start_or_attach(config)
