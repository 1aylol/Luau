 teleports  = {
    cum = Vector3.new(-0.746, 3.957, 2.948) -- put cords in there 
    }
    
   tween_s = game:GetService('TweenService')
   tween_inf = tween_inf.new(1,Enum.EasingStyle.Linear) -- 1 = the speed u could make it faster if u want idc
    
    user = game.Players.LocalPlayer
    
    function tween_pass(v)
     if user.Character and
     user.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
    penis = tween_s:Create(user.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    penis:Play()
    end
    end
    tween_pass(teleports.cum)
