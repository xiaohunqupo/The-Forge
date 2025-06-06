loader.SetRenderMode(0) 		-- Render Scene Only
loader.SetReflectionType(0) 	-- Pixel Projected Reflections

loader.SetUseHolepatching((loader.GetUseHolepatching()+1) % 2)
loader.SetUseExpensiveHolepatching((loader.GetUseExpensiveHolepatching()+1) % 2)
loader.SetUseFadeEffect((loader.GetUseFadeEffect()+1) % 2)

math.randomseed( 0 )
loader.SetIntensityofPPR(math.random())
loader.SetNumberofPlanes(math.random(1, 4))
loader.SetSizeofMainPlane(math.random() + math.random(5.0, 99.0))

loader.SetCounter(5)

local selectedAPIIndex = 0
if loader.GetSelectAPI ~= nil then
	selectedAPIIndex = loader.GetSelectAPI()
end

if loader.RequestScreenshotCapture ~= nil then
	loader.RequestScreenshotCapture("API" .. selectedAPIIndex .. "_" .. "RenderScene")
end
