timer.Simple(0, function()
-------------------------------------------------------------[Config]-------------------------------------------------------------------------------
local hightdifference = {
    [TEAM_DOG] = Vector(0,0,45),
    [TEAM_CAT] = Vector(0,0,34),
    [TEAM_K9] = Vector(0,0,40),

}
local normoffset = Vector(0,0,64)
-------------------------------------------------------------[Code]--------------------------------------------------------------------------------
    hook.Add("PlayerSpawn", "changemodel.hight", function(ply)
        if hightdifference[ply:Team()] then
            ply:SetViewOffset(hightdifference[ply:Team()])
            return 
        else
            local viewoffset = ply:GetViewOffset()
            if viewoffset != Vector(0,0,0) and viewoffset != Vector(0,0,64) then
                ply:SetViewOffset(normoffset)
            end
        end
    end)
end)
