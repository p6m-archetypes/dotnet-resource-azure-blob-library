-- dotnet-resource-azure-blob-library main module.
-- Renders Azure.Storage.Blobs service extension into the service project Resources/ folder.
--
-- The calling archetype is responsible for adding Azure.Storage.Blobs to the .csproj.
--
-- API:
--   local azure = require("dotnet-resource-azure-blob")
--   azure.render(context, { destination = context:get("project-name") })

local M = {}

function M.render(context, opts)
    opts = opts or {}
    local d = opts.destination
    if d and d ~= "" then
        directory.render("contents", context, { destination = d })
    else
        directory.render("contents", context)
    end
    return context
end

return M
