local config = {
  cmd = { vim.env.HOME .. "/.local/opt/jdtls/bin/jdtls" },
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
  init_options = {
    bundles = {
      vim.env.HOME .. "/.local/bin/java-debug-*.jar",
    },
  },
}
require("jdtls").start_or_attach(config)
