-- Made by The Stoned raider 
--Check out our server DOJSRC


ESX = nil
local PlayerData                = {}

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		Wait(1)

if IsControlJustPressed(1, Config.Key2) and IsControlPressed(1, Config.Key1)   then
			OpenRadioMenu()	
			
			end
	end
end)



function OpenRadioMenu()
        local _source = source
        local PlayerData = ESX.GetPlayerData(_source)
  local elements = {
    {label = _U('leavepublic'), value = 'leavepublic'}
	
}


    if (PlayerData.job.name == 'police' or PlayerData.job.name == 'fire' or PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'policeambulance' ) then
     
      table.insert(elements, { label = _U('leavepolice'), value = 'leavepolice'})  
      table.insert(elements, { label = _U('R1'), value = 'radio6'})  
      table.insert(elements, { label = _U('R2'), value = 'radio7'})  
      table.insert(elements, { label = _U('R3'), value = 'radio8'}) 
	  table.insert(elements, { label = _U('R4'), value = 'radio9'})  
      table.insert(elements, { label = _U('R5'), value = 'radio10'})  
	  
end	
      table.insert(elements, { label = _U('CB1'), value = 'radio1'})  
      table.insert(elements, { label = _U('CB2'), value = 'radio2'})  
      table.insert(elements, { label = _U('CB3'), value = 'radio3'}) 
	  table.insert(elements, { label = _U('CB4'), value = 'radio4'})  
      table.insert(elements, { label = _U('CB5'), value = 'radio5'})  
      table.insert(elements, { label = _U('AD'), value = 'nothing'}) 
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
      if data.current.value == 'leavepublic' then
          exports.tokovoip_script:removePlayerFromRadio(11)
          exports.tokovoip_script:removePlayerFromRadio(12)
          exports.tokovoip_script:removePlayerFromRadio(13)
          exports.tokovoip_script:removePlayerFromRadio(14)
          exports.tokovoip_script:removePlayerFromRadio(15)
      end 
      if data.current.value == 'leavepolice' then
          exports.tokovoip_script:removePlayerFromRadio(16)
          exports.tokovoip_script:removePlayerFromRadio(17)
          exports.tokovoip_script:removePlayerFromRadio(18)
          exports.tokovoip_script:removePlayerFromRadio(19)
          exports.tokovoip_script:removePlayerFromRadio(20)
      end 	  
      if data.current.value == 'radio1' then
		  exports.tokovoip_script:addPlayerToRadio(11 )
          exports.tokovoip_script:removePlayerFromRadio(12 )
          exports.tokovoip_script:removePlayerFromRadio(13 )
          exports.tokovoip_script:removePlayerFromRadio(14 )
          exports.tokovoip_script:removePlayerFromRadio(15 )    
      end
      if data.current.value == 'radio2' then
		  exports.tokovoip_script:addPlayerToRadio(12 )
          exports.tokovoip_script:removePlayerFromRadio(11 )
          exports.tokovoip_script:removePlayerFromRadio(13 )
          exports.tokovoip_script:removePlayerFromRadio(14 )
          exports.tokovoip_script:removePlayerFromRadio(15 )   
      end
      if data.current.value == 'radio3' then
		  exports.tokovoip_script:addPlayerToRadio(13 )
          exports.tokovoip_script:removePlayerFromRadio(11 )
          exports.tokovoip_script:removePlayerFromRadio(12 )
          exports.tokovoip_script:removePlayerFromRadio(14 )
          exports.tokovoip_script:removePlayerFromRadio(15 )

      end	 
      if data.current.value == 'radio4' then
		  exports.tokovoip_script:addPlayerToRadio(14 )
          exports.tokovoip_script:removePlayerFromRadio(11 )
          exports.tokovoip_script:removePlayerFromRadio(12 )
          exports.tokovoip_script:removePlayerFromRadio(13 )
          exports.tokovoip_script:removePlayerFromRadio(15 )
      end
      if data.current.value == 'radio5' then
		  exports.tokovoip_script:addPlayerToRadio(15 )
          exports.tokovoip_script:removePlayerFromRadio(11 )
          exports.tokovoip_script:removePlayerFromRadio(12 )
          exports.tokovoip_script:removePlayerFromRadio(13 )
          exports.tokovoip_script:removePlayerFromRadio(14 )

      end
      if data.current.value == 'radio6' then
		  exports.tokovoip_script:addPlayerToRadio(16 )
          exports.tokovoip_script:removePlayerFromRadio(17 )
          exports.tokovoip_script:removePlayerFromRadio(18 )
          exports.tokovoip_script:removePlayerFromRadio(19 )
          exports.tokovoip_script:removePlayerFromRadio(20 )

      end	  
      if data.current.value == 'radio7' then
		  exports.tokovoip_script:addPlayerToRadio(17 )
          exports.tokovoip_script:removePlayerFromRadio(16 )
          exports.tokovoip_script:removePlayerFromRadio(18 )
          exports.tokovoip_script:removePlayerFromRadio(19 )
          exports.tokovoip_script:removePlayerFromRadio(20 )

      end	
      if data.current.value == 'radio8' then
		  exports.tokovoip_script:addPlayerToRadio(18 )
          exports.tokovoip_script:removePlayerFromRadio(16 )
          exports.tokovoip_script:removePlayerFromRadio(17 )
          exports.tokovoip_script:removePlayerFromRadio(19 )
          exports.tokovoip_script:removePlayerFromRadio(20 )

      end     
      if data.current.value == 'radio9' then
		  exports.tokovoip_script:addPlayerToRadio(19 )
          exports.tokovoip_script:removePlayerFromRadio(16 )
          exports.tokovoip_script:removePlayerFromRadio(17 )
          exports.tokovoip_script:removePlayerFromRadio(18 )
          exports.tokovoip_script:removePlayerFromRadio(20 )

      end 
      if data.current.value == 'radio10' then
		  exports.tokovoip_script:addPlayerToRadio(20 )
          exports.tokovoip_script:removePlayerFromRadio(16 )
          exports.tokovoip_script:removePlayerFromRadio(17 )
          exports.tokovoip_script:removePlayerFromRadio(19 )
          exports.tokovoip_script:removePlayerFromRadio(18 )

      end 
      CurrentAction     = 'radio'
      CurrentActionMsg  = _U('Channel sellect')
      CurrentActionData = {}

    end,
    function(data, menu)

      menu.close()

      CurrentAction     = 'radio'
      CurrentActionMsg  = _U('Channel sellect')
      CurrentActionData = {}
    end
  )

end
