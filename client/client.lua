

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(4)
	end
end)


Citizen.CreateThread(function()
	while true do
		Wait(10)
		if IsControlJustPressed(1, Config.Key2) and IsControlPressed(1, Config.Key1) then
			OpenRadioMenu()
			end
	end
end)



function OpenRadioMenu()

  local elements = {
    {label = _U('leave'), value = 'leave'},
    {label = _U('R1'), value = 'radio1'},
    {label = _U('R2'), value = 'radio2'},
    {label = _U('R3'), value = 'radio3'},	
    {label = _U('R4'), value = 'radio4'},	
    {label = _U('R5'), value = 'radio5'}	
	
}

  ESX.UI.Menu.CloseAll()


    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'radio',
      {
        title    = _U('Channel sellect'),
        align    = 'bottom-right',
        elements = elements,
        },

        function(data, menu)

      menu.close()
      if data.current.value == 'leave' then
          TriggerEvent('TokoVoip:removePlayerFromRadio','Call PD Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','EMS Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO/EMS Shared Radio')
         TriggerEvent('TokoVoip:removePlayerFromRadio','SO Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO Shared Radio')     
      end     
      if data.current.value == 'radio1' then
          TriggerEvent('TokoVoip:addPlayerToRadio','Call PD Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','EMS Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO/EMS Shared Radio')
         TriggerEvent('TokoVoip:removePlayerFromRadio','SO Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO Shared Radio')     
      end
      if data.current.value == 'radio2' then
          TriggerEvent('TokoVoip:addPlayerToRadio','EMS Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO/EMS Shared Radio')
         TriggerEvent('TokoVoip:removePlayerFromRadio','SO Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO Shared Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','Call PD Radio')      
      end
      if data.current.value == 'radio3' then
          TriggerEvent('TokoVoip:addPlayerToRadio','PD/SO/EMS Shared Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','EMS Radio')
         TriggerEvent('TokoVoip:removePlayerFromRadio','SO Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO Shared Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','Call PD Radio') 

      end	 
      if data.current.value == 'radio4' then
          TriggerEvent('TokoVoip:addPlayerToRadio','SO Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','Call PD Radio') 
          TriggerEvent('TokoVoip:removePlayerFromRadio','EMS Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO Shared Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO/EMS Shared Radio')
      end
      if data.current.value == 'radio5' then
          TriggerEvent('TokoVoip:addPlayerToRadio','PD/SO Shared Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','Call PD Radio') 
          TriggerEvent('TokoVoip:removePlayerFromRadio','EMS Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','SO Radio')
          TriggerEvent('TokoVoip:removePlayerFromRadio','PD/SO/EMS Shared Radio')

      end
	  

     

      CurrentAction     = 'radio'
      CurrentActionMsg  = _U('open_cloackroom')
      CurrentActionData = {}

    end,
    function(data, menu)

      menu.close()

      CurrentAction     = 'radio'
      CurrentActionMsg  = _U('open_cloackroom')
      CurrentActionData = {}
    end
  )

end