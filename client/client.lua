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
		Wait(14)

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


    if (PlayerData.job.name == 'police' or PlayerData.job.name == 'fire' or PlayerData.job.name == 'state' or PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'policeambulance' ) then
     
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
if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then  
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
		  end
		  end
	  
      if data.current.value == 'leavepolice' then
if channel == 16 then
          exports.tokovoip_script:removePlayerFromRadio(16)
		  end
if channel == 17 then
          exports.tokovoip_script:removePlayerFromRadio(17)
		  end
if channel == 18 then
          exports.tokovoip_script:removePlayerFromRadio(18)
		  end
if channel == 19 then
          exports.tokovoip_script:removePlayerFromRadio(19)
		  end
if channel == 20 then
          exports.tokovoip_script:removePlayerFromRadio(20)
		  end
end		  
	 
      if data.current.value == 'radio1' then
if channel == 12 then	  
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then	
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then	
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then	
          exports.tokovoip_script:removePlayerFromRadio(15)
		  end
		  exports.tokovoip_script:addPlayerToRadio(11)	
		  channel =11
	end


      if data.current.value == 'radio2' then
if channel == 11 then	
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 13 then	
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
		  end
		  exports.tokovoip_script:addPlayerToRadio(12)		 
		  channel = 12
      end


 if data.current.value == 'radio3' then

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
		  end
		  exports.tokovoip_script:addPlayerToRadio(13)
		  channel = 13
      end	
  
      if data.current.value == 'radio4' then
	  
if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
		  end
		  exports.tokovoip_script:addPlayerToRadio(14)
		  channel = 14
      end
	  
      if data.current.value == 'radio5' then

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
		  if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
		  exports.tokovoip_script:addPlayerToRadio(15)
		  channel = 15
      end
	  
      if data.current.value == 'radio6' then -- PD Radio

if channel == 17 then
          exports.tokovoip_script:removePlayerFromRadio(17)
		  end
if channel == 18 then
          exports.tokovoip_script:removePlayerFromRadio(18)
		  end
if channel == 19 then
          exports.tokovoip_script:removePlayerFromRadio(19)
		  end
if channel == 20 then
          exports.tokovoip_script:removePlayerFromRadio(20)
		  end
		  exports.tokovoip_script:addPlayerToRadio(16) -- PD Radio 
		channel = 16
      end
	 
      if data.current.value == 'radio7' then -- EMS Radio 

if channel == 17 then
          exports.tokovoip_script:removePlayerFromRadio(16)
		  end
if channel == 18 then
          exports.tokovoip_script:removePlayerFromRadio(18)
		  end
if channel == 19 then
          exports.tokovoip_script:removePlayerFromRadio(19)
		  end
if channel == 20 then
          exports.tokovoip_script:removePlayerFromRadio(20)
		  end
		  exports.tokovoip_script:addPlayerToRadio(17) -- EMS Radio 
		channel = 17
      end
	  
      if data.current.value == 'radio8' then -- PD/SO/EMS Radio 

if channel == 16 then
          exports.tokovoip_script:removePlayerFromRadio(16)
		  end
if channel == 17 then
          exports.tokovoip_script:removePlayerFromRadio(17)
		  end
if channel == 19 then
          exports.tokovoip_script:removePlayerFromRadio(19)
		  end
if channel == 20 then
          exports.tokovoip_script:removePlayerFromRadio(20)
		  end
		  exports.tokovoip_script:addPlayerToRadio(18) -- PD/SO/EMS Radio 
		channel = 18
      end  
	  
      if data.current.value == 'radio9' then -- SO Radio 

if channel == 16 then
          exports.tokovoip_script:removePlayerFromRadio(16)
		  end
if channel == 17 then
          exports.tokovoip_script:removePlayerFromRadio(17)
		  end
if channel == 18 then
          exports.tokovoip_script:removePlayerFromRadio(18)
		  end
if channel == 20 then
          exports.tokovoip_script:removePlayerFromRadio(20)
		  end
		  exports.tokovoip_script:addPlayerToRadio(19) -- SO Radio 
		channel = 19
      end 
	  
      if data.current.value == 'radio10' then -- PD/SO Radio 

if channel == 16 then
          exports.tokovoip_script:removePlayerFromRadio(16)
		  end
if channel == 17 then
          exports.tokovoip_script:removePlayerFromRadio(17)
		  end
if channel == 19 then
          exports.tokovoip_script:removePlayerFromRadio(19)
		  end
if channel == 18 then
          exports.tokovoip_script:removePlayerFromRadio(18)
		  end
		  		  exports.tokovoip_script:addPlayerToRadio(20) -- PD/SO Radio 
		channel = 20
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
