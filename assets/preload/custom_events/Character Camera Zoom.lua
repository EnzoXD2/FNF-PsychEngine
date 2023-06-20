dadZoom = 0
bfZoom = 0
function onCreate()
   dadZoom = getProperty('defaultCamZoom')
   bfZoom = getProperty('defaultCamZoom')
end
 function onEvent(n, v1, v2)
    if n == 'Character Camera Zoom' then
      if not (v1 == nil or v1 == '') then
        bfZoom = v1
      end
      if not (v2 == nil or v2 == '') then
        dadZoom = v2
      end
    end
end
function onUpdate()
  if mustHitSection then
    setProperty('defaultCamZoom', bfZoom)
  else
    setProperty('defaultCamZoom', dadZoom)
  end
end