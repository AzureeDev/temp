require("lib/managers/WorkshopManager")
require("lib/managers/workshop/UGCItem")
require("lib/managers/workshop/SkinEditor")

WeaponSkinExtension = WeaponSkinExtension or class()

function WeaponSkinExtension:init(asset_path)

    if not asset_path or not SystemFS:exists(asset_path) then
        log("Asset directory at '" .. tostring(asset_path) .. "' do not exist.")
        return
    end

    self._item = UGCItem:new(asset_path)
    self._item:load()
    self._path = self._item:path()

    --SkinEditor:load_textures(self._item)
end

function WeaponSkinExtension:load_assets(path, path_or_tex_type)

end

function WeaponSkinExtension:get_base_gradient()
    return string.gsub("base_gradient/" .. self._item:config().data.base_gradient_name, ".tga", "")
end

function WeaponSkinExtension:get_pattern_gradient()
    return self._item:config().data.pattern_gradient_name
end

function WeaponSkinExtension:get_pattern()
    return self._item:config().data.pattern_name
end

function WeaponSkinExtension:get_pattern_tweak()
    return self._item:config().data.pattern_tweak
end

function WeaponSkinExtension:get_pattern_pos()
    return self._item:config().data.pattern_pos
end

function WeaponSkinExtension:get_sticker()
    return self._item:config().data.sticker_name
end

function WeaponSkinExtension:get_uv_scale()
    return self._item:config().data.uv_scale
end

function WeaponSkinExtension:get_uv_offset_rot()
    return self._item:config().data.uv_offset_rot
end

function WeaponSkinExtension:get_cubemap_pattern_control()
    return self._item:config().data.cubemap_pattern_control
end

function WeaponSkinExtension:get_types()
    return self._item:config().data.types
end

function WeaponSkinExtension:get_parts()
    return self._item:config().data.parts
end