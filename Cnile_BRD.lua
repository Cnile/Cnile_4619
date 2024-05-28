local profile = {};
local sets = {
    ['HPDOWN'] = {
        Range = 'Cornette +1',
        Head = 'Zenith Crown',
        Neck = 'Star Necklace',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Black Cotehardie',
        Hands = 'Zenith Mitts',
        Ring1 = 'Balance Ring',
        Ring2 = 'Astral Ring',
        Back = 'Nomad\'s Mantle',
        Waist = 'Penitent\'s Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Errant Pigaches',
    },
    ['Idle'] = {
        Main = 'Earth Staff',
        Range = 'Mary\'s Horn',
        Head = 'Emperor Hairpin',
        Neck = 'Wind Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Scp. Harness +1',
        Hands = 'Sha\'ir Gages',
        Ring1 = 'Light Ring', -- MACC+5
        Ring2 = 'Minstrel\'s Ring', -- +5
        Back = 'Nomad\'s Mantle',
        Waist = 'Corsette +1',
        Legs = 'Crow Hose',
        Feet = 'Sha\'ir Crackows',
    },
    ['Song_Precast'] = {
		Main = '',
        Body = 'Errant Hpl.',
        Neck = 'Bloodbead Amulet',
        Body = 'Federation Doublet',
        Ring1 = 'Luftpause Ring',
        Ring2 = 'Minstrel\'s Ring',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Sha\'ir Crackows',
    },
    ['Singing'] = {
		Head = 'Demon Helm',
		Neck = 'Bird Whistle',
        Head = 'Demon Helm', -- +3
        Body = 'Errant Hpl.', -- +10
        Hands = 'Sha\'ir Gages', -- +7
        Ear1 = 'Melody Earring +1', -- +2
        Ear2 = 'Melody Earring +1', -- +2
        Waist = 'Corsette +1', -- +6
        Ring1 = 'Light Ring', -- MACC+5
        Ring2 = 'Minstrel\'s Ring', -- +5
        Legs = 'Sha\'ir Seraweels', -- +7
        Feet = 'Sha\'ir Crackows', -- +2
        Back = 'Jester\'s Cape +1', -- +10
    },
    ['Wind'] = {
		Head = 'Demon Helm',
		Neck = 'Bird Whistle',
        Head = 'Demon Helm', -- +3
        Body = 'Errant Hpl.', -- +10
        Hands = 'Sha\'ir Gages', -- +7
        Ear1 = 'Melody Earring +1', -- +2
        Ear2 = 'Melody Earring +1', -- +2
        Waist = 'Corsette +1', -- +6
        Ring1 = 'Light RIng', -- MACC+5
        Ring2 = 'Minstrel\'s Ring', -- +5
        Legs = 'Sha\'ir Seraweels', -- +7
        Feet = 'Sha\'ir Crackows', -- +2
        Back = 'Jester\'s Cape +1', -- +10
    },
    ['String'] = {
		Head = 'Demon Helm',
		Neck = 'Bird Whistle',
        Head = 'Demon Helm', -- +3
        Body = 'Scp. Harness +1', -- +10
        Hands = 'Sha\'ir Gages', -- +7
        Ear1 = 'Melody Earring +1', -- +2
        Ear2 = 'Melody Earring +1', -- +2
        Waist = 'Corsette +1', -- +6
        Ring1 = 'Moon Ring', -- MACC+5
        Ring2 = 'Minstrel\'s Ring', -- +5
        Legs = 'Sha\'ir Seraweels', -- +7
        Feet = 'Sha\'ir Crackows', -- +2
        Back = 'Jester\'s Cape +1', -- +10

    },
    -- 64 + 54
    ['CHR'] = {
		Head = 'Demon Helm',
		Neck = 'Bird Whistle',
        Head = 'Demon Helm', -- +3
        Body = 'Scp. Harness +1', -- +10
        Hands = 'Sha\'ir Gages', -- +7
        Ear1 = 'Melody Earring +1', -- +2
        Ear2 = 'Melody Earring +1', -- +2
        Waist = 'Corsette +1', -- +6
        Ring1 = 'Moon Ring', -- MACC+5
        Ring2 = 'Minstrel\'s Ring', -- +5
        Legs = 'Sha\'ir Seraweels', -- +7
        Feet = 'Sha\'ir Crackows', -- +2
        Back = 'Jester\'s Cape +1', -- +10
    },
    ['MND'] = {
        Main = 'Monster Signe',
        Body = 'Scp. Harness +1',
        Back = 'Prism Cape',
        Neck = 'Promise Badge',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Aqua Ring',
        Legs = 'Errant Slops',
        Waist = 'Penitent\'s Rope',
        Feet = 'Errant Pigaches',
    },
	['Melee'] = {
        Main = 'Dagger Of Trials',
        Sub = 'Bone Knife +1',
        Head = 'Emperor Hairpin',
        Neck = 'Spike Necklace',
        Body = 'Scp. Harness +1',
		Ear1 = 'Drone Earring', -- +2
        Ear2 = 'Drone Earring +1', -- +2
        Hands = 'Battle Gloves',
        Ring1 = 'Sniper\'s Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Nomad\'s Mantle',
        Waist = 'Life Belt',
        Legs = 'Crow Hose',
        Feet = 'Leaping Boots',
		Ammo = 'Orphic Egg',
    },
	['AnotherSet'] = {
        Head = 'Emperor Hairpin',
        Neck = 'Spike Necklace',
        Body = 'Scp. Harness +1',
        Hands = 'Another Gloves',
        Ring1 = 'Sniper\'s Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Nomad\'s Mantle',
        Waist = 'Life Belt',
        Legs = 'Another Leg Equipment',
        Feet = 'Another Feet Equipment',
    },
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    AshitaCore:GetChatManager():QueueCommand(4, '/macro book 4');
    AshitaCore:GetChatManager():QueueCommand(4, '/macro set 4');
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 1');
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    AshitaCore:GetChatManager():QueueCommand(4, '/macro book 4');
    AshitaCore:GetChatManager():QueueCommand(4, '/macro set 4');
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 1');
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    -- Handle commands here
end

profile.HandleDefault = function()
    local player = gData.GetPlayer()
    local env = gData.GetEnvironment()

    if player.SubJob == 'NIN' then
		gFunc.Equip('Legs', 'Crow Hose')
		gFunc.Equip('Feet', 'Crow Gaiters')
		gFunc.Equip('Body', 'Scp. Harness +1')
		gFunc.Equip('Hands', 'Crow Bracers')
		gFunc.Equip('Back', 'Hexerei Cape')
		gFunc.Equip('Waist', 'Scouter\'s Rope')
		gFunc.Equip('Neck', 'Evasion Torque')
        gFunc.Equip('Head', 'Emperor Hairpin')
    end

    -- Rest of the code for handling default behavior 

    if player.Status == 'Resting' then
        gFunc.Equip('Main', 'Dark Staff')
        gFunc.Equip('Body', 'Scp. Harness +1')
    elseif player.Status == 'Engaged' then
        gFunc.EquipSet(sets.Melee) -- Equip the melee set
        for slot, item in pairs(sets.AnotherSet) do
            gFunc.Equip('Body', 'Scp. Harness +1') -- Equip the items from the another set
        end
    else
        -- Handle other conditions here
    end

    if string.match(env.Area, 'San d\'Oria') and not string.match(env.Area, 'Airship') then
        gFunc.Equip('Body', 'Kingdom Aketon')
    end
end

profile.HandleMidcast = function()
    local action = gData.GetAction();
    local player = gData.GetPlayer();

    if (action.Type == 'Bard Song') then
        gFunc.Message(action.Skill)

        if (string.match(action.Name, 'Minuet')) then
            gFunc.EquipSet(sets.CHR);
            gFunc.Equip('Range', 'Cornette +1');
        elseif (string.match(action.Name, 'March')) then
            gFunc.EquipSet(sets.Wind);
            gFunc.Equip('Range', 'Faerie Piccolo');
        elseif (string.match(action.Name, 'Madrigal')) then
            gFunc.EquipSet(sets.Wind);
            gFunc.Equip('Range', 'Mary\'s Horn');
        elseif (string.match(action.Name, 'Carol')) then
            gFunc.EquipSet(sets.Wind);
            gFunc.Equip('Range', 'Ebony Harp +1');
        elseif (string.match(action.Name, 'Paeon')) then
            gFunc.EquipSet(sets.String);
            gFunc.Equip('Range', 'Ebony Harp +1');
		elseif (string.match(action.Name, 'Requiem')) then
            gFunc.EquipSet(sets.Wind);
            gFunc.Equip('Range', 'Mary\'s Horn');
        elseif (string.match(action.Name, 'Mazurka')) then
            gFunc.EquipSet(sets.String);
            gFunc.Equip('Range', '--');
        elseif (string.match(action.Name, 'Elegy')) then
            gFunc.EquipSet(gFunc.Combine(sets.CHR, sets.Wind));
            gFunc.Equip('Range', 'Horn +1');
            gFunc.Equip('Main', 'Earth Staff');
        elseif (string.match(action.Name, 'Lullaby')) then
            if (action.Name == 'Foe Lullaby') then    
                gFunc.EquipSet(gFunc.Combine(sets.CHR, sets.String));
                gFunc.Equip('Range', 'Mary\'s Horn');
				gFunc.Equip('Main', 'Earth Staff');
            else    
                gFunc.EquipSet(gFunc.Combine(sets.CHR, sets.Wind));
                gFunc.Equip('Range', 'Mary\'s Horn');
            end
            gFunc.Equip('Main', 'Signa Staff');
        end
        gFunc.EquipSet(sets.Singing);
    end

    if (string.match(action.Name, 'Cure')) then
        gFunc.EquipSet('MND');
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;