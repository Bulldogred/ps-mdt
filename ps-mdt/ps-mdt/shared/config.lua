Config = Config or {}

Config.UsingPsHousing = false
Config.UsingDefaultQBApartments = false
Config.OnlyShowOnDuty = true

-- RECOMMENDED Fivemerr Images. DOES NOT EXPIRE. 
-- YOU NEED TO SET THIS UP FOLLOW INSTRUCTIONS BELOW.
-- Documents: https://docs.fivemerr.com/integrations/mdt-scripts/ps-mdt
Config.FivemerrMugShot = true

-- Discord webhook for images. NOT RECOMMENDED, IMAGES EXPIRE.
Config.MugShotWebhook = false
Config.UseCQCMugshot = true

-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1

-- If set to true = Fine gets automatically removed from bank automatically charging the player.
-- If set to false = The fine gets sent as an Invoice to their phone and it us to the player to pay for it, can remain unpaid and ignored.
Config.BillVariation = true

-- If set to false (default) = The fine amount is just being removed from the player's bank account
-- If set to true = The fine amount is beeing added to the society account after being removed from the player's bank account
Config.QBBankingUse = true

-- Set up your inventory to automatically retrieve images when a weapon is registered at a weapon shop or self-registered.
-- If you're utilizing lj-inventory's latest version from GitHub, no further modifications are necessary. 
-- However, if you're using a different inventory system, please refer to the "Inventory Edit | Automatic Add Weapons with images" section in ps-mdt's README.
Config.InventoryForWeaponsImages = "ox_inventory"

-- Only compatible with ox_inventory
Config.RegisterWeaponsAutomatically = true

-- Set to true to register all weapons that are added via AddItem in ox_inventory
Config.RegisterCreatedWeapons = true

-- "cdn-fuel", "lj-fuel", "ps-fuel"
Config.Fuel = "cdn-fuel"

-- Google Docs Link
Config.sopLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sahp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sahp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',	
}

Config.PoliceJobs = {
    ['police'] = true,
    ['lspd'] = true,
    ['bcso'] = true,
    ['sast'] = true,
    ['sahp'] = true,
    ['doc'] = true,
    ['lssd'] = true,
    ['sapr'] = true,
    ['pa'] = true
}

Config.AmbulanceJobs = {
    ['ambulance'] = true,
    ['doctor'] = true
}

Config.DojJobs = {
    ['lawyer'] = true,
    ['judge'] = true
}

-- This is a workaround solution because the qb-menu present in qb-policejob fills in an impound location and sends it to the event. 
-- If the impound locations are modified in qb-policejob, the changes must also be implemented here to ensure consistency.

Config.ImpoundLocations = {
    [1] = vector4(436.68, -1007.42, 27.32, 180.0),
    [2] = vector4(-436.14, 5982.63, 31.34, 136.0),
}

-- Support for Wraith ARS 2X. 

Config.UseWolfknightRadar = true
Config.WolfknightNotifyTime = 5000 -- How long the notification displays for in milliseconds (30000 = 30 seconds)
Config.PlateScanForDriversLicense = false -- If true, plate scanner will check if the owner of the scanned vehicle has a drivers license

-- IMPORTANT: To avoid making excessive database queries, modify this config to true 'CONFIG.use_sonorancad = true' setting in the configuration file located at 'wk_wars2x/config.lua'. 
-- Enabling this setting will limit plate checks to only those vehicles that have been used by a player.

Config.LogPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sahp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveIncidentPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sahp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveReportPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sahp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveWeaponsPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sahp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.PenalCodeTitles = {
    [1] = 'OFFENSES AGAINST PERSONS',
    [2] = 'OFFENSES INVOLVING THEFT',
    [3] = 'OFFENSES INVOLVING FRAUD',
    [4] = 'OFFENSES INVOLVING DAMAGE TO PROPERTY',
    [5] = 'OFFENSES AGAINST PUBLIC ADMINISTRATION',
    [6] = 'OFFENSES AGAINST PUBLIC ORDER',
    [7] = 'OFFENSES AGAINST HEALTH AND MORALS',
    [8] = 'OFFENSES AGAINST PUBLIC SAFETY',
    [9] = 'OFFENSES INVOLVING THE OPERATION OF A VEHICLE & GENERAL CITATIONS',
    [10] = 'OFFENSES INVOLVING FAILIURE TO PAY BILLS/FINES',
    [11] = 'OFFENSES & DOCUMENTATION INVOLVING GANG ACTIVITY',
}

Config.PenalCode = {
    [1] = {
        [1] = {title = 'Assault', class = 'Misdemeanor', id = 'P.C. 1100', months = 15, fine = 2500, color = 'green', description = 'Attempts to commit a violent injury upon another person'},
        [2] = {title = 'Assault on an LEO / Government Official', class = 'Felony', id = 'P.C. 1101', months = 20, fine = 5000, color = 'orange', description = 'Attempts to commit a violent injury upon a Police Officer or Government Official'},
        [3] = {title = 'Battery', class = 'Felony', id = 'P.C. 1102', months = 20, fine = 3000, color = 'orange', description = 'The intent to willfully and unlawfully use force on another person'},
        [4] = {title = 'Battery on an LEO / Government Official', class = 'Felony', id = 'P.C. 1103', months = 25, fine = 7500, color = 'orange', description = 'The intent to willfully and unlawfully use force on a Police Officer or Government Official'},
        [5] = {title = 'Involuntary Manslaughter', class = 'Felony', id = 'P.C. 1104', months = 0, fine = 0, color = 'red', description = 'Recklessly or accidentally kills another person *Permadeath*'},
        [6] = {title = 'Vehicular Manslaughter', class = 'Felony', id = 'P.C. 1105', months = 0, fine = 0, color = 'red', description = 'Recklessly or accidentally kills another person while driving a motor vehicle *Permadeath*'},
        [7] = {title = 'Voluntary Manslaughter', class = 'Felony', id = 'P.C. 1106', months = 0, fine = 0, color = 'red', description = 'Recklessly or accidentally kills another person with the intent to physically hurt the person *Permadeath*'},
        [8] = {title = 'Attempted Murder', class = 'Felony', id = 'P.C. 1107', months = 60, fine = 25000, color = 'red', description = 'Attempting to murder another person. *Never Bled Out*'},
        [9] = {title = 'Accessory to Attempted Murder', class = 'Felony', id = 'P.C. 1108', months = 30, fine = 12500, color = 'orange', description = 'Willfully assists in attempting to murder another person'},
        [10] = {title = 'Attempted Murder of a Police Officer / Government Official', class = 'Felony', id = 'P.C. 1109', months = 80, fine = 35000, color = 'red', description = 'Attempting to murder a Police Officer or Government Official'},
        [11] = {title = 'Accessory to Attempted Murder of a Government Official / LEO', class = 'Felony', id = 'P.C. 1110', months = 40, fine = 15000, color = 'orange', description = 'Willfully assists in the attempt of a murder against a government official or peace officer'},
        [12] = {title = 'Second Degree Murder', class = 'Felony', id = 'P.C. 1111', months = 0, fine = 0, color = 'red', description = 'Willfully kills another person with the intent to kill. *Permadeath*'},
        [13] = {title = 'First Degree Murder', class = 'Felony', id = 'P.C. 1112', months = 0, fine = 0, color = 'red', description = 'Willfully kills another person with the intent to kill with premeditation and deliberation. *Permadeath*'},
        [14] = {title = 'Accessory to Murder', class = 'Felony', id = 'P.C. 1113', months = 0, fine = 0, color = 'red', description = 'Willfully assists in killing a person with the intent to kill'},
        [15] = {title = 'Unlawful Imprisonment', class = 'Misdemeanor - Felony', id = 'P.C. 1114', months = 10, fine = 3000, color = 'orange', description = 'Restricts a person\'s movement within any area without justification or consent'},
        [16] = {title = 'Kidnapping', class = 'Felony', id = 'P.C. 1115', months = 20, fine = 5000, color = 'red', description = 'Abducts another person and holds them against their will'},
        [17] = {title = 'Accessory to Kidnapping', class = 'Felony', id = 'P.C. 1116', months = 15, fine = 3000, color = 'orange', description = 'Willfully assists in abducting another person and holding them against their will'},
        [18] = {title = 'Kidnapping a Government Official / Peace Officer', class = 'Felony', id = 'P.C. 1117', months = 25, fine = 10000, color = 'red', description = 'Abducts a Government Official or Peace Officer and holds them against their will'},
        [19] = {title = 'Accessory to Kidnapping a Government Official / Peace Officer', class = 'Felony', id = 'P.C. 1118', months = 20, fine = 5000, color = 'orange', description = 'Willfully assists in the abduction of a government official or police officer to hold them against their will'},
        [20] = {title = 'Criminal Threats', class = 'Misdemeanor', id = 'P.C. 1119', months = 10, fine = 2500, color = 'green', description = 'Any person who willfully threatens to commit a crime which will result in death or bodily injury to another person'},
        [21] = {title = 'Assault with a Deadly Weapon', class = 'Felony', id = 'P.C. 1120', months = 20, fine = 4000, color = 'red', description = 'Attempts to commit a violent injury upon another person with a deadly weapon'},
        [22] = {title = 'Assault with a Firearm', class = 'Felony', id = 'P.C. 1121', months = 25, fine = 5000, color = 'red', description = 'Unlawfully attempts to commit an injury upon another person with a firearm'},
        [23] = {title = 'Excessive Force by a Police Officer', class = 'Misdemeanor', id = 'P.C. 1122', months = 0, fine = 5000, color = 'orange', description = 'If a law enforcement officer is caught by another officer using excessive force they will be able to hold the other officer accountable'},
        [24] = {title = 'Violent Disruption of Government Agencies', class = 'Felony', id = 'P.C. 1123', months = 300, fine = 100000, color = 'red', description = 'When an individual, or group of individuals, disrupts the peace of government officials with the intent of malicious violence. Malicious violence is any sort of action that would cause enough physical harm to incapacitate or cause death of a government official'},
    },
    [2] = {
        [1] = {title = 'Petty Theft', class = 'Misdemeanor', id = 'P.C. 1200', months = 5, fine = 1500, color = 'green', description = 'Steals property in the value of less than $5000'},
        [2] = {title = 'Grand Theft', class = 'Felony', id = 'P.C. 1201', months = 15, fine = 3000, color = 'orange', description = 'Steals property in the value of more than $5000'},
        [3] = {title = 'Joyriding', class = 'Misdemeanor', id = 'P.C. 1202', months = 10, fine = 1000, color = 'green', description = 'The taking or operating of a vehicle without the owner\'s consent, without the intent to deprive the owner of the vehicle'},
        [4] = {title = 'Attempted Grand Theft Auto', class = 'Felony', id = 'P.C. 1203', months = 15, fine = 2500, color = 'orange', description = 'Unlawfully attempting to take a vehicle belonging to another, or driving the vehicle without the owner\'s consent, with the intent to permanently deprive the owner of the vehicle'},
        [5] = {title = 'Grand Theft Auto', class = 'Felony', id = 'P.C. 1204', months = 20, fine = 5000, color = 'orange', description = 'Unlawfully taking a vehicle belonging to another, or driving the vehicle without the owner\'s consent, with the intent to permanently deprive the owner of the vehicle'},
        [6] = {title = 'Tampering with a Vehicle', class = 'Misdemeanor', id = 'P.C. 1205', months = 10, fine = 2000, color = 'green', description = 'Willfully damages or tampers with any vehicle to disable and/or remove parts without the owner\'s consent'},
        [7] = {title = 'Receiving Stolen Property', class = 'Misdemeanor', id = 'P.C. 1206', months = 10, fine = 2000, color = 'green', description = 'A person who bought, received, sold, or aided in selling property that has been stolen from another, and had knowledge the property was stolen'},
        [8] = {title = 'Attempted Robbery', class = 'Felony', id = 'P.C. 1207 - a', months = 15, fine = 2000, color = 'orange', description = 'Attempting to unlawfully take items through fear or by force that involves person-to-person interactions'},
        [9] = {title = 'Robbery', class = 'Felony', id = 'P.C. 1207 - b', months = 20, fine = 2500, color = 'orange', description = 'Unlawfully taking items through fear or by force that involves person-to-person interactions'},
        [10] = {title = 'Attempted Armed Robbery', class = 'Felony', id = 'P.C. 1208 - a', months = 30, fine = 5000, color = 'red', description = 'Attempting to unlawfully take property through fear or by force that involves person-to-person interactions with a firearm or deadly weapon'},
        [11] = {title = 'Armed Robbery', class = 'Felony', id = 'P.C. 1208 - b', months = 40, fine = 7500, color = 'red', description = 'Unlawfully taking property through fear or by force that involves person-to-person interactions with a firearm or deadly weapon'},
        [12] = {title = 'Accessory to Attempted Armed Robbery', class = 'Felony', id = 'P.C. 1208 - c', months = 20, fine = 2500, color = 'orange', description = 'Assists/aids in attempting to unlawfully take property through fear or by force that involves person-to-person interactions with a firearm or deadly weapon'},
        [13] = {title = 'Accessory to Armed Robbery', class = 'Felony', id = 'P.C. 1208 - d', months = 25, fine = 3500, color = 'orange', description = 'Assists/aids in unlawfully taking property through fear or by force that involves person-to-person interactions with a firearm or deadly weapon'},
        [14] = {title = 'Possession of Illegal Money', class = 'Felony', id = 'P.C. 1209', months = 15, fine = 2500, color = 'orange', description = 'A person in possession of stolen or otherwise illegal currency'},
        [15] = {title = 'Possession of Police Issued Equipment', class = 'Felony', id = 'P.C. 1210', months = 60, fine = 15000, color = 'red', description = 'A person in possession of stolen police equipment. This may include police vehicles'},
        [16] = {title = 'Possession of Illegal/Stolen Components', class = 'Misdemeanor', id = 'P.C. 1211', months = 10, fine = 2000, color = 'green', description = 'A person in possession of illegal or stolen components known to be used in criminal activity (e.g., hacking device, razzberry)'},
        [17] = {title = 'Accessory to Attempted Robbery', class = 'Felony', id = 'P.C. 1212', months = 10, fine = 1000, color = 'orange', description = 'Assists/aids in attempting to unlawfully take property through fear or by force that involves person-to-person interactions'},
        [18] = {title = 'Accessory to Robbery', class = 'Felony', id = 'P.C. 1213', months = 15, fine = 2000, color = 'orange', description = 'Assists/aids in unlawfully taking property through fear or by force that involves person-to-person interactions'},
        [19] = {title = 'Bank Robbery', class = 'Felony', id = 'P.C. 1214', months = 60, fine = 10000, color = 'red', description = 'Robs or attempts to rob a Fleeca or Pacific Standard Bank'},        
    },
    [3] = {
        [1] = {title = 'Extortion', class = 'Felony', id = 'P.C. 1301', months = 20, fine = 2000, color = 'orange', description = 'Uses threat or force to obtain money or material gain'},
        [2] = {title = 'Fraud', class = 'Felony', id = 'P.C. 1302', months = 20, fine = 2500, color = 'orange', description = 'Wrongfully leads or deceives to receive financial or personal gain'},
        [3] = {title = 'Impersonation', class = 'Felony', id = 'P.C. 1303', months = 15, fine = 2000, color = 'orange', description = 'Pretends to impersonate another person'},
        [4] = {title = 'Impersonating a Police Officer', class = 'Felony', id = 'P.C. 1304', months = 30, fine = 5000, color = 'red', description = 'Impersonates a Police Officer'},
        [5] = {title = 'Impersonating a Judge', class = 'Felony', id = 'P.C. 1305', months = 35, fine = 5000, color = 'red', description = 'Impersonates a Judge'},
        [6] = {title = 'Vehicle Registration Fraud', class = 'Misdemeanor', id = 'P.C. 1306', months = 10, fine = 2000, color = 'green', description = 'Person(s) possesses or displays a falsified license plate or motor vehicle. Person(s) manufactures a falsified license plate'},
        [7] = {title = 'Forced Coercion', class = 'Felony', id = 'P.C. 1307', months = 15, fine = 5000, color = 'orange', description = 'Persuades someone to do something by using force or threats'},    
    },
    [4] = {
        [1] = {title = 'Burglary', class = 'Felony', id = 'P.C. 1401', months = 15, fine = 4000, color = 'orange', description = 'Enters knowingly or remains unlawfully in a building to commit a crime'},
        [2] = {title = 'Accessory to Burglary', class = 'Misdemeanor', id = 'P.C. 1402', months = 10, fine = 2000, color = 'green', description = 'Harboring, concealing, or aiding a person in the act/attempt to commit burglary'},
        [3] = {title = 'Trespassing', class = 'Misdemeanor', id = 'P.C. 1403', months = 10, fine = 2000, color = 'green', description = 'Enters or remains in an area that the person doesn\'t have permission or consent to be in'},
        [4] = {title = 'Felony Trespassing', class = 'Felony', id = 'P.C. 1404', months = 15, fine = 2500, color = 'orange', description = 'Willingly enters or remains on government property without permission or consent'},
        [5] = {title = 'Arson', class = 'Felony', id = 'P.C. 1405', months = 25, fine = 5000, color = 'red', description = 'Person maliciously sets fire to a structure, forest, land, or other property'},
    },
    [5] = {
        [1] = {title = 'Corruption', class = 'Felony', id = 'P.C. 1500', months = 0, fine = 0, color = 'red', description = 'A form of dishonesty or criminal offense undertaken by a person or organization entrusted with a position of authority to acquire illicit benefit or abuse power for private gain'},
        [2] = {title = 'Bribery', class = 'Felony', id = 'P.C. 1501', months = 15, fine = 5000, color = 'orange', description = 'Confers, or agrees to confer, any benefit upon a public servant upon an agreement that influences the public servant’s vote, opinion, judgment, or action'},
        [3] = {title = 'Contempt of Court', class = 'Misdemeanor', id = 'P.C. 1502', months = 0, fine = 0, color = 'orange', description = 'Disobedient or discourteous behavior towards a court of law that defies its authority'},
        [4] = {title = 'Escape of Custody', class = 'Felony', id = 'P.C. 1503', months = 15, fine = 2500, color = 'orange', description = 'Escapes the custody of the government'},
        [5] = {title = 'Jailbreak', class = 'Felony', id = 'P.C. 1504', months = 30, fine = 7500, color = 'red', description = 'Aids or attempts to break an individual out of prison, jail, or government custody'},
        [6] = {title = 'Perjury', class = 'Felony', id = 'P.C. 1505', months = 20, fine = 5000, color = 'orange', description = 'Knowingly lies under oath in the court of law'},
        [7] = {title = 'Violating a Court Order', class = 'Misdemeanor', id = 'P.C. 1506', months = 10, fine = 2000, color = 'green', description = 'Willful disobedience of the terms written in a court order'},
        [8] = {title = 'Failure to Appear', class = 'Misdemeanor', id = 'P.C. 1507', months = 0, fine = 0, color = 'green', description = 'Failure to appear in Court when summoned (Judge\'s discretion)'},
        [9] = {title = 'Unauthorized Practice of Law', class = 'Misdemeanor', id = 'P.C. 1508', months = 10, fine = 3000, color = 'green', description = 'Practices law without a proper bar certification'},
        [10] = {title = 'Embezzlement', class = 'Felony', id = 'P.C. 1509', months = 15, fine = 5000, color = 'orange', description = 'Steals or willfully misappropriates funds that are used for a specific purpose'},
        [11] = {title = 'Conspiracy', class = 'Misdemeanor', id = 'P.C. 1510', months = 10, fine = 2500, color = 'green', description = 'Conspires to commit a crime'},
        [12] = {title = 'Racketeering/RICO Cases', class = 'Felony', id = 'P.C. 1511', months = 0, fine = 0, color = 'red', description = 'DOJ must prove that the defendant engaged in 3+ instances of racketeering activity and participated in a criminal enterprise affecting LS'},
        [13] = {title = 'Felony Conspiracy', class = 'Felony', id = 'P.C. 1512', months = 15, fine = 5000, color = 'orange', description = 'Conspires to commit a felony crime'},        
    },
    [6] = {
        [1] = {title = 'Disobeying a Police Officer', class = 'Misdemeanor', id = 'P.C. 1601', months = 10, fine = 2500, color = 'green', description = 'Willfully refusing or failing to comply with a lawful order, signal, or direction of any Police officer'},
        [2] = {title = 'Disorderly Conduct', class = 'Misdemeanor', id = 'P.C. 1602', months = 15, fine = 5000, color = 'green', description = 'Engages in behavior intending to cause public inconvenience'},
        [3] = {title = 'Disturbing the Peace', class = 'Misdemeanor', id = 'P.C. 1603', months = 10, fine = 2500, color = 'green', description = 'Unlawfully fighting or making unreasonable noise in a public place with intent to provoke a violent reaction'},
        [4] = {title = 'False Reporting', class = 'Misdemeanor', id = 'P.C. 1604', months = 15, fine = 3000, color = 'green', description = 'Reporting a false or non-existent crime'},
        [5] = {title = 'Harassment', class = 'Misdemeanor', id = 'P.C. 1605', months = 10, fine = 2500, color = 'green', description = 'Intimidates or pressures another person aggressively with unwelcome actions'},
        [6] = {title = 'Obstruction of Justice', class = 'Felony', id = 'P.C. 1606', months = 20, fine = 5000, color = 'orange', description = 'Hinders the discovery, apprehension, conviction, or punishment of a person who committed a crime'},
        [7] = {title = 'Riot', class = 'Felony', id = 'P.C. 1607', months = 20, fine = 5000, color = 'orange', description = 'Engages in violent conduct or creates a risk of public harm with a group of 3 or more people'},
        [8] = {title = 'Vandalism', class = 'Misdemeanor', id = 'P.C. 1608', months = 10, fine = 3000, color = 'green', description = 'Intentionally causing damage to property that they do not own'},
        [9] = {title = 'Tampering of Evidence', class = 'Misdemeanor', id = 'P.C. 1609', months = 15, fine = 5000, color = 'green', description = 'Destroy, conceal, or remove evidence to hide the truth or make it unavailable for investigation'},
        [10] = {title = 'Vandalism of Government Property', class = 'Misdemeanor', id = 'P.C. 1610', months = 10, fine = 5000, color = 'green', description = 'Intentionally causing damage to government property'},
        [11] = {title = 'Loitering', class = 'Infraction', id = 'P.C. 1611', months = 0, fine = 2000, color = 'green', description = 'Intentionally standing, waiting, or idling without apparent purpose on private property'},
        [12] = {title = 'Stalking', class = 'Misdemeanor', id = 'P.C. 1612', months = 10, fine = 3000, color = 'green', description = 'Harassing or threatening another person to the point they fear for their safety'},
        [13] = {title = 'Sexual Harassment', class = 'Felony', id = 'P.C. 1613', months = 30, fine = 10000, color = 'red', description = 'Sexually harassing another person'},
        [14] = {title = 'Animal Cruelty', class = 'Felony', id = 'P.C. 1614', months = 25, fine = 10000, color = 'red', description = 'Maliciously and intentionally wounds or kills an animal without intent to hunt (Confiscate Firearms)'},
        [15] = {title = 'Hunting without a License', class = 'Misdemeanor', id = 'P.C. 1615 - a', months = 10, fine = 3000, color = 'green', description = 'Hunting without a license, shooting on or across highways, or unlawful killing of big game'},
        [16] = {title = 'Possession/Hunting of Rabbit', class = 'Misdemeanor', id = 'P.C. 1615 - b', months = 0, fine = 1000, color = 'green', description = 'Hunting a rabbit without a hunting license'},
        [17] = {title = 'Possession/Hunting of Deer', class = 'Misdemeanor', id = 'P.C. 1615 - c', months = 0, fine = 1500, color = 'green', description = 'Hunting a deer without a hunting license'},
        [18] = {title = 'Possession/Hunting of Big Game', class = 'Felony', id = 'P.C. 1615 - d', months = 10, fine = 3500, color = 'orange', description = 'Hunting a bear or cougar without a hunting license'},
        [19] = {title = 'Possession/Hunting of Fish', class = 'Misdemeanor', id = 'P.C. 1615 - e', months = 0, fine = 2000, color = 'green', description = 'Hunting of small game fish without a hunting license'},
        [20] = {title = 'Possession/Hunting of Shark', class = 'Felony', id = 'P.C. 1615 - f', months = 30, fine = 10000, color = 'red', description = 'Hunting a shark, even with a hunting license, is illegal'},
        [21] = {title = 'Possession/Hunting of Turtle', class = 'Felony', id = 'P.C. 1615 - g', months = 25, fine = 7500, color = 'red', description = 'Hunting a turtle, even with a hunting license, is illegal'},
        [22] = {title = 'Possession/Hunting of Whale', class = 'Felony', id = 'P.C. 1615 - h', months = 35, fine = 10000, color = 'red', description = 'Hunting a whale, even with a hunting license, is illegal'},
        [23] = {title = 'Hunting Rules & Regulations', class = 'Misdemeanor', id = 'P.C. 1616', months = 0, fine = 1000, color = 'green', description = 'Breaking any hunting rule or regulation is punishable by up to $1,000 (exemptions: speeding)'},        
    },
    [7] = {
        [1] = {title = 'Possession of Heroin', class = 'Misdemeanor', id = 'P.C. 1701', months = 15, fine = 3000, color = 'green', description = 'Possession of 0.01 to 4 grams of Heroin'},
        [2] = {title = 'Possession of Cocaine', class = 'Misdemeanor', id = 'P.C. 1702', months = 15, fine = 3000, color = 'green', description = 'Possession of 0.01 to 4 grams of Cocaine'},
        [3] = {title = 'Possession of Marijuana', class = 'Misdemeanor', id = 'P.C. 1703', months = 10, fine = 2500, color = 'green', description = 'Possession of more than 10 grams of Marijuana'},
        [4] = {title = 'Possession of Methamphetamine', class = 'Misdemeanor', id = 'P.C. 1704', months = 15, fine = 3000, color = 'green', description = 'Possession of 0.01 to 4 grams of Methamphetamine'},
        [5] = {title = 'Possession of Opium', class = 'Misdemeanor', id = 'P.C. 1705', months = 15, fine = 3000, color = 'green', description = 'Possession of 0.01 to 4 grams of Opium'},
        [6] = {title = 'Possession of Narcotics with Intent to Distribute', class = 'Felony', id = 'P.C. 1706', months = 25, fine = 10000, color = 'orange', description = 'Possession of five or more grams of Cocaine, Heroin, Methamphetamine, or a controlled substance OR possession of ten or more grams of Marijuana'},
        [7] = {title = 'Drug Trafficking', class = 'Felony', id = 'P.C. 1707', months = 0, fine = 0, color = 'red', description = 'Selling or furnishing 500 or more grams of an illegal substance such as Heroin, Cocaine, Marijuana, Methamphetamine, Opium, or a controlled substance'},
        [8] = {title = 'Littering', class = 'Infraction', id = 'P.C. 1708', months = 0, fine = 1000, color = 'green', description = 'The act of throwing objects on the ground in a disobedient manner'},        
    },
    [8] = {
        [1] = {title = 'Criminal Possession of Police Issued Firearm [Class 1]', class = 'Felony', id = 'P.C. 1798', months = 60, fine = 10000, color = 'red', description = 'Possessing a Police Issued firearm [Class 1] without approval from SAST High Command'},
        [2] = {title = 'Criminal Possession of Police Issued Firearm [Class 2]', class = 'Felony', id = 'P.C. 1799', months = 70, fine = 15000, color = 'red', description = 'Possessing a Police Issued firearm [Class 2] without approval from SAST High Command'},
        [3] = {title = 'Criminal Possession of Police Issued Firearm [Class 3]', class = 'Felony', id = 'P.C. 1800', months = 80, fine = 20000, color = 'red', description = 'Possessing a Police Issued firearm [Class 3] without approval from SAST High Command'},
        [4] = {title = 'Criminal Possession of a Firearm [Class 1]', class = 'Felony', id = 'P.C. 1801', months = 15, fine = 4000, color = 'orange', description = 'Possess a Class 1 weapon without proper license; not registered, or a weapon that has been stolen or tampered with'},
        [5] = {title = 'Criminal Possession of a Firearm [Class 2]', class = 'Felony', id = 'P.C. 1802', months = 25, fine = 7500, color = 'orange', description = 'Possess a Class 2 weapon (Semi-automatic to automatic) without a license; includes any firearm larger than 9mm and automatic firearms'},
        [6] = {title = 'Criminal Possession of a Firearm [Class 3]', class = 'Felony', id = 'P.C. 1803', months = 35, fine = 10000, color = 'orange', description = 'Possess a Class 3 weapon (Rifles) without a license'},
        [7] = {title = 'Possession of Explosives', class = 'Felony', id = 'P.C. 1804', months = 30, fine = 5000, color = 'orange', description = 'Possess explosives on person or during transport'},
        [8] = {title = 'Criminal Sale of a Firearm [Class 1]', class = 'Felony', id = 'P.C. 1805', months = 15, fine = 15000, color = 'red', description = 'Unlawful sale of a Class 1 firearm without proper weapon license'},
        [9] = {title = 'Criminal Sale of a Firearm [Class 2]', class = 'Felony', id = 'P.C. 1806', months = 35, fine = 25000, color = 'red', description = 'Unlawful sale of a Class 2 weapon'},
        [10] = {title = 'Criminal Sale of a Firearm [Class 3]', class = 'Felony', id = 'P.C. 1807', months = 50, fine = 35000, color = 'red', description = 'Unlawful sale of a Class 3 weapon'},
        [11] = {title = 'Criminal Use of a Firearm', class = 'Felony', id = 'P.C. 1808', months = 15, fine = 3000, color = 'orange', description = 'Discharges firearm for no legal reason within a city or town with intent of committing a criminal act'},
        [12] = {title = 'Brandishing', class = 'Misdemeanor', id = 'P.C. 1809', months = 10, fine = 2500, color = 'green', description = 'To draw or exhibit a deadly weapon in a rude, violent, or threatening way in the presence of another person and not in self-defense or defense of someone else'},
        [13] = {title = 'Resisting Arrest', class = 'Misdemeanor', id = 'P.C. 1810', months = 10, fine = 2000, color = 'green', description = 'Resistance to avoid being apprehended, detained, or arrested while on foot'},
        [14] = {title = 'Jaywalking', class = 'Infraction', id = 'P.C. 1811', months = 0, fine = 5, color = 'green', description = 'Crosses road without the use of a crosswalk or marked path'},
        [15] = {title = 'Terrorism', class = 'Felony', id = 'P.C. 1812', months = 0, fine = 0, color = 'red', description = 'Causes mass destruction using explosives, weapons, or other means to cause extreme violence and damage with political or religious motive'},
        [16] = {title = 'Organized Crime', class = 'Felony', id = 'P.C. 1813', months = 0, fine = 0, color = 'red', description = 'Criminal activities that are planned and controlled by powerful groups and carried out on a large scale'},
        [17] = {title = 'Conceal Carry', class = 'Misdemeanor', id = 'P.C. 1814', months = 15, fine = 2000, color = 'green', description = 'When pulled over, if you have a concealed carry weapon, you must inform the officer and present your license'},
        [18] = {title = 'Possession of Body Armor during an Act of Violent Crime', class = 'Felony', id = 'P.C. 1815', months = 15, fine = 4000, color = 'orange', description = 'Possess body armor plates when caught committing acts of violent crimes'},
        [19] = {title = 'Possession of Ammunition', class = 'Felony', id = 'P.C. 1816', months = 10, fine = 2000, color = 'orange', description = 'Felon in possession of ammunition'},        
    },
    [9] = {
        [1] = {title = 'Driving While Intoxicated', class = 'Misdemeanor - Felony', id = 'P.C. 1901', months = 10, fine = 5000, color = 'orange', description = 'Drives while affected by drug or alcohol intoxication'},
        [2] = {title = 'Hit and Run', class = 'Misdemeanor', id = 'P.C. 1902', months = 10, fine = 2500, color = 'green', description = 'Leaving the scene of an accident with property damage without identifying yourself to the parties involved'},
        [3] = {title = 'Felony Hit and Run', class = 'Felony', id = 'P.C. 1903', months = 10, fine = 5000, color = 'red', description = 'Leaving the scene of an accident resulting in injury or death, without identifying yourself to the parties involved'},
        [4] = {title = 'Evading', class = 'Misdemeanor', id = 'P.C. 1904', months = 10, fine = 2500, color = 'green', description = 'Flees from a Police Officer in a vehicle or on foot to avoid being apprehended, detained, or arrested'},
        [5] = {title = 'Reckless Evading', class = 'Felony', id = 'P.C. 1905', months = 20, fine = 5000, color = 'red', description = 'Dangerously flees from a Police Officer in a vehicle to avoid being apprehended, detained, or arrested'},
        [6] = {title = 'Failure to Yield to an Emergency Vehicle', class = 'Infraction', id = 'P.C. 1906', months = 0, fine = 1500, color = 'green', description = 'Does not pull to the side of the road when an emergency vehicle is trying to pass with sirens enabled'},
        [7] = {title = 'Failure to Obey Traffic Control Devices', class = 'Infraction', id = 'P.C. 1907', months = 0, fine = 1000, color = 'green', description = 'Does not obey a sign or signal defined as regulatory'},
        [8] = {title = 'Non-Functional Vehicle', class = 'Infraction', id = 'P.C. 1908', months = 0, fine = 500, color = 'green', description = 'Drives a non-functional vehicle (e.g., no tire or being pushed by another vehicle)'},
        [9] = {title = 'Negligent Driving', class = 'Infraction', id = 'P.C. 1909', months = 0, fine = 1500, color = 'green', description = 'Drives negligently with no regard to basic traffic rules'},
        [10] = {title = 'Reckless Driving', class = 'Felony', id = 'P.C. 1910', months = 15, fine = 2500, color = 'red', description = 'Drives carelessly with gross disregard for human life'},
        [11] = {title = '1st Degree Speeding', class = 'Misdemeanor', id = 'P.C. 1911', months = 10, fine = 5000, color = 'orange', description = 'Speeds over 50 MPH above the speed limit'},
        [12] = {title = '2nd Degree Speeding', class = 'Infraction', id = 'P.C. 1912', months = 0, fine = 2500, color = 'green', description = 'Speeds 30 MPH above the speed limit'},
        [13] = {title = '3rd Degree Speeding', class = 'Infraction', id = 'P.C. 1913', months = 0, fine = 1500, color = 'green', description = 'Speeds 10 MPH above the speed limit'},
        [14] = {title = 'Street Racing', class = 'Misdemeanor', id = 'P.C. 1914', months = 10, fine = 3000, color = 'orange', description = '2 or more cars exceeding defined speeds and disregarding traffic laws'},
        [15] = {title = 'Organized Street Racing', class = 'Felony', id = 'P.C. 1915', months = 15, fine = 5000, color = 'red', description = '2 or more cars gathering and engaging in an exhibition of speed and disregarding traffic laws'},
        [16] = {title = 'Driving on a Suspended/Revoked License', class = 'Misdemeanor', id = 'P.C. 1916', months = 10, fine = 3000, color = 'orange', description = 'Drives a vehicle with a suspended or revoked license. Can be charged as an infraction depending on severity'},
        [17] = {title = 'Illegal U-Turn', class = 'Infraction', id = 'P.C. 1917', months = 0, fine = 500, color = 'green', description = 'Performs a U-Turn that is not permitted or crosses lanes of traffic'},
        [18] = {title = 'Illegal Passing', class = 'Infraction', id = 'P.C. 1918', months = 0, fine = 500, color = 'green', description = 'Passes another vehicle via shoulder, median, or solid lines. Passing must be made without interfering with safe operation of oncoming traffic'},
        [19] = {title = 'Driving on the Wrong Side of the Road', class = 'Infraction', id = 'P.C. 1919', months = 0, fine = 1000, color = 'green', description = 'Driving on the left side of the road against opposing traffic'},
        [20] = {title = 'Illegal Turn', class = 'Infraction', id = 'P.C. 1920', months = 0, fine = 500, color = 'green', description = 'Performs a turn at a stop sign or red light without a full stop, or fails to yield to a pedestrian. Includes making left-hand turns where prohibited'},
        [21] = {title = 'Failure to Stop', class = 'Infraction', id = 'P.C. 1921', months = 0, fine = 500, color = 'green', description = 'Fails to come to a complete stop at a stop sign or red light. Right on red is permitted if a full stop is made and traffic and pedestrians are yielded to'},
        [22] = {title = 'Unauthorized Parking', class = 'Infraction', id = 'P.C. 1922', months = 0, fine = 500, color = 'green', description = 'Parks in an unsafe area or on government property'},
        [23] = {title = 'Riding on a Sidewalk', class = 'Infraction', id = 'P.C. 1923', months = 0, fine = 1000, color = 'green', description = 'Cyclists must follow normal traffic laws and avoid riding on sidewalks when possible for safety'},
        [24] = {title = 'Window Tint Too Dark', class = 'Infraction', id = 'P.C. 1924', months = 0, fine = 1000, color = 'green', description = 'Window tint is pitch black, including the front window, making it impossible to identify occupants'},
        [25] = {title = 'Illegal Headlight Color', class = 'Infraction', id = 'P.C. 1925', months = 0, fine = 1000, color = 'green', description = 'Vehicle front headlights must be white or the manufacturer\'s default color'},
        [26] = {title = 'Presenting Flashing Lights', class = 'Infraction', id = 'P.C. 1926', months = 0, fine = 1500, color = 'green', description = 'Presenting any regular or flashing red and blue lights of any kind'},
        [27] = {title = 'Illegal Use of NOS', class = 'Felony', id = 'P.C. 1927', months = 20, fine = 10000, color = 'red', description = 'Use of NOS (Nitrous Oxide Injection Systems) on roadways and public places'},
        [28] = {title = 'Illegal Installation/Selling of NOS', class = 'Felony', id = 'P.C. 1928', months = 60, fine = 20000, color = 'red', description = 'Selling or installing NOS (Nitrous Oxide Injection Systems) on a vehicle without proper paperwork'},
        [29] = {title = 'Driving a Vehicle without a License Plate', class = 'Infraction', id = 'P.C. 1929', months = 0, fine = 2500, color = 'green', description = 'Driving a vehicle without a proper license plate. Vehicle impoundment is at officer discretion'},
        [30] = {title = 'Aircraft Violation', class = 'Felony', id = 'P.C. 1930', months = 20, fine = 10000, color = 'red', description = 'Flying in unauthorized areas or landing an aircraft outside helipads and airports without emergency necessity'},               
    },
    [10] = {
        [1] = {title = 'Failure to Pay Fines', class = 'Misdemeanor', id = 'P.C. 2000', months = 0, fine = 0, color = 'green', description = 'Failure to pay fines exceeding an amount of $50,000'},
        [2] = {title = 'Failure to Pay Traffic Fines', class = 'Misdemeanor', id = 'P.C. 2001', months = 0, fine = 0, color = 'green', description = 'Failure to pay a traffic fine (results in removal of driver\'s license)'},
        [3] = {title = 'Failure to Make House Payments', class = 'Misdemeanor', id = 'P.C. 2002', months = 0, fine = 0, color = 'green', description = 'Failure to pay house payments (results in eviction)'},
        [4] = {title = 'Failure to Make Car Payments', class = 'Misdemeanor', id = 'P.C. 2003', months = 0, fine = 0, color = 'green', description = 'Failure to pay car payments (results in repossession)'},
        
    },
    [11] = {
        [1] = {title = 'Gang Validation', class = 'N/A', id = 'P.C. 3000', months = 0, fine = 0, color = 'green', description = 'Legal declaration that an individual is a member of a gang'},
        [2] = {title = 'Gang Declaration', class = 'N/A', id = 'P.C. 3001', months = 0, fine = 0, color = 'green', description = 'Legal declaration establishing a gang based on organization, primary activities, and a pattern of gang activity'},
        [3] = {title = 'Gang-Related Criminal Activity', class = 'Felony', id = 'P.C. 3002', months = 20, fine = 10000, color = 'red', description = 'Engaging in a felony-level crime for the benefit of, at the direction of, or in association with a criminal gang with specific intent to assist criminal conduct by gang members'},
        [4] = {title = 'Gang Injunction', class = 'N/A', id = 'P.C. 3003', months = 0, fine = 0, color = 'green', description = 'Legal declaration that establishes a gang and its members as a threat against the city, allowing expanded policing and prosecuting powers to authorized Law Enforcement Agencies'},
        [5] = {title = 'Violation of a Gang Injunction Court Order', class = 'Felony', id = 'P.C. 3004', months = 20, fine = 5000, color = 'red', description = 'Individual violating a court order in relation to a gang injunction'},          
    }
}

Config.AllowedJobs = {}
for index, value in pairs(Config.PoliceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.AmbulanceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.DojJobs) do
    Config.AllowedJobs[index] = value
end

Config.ColorNames = {
    [0] = "Metallic Black",
    [1] = "Metallic Graphite Black",
    [2] = "Metallic Black Steel",
    [3] = "Metallic Dark Silver",
    [4] = "Metallic Silver",
    [5] = "Metallic Blue Silver",
    [6] = "Metallic Steel Gray",
    [7] = "Metallic Shadow Silver",
    [8] = "Metallic Stone Silver",
    [9] = "Metallic Midnight Silver",
    [10] = "Metallic Gun Metal",
    [11] = "Metallic Anthracite Grey",
    [12] = "Matte Black",
    [13] = "Matte Gray",
    [14] = "Matte Light Grey",
    [15] = "Util Black",
    [16] = "Util Black Poly",
    [17] = "Util Dark silver",
    [18] = "Util Silver",
    [19] = "Util Gun Metal",
    [20] = "Util Shadow Silver",
    [21] = "Worn Black",
    [22] = "Worn Graphite",
    [23] = "Worn Silver Grey",
    [24] = "Worn Silver",
    [25] = "Worn Blue Silver",
    [26] = "Worn Shadow Silver",
    [27] = "Metallic Red",
    [28] = "Metallic Torino Red",
    [29] = "Metallic Formula Red",
    [30] = "Metallic Blaze Red",
    [31] = "Metallic Graceful Red",
    [32] = "Metallic Garnet Red",
    [33] = "Metallic Desert Red",
    [34] = "Metallic Cabernet Red",
    [35] = "Metallic Candy Red",
    [36] = "Metallic Sunrise Orange",
    [37] = "Metallic Classic Gold",
    [38] = "Metallic Orange",
    [39] = "Matte Red",
    [40] = "Matte Dark Red",
    [41] = "Matte Orange",
    [42] = "Matte Yellow",
    [43] = "Util Red",
    [44] = "Util Bright Red",
    [45] = "Util Garnet Red",
    [46] = "Worn Red",
    [47] = "Worn Golden Red",
    [48] = "Worn Dark Red",
    [49] = "Metallic Dark Green",
    [50] = "Metallic Racing Green",
    [51] = "Metallic Sea Green",
    [52] = "Metallic Olive Green",
    [53] = "Metallic Green",
    [54] = "Metallic Gasoline Blue Green",
    [55] = "Matte Lime Green",
    [56] = "Util Dark Green",
    [57] = "Util Green",
    [58] = "Worn Dark Green",
    [59] = "Worn Green",
    [60] = "Worn Sea Wash",
    [61] = "Metallic Midnight Blue",
    [62] = "Metallic Dark Blue",
    [63] = "Metallic Saxony Blue",
    [64] = "Metallic Blue",
    [65] = "Metallic Mariner Blue",
    [66] = "Metallic Harbor Blue",
    [67] = "Metallic Diamond Blue",
    [68] = "Metallic Surf Blue",
    [69] = "Metallic Nautical Blue",
    [70] = "Metallic Bright Blue",
    [71] = "Metallic Purple Blue",
    [72] = "Metallic Spinnaker Blue",
    [73] = "Metallic Ultra Blue",
    [74] = "Metallic Bright Blue",
    [75] = "Util Dark Blue",
    [76] = "Util Midnight Blue",
    [77] = "Util Blue",
    [78] = "Util Sea Foam Blue",
    [79] = "Uil Lightning blue",
    [80] = "Util Maui Blue Poly",
    [81] = "Util Bright Blue",
    [82] = "Matte Dark Blue",
    [83] = "Matte Blue",
    [84] = "Matte Midnight Blue",
    [85] = "Worn Dark blue",
    [86] = "Worn Blue",
    [87] = "Worn Light blue",
    [88] = "Metallic Taxi Yellow",
    [89] = "Metallic Race Yellow",
    [90] = "Metallic Bronze",
    [91] = "Metallic Yellow Bird",
    [92] = "Metallic Lime",
    [93] = "Metallic Champagne",
    [94] = "Metallic Pueblo Beige",
    [95] = "Metallic Dark Ivory",
    [96] = "Metallic Choco Brown",
    [97] = "Metallic Golden Brown",
    [98] = "Metallic Light Brown",
    [99] = "Metallic Straw Beige",
    [100] = "Metallic Moss Brown",
    [101] = "Metallic Biston Brown",
    [102] = "Metallic Beechwood",
    [103] = "Metallic Dark Beechwood",
    [104] = "Metallic Choco Orange",
    [105] = "Metallic Beach Sand",
    [106] = "Metallic Sun Bleeched Sand",
    [107] = "Metallic Cream",
    [108] = "Util Brown",
    [109] = "Util Medium Brown",
    [110] = "Util Light Brown",
    [111] = "Metallic White",
    [112] = "Metallic Frost White",
    [113] = "Worn Honey Beige",
    [114] = "Worn Brown",
    [115] = "Worn Dark Brown",
    [116] = "Worn straw beige",
    [117] = "Brushed Steel",
    [118] = "Brushed Black steel",
    [119] = "Brushed Aluminium",
    [120] = "Chrome",
    [121] = "Worn Off White",
    [122] = "Util Off White",
    [123] = "Worn Orange",
    [124] = "Worn Light Orange",
    [125] = "Metallic Securicor Green",
    [126] = "Worn Taxi Yellow",
    [127] = "police car blue",
    [128] = "Matte Green",
    [129] = "Matte Brown",
    [130] = "Worn Orange",
    [131] = "Matte White",
    [132] = "Worn White",
    [133] = "Worn Olive Army Green",
    [134] = "Pure White",
    [135] = "Hot Pink",
    [136] = "Salmon pink",
    [137] = "Metallic Vermillion Pink",
    [138] = "Orange",
    [139] = "Green",
    [140] = "Blue",
    [141] = "Mettalic Black Blue",
    [142] = "Metallic Black Purple",
    [143] = "Metallic Black Red",
    [144] = "Hunter Green",
    [145] = "Metallic Purple",
    [146] = "Metaillic V Dark Blue",
    [147] = "MODSHOP BLACK1",
    [148] = "Matte Purple",
    [149] = "Matte Dark Purple",
    [150] = "Metallic Lava Red",
    [151] = "Matte Forest Green",
    [152] = "Matte Olive Drab",
    [153] = "Matte Desert Brown",
    [154] = "Matte Desert Tan",
    [155] = "Matte Foilage Green",
    [156] = "DEFAULT ALLOY COLOR",
    [157] = "Epsilon Blue",
    [158] = "Unknown",
}

Config.ColorInformation = {
    [0] = "black",
    [1] = "black",
    [2] = "black",
    [3] = "darksilver",
    [4] = "silver",
    [5] = "bluesilver",
    [6] = "silver",
    [7] = "darksilver",
    [8] = "silver",
    [9] = "bluesilver",
    [10] = "darksilver",
    [11] = "darksilver",
    [12] = "matteblack",
    [13] = "gray",
    [14] = "lightgray",
    [15] = "black",
    [16] = "black",
    [17] = "darksilver",
    [18] = "silver",
    [19] = "utilgunmetal",
    [20] = "silver",
    [21] = "black",
    [22] = "black",
    [23] = "darksilver",
    [24] = "silver",
    [25] = "bluesilver",
    [26] = "darksilver",
    [27] = "red",
    [28] = "torinored",
    [29] = "formulared",
    [30] = "blazered",
    [31] = "gracefulred",
    [32] = "garnetred",
    [33] = "desertred",
    [34] = "cabernetred",
    [35] = "candyred",
    [36] = "orange",
    [37] = "gold",
    [38] = "orange",
    [39] = "red",
    [40] = "mattedarkred",
    [41] = "orange",
    [42] = "matteyellow",
    [43] = "red",
    [44] = "brightred",
    [45] = "garnetred",
    [46] = "red",
    [47] = "red",
    [48] = "darkred",
    [49] = "darkgreen",
    [50] = "racingreen",
    [51] = "seagreen",
    [52] = "olivegreen",
    [53] = "green",
    [54] = "gasolinebluegreen",
    [55] = "mattelimegreen",
    [56] = "darkgreen",
    [57] = "green",
    [58] = "darkgreen",
    [59] = "green",
    [60] = "seawash",
    [61] = "midnightblue",
    [62] = "darkblue",
    [63] = "saxonyblue",
    [64] = "blue",
    [65] = "blue",
    [66] = "blue",
    [67] = "diamondblue",
    [68] = "blue",
    [69] = "blue",
    [70] = "brightblue",
    [71] = "purpleblue",
    [72] = "blue",
    [73] = "ultrablue",
    [74] = "brightblue",
    [75] = "darkblue",
    [76] = "midnightblue",
    [77] = "blue",
    [78] = "blue",
    [79] = "lightningblue",
    [80] = "blue",
    [81] = "brightblue",
    [82] = "mattedarkblue",
    [83] = "matteblue",
    [84] = "matteblue",
    [85] = "darkblue",
    [86] = "blue",
    [87] = "lightningblue",
    [88] = "yellow",
    [89] = "yellow",
    [90] = "bronze",
    [91] = "yellow",
    [92] = "lime",
    [93] = "champagne",
    [94] = "beige",
    [95] = "darkivory",
    [96] = "brown",
    [97] = "brown",
    [98] = "lightbrown",
    [99] = "beige",
    [100] = "brown",
    [101] = "brown",
    [102] = "beechwood",
    [103] = "beechwood",
    [104] = "chocoorange",
    [105] = "yellow",
    [106] = "yellow",
    [107] = "cream",
    [108] = "brown",
    [109] = "brown",
    [110] = "brown",
    [111] = "white",
    [112] = "white",
    [113] = "beige",
    [114] = "brown",
    [115] = "brown",
    [116] = "beige",
    [117] = "steel",
    [118] = "blacksteel",
    [119] = "aluminium",
    [120] = "chrome",
    [121] = "wornwhite",
    [122] = "offwhite",
    [123] = "orange",
    [124] = "lightorange",
    [125] = "green",
    [126] = "yellow",
    [127] = "blue",
    [128] = "green",
    [129] = "brown",
    [130] = "orange",
    [131] = "white",
    [132] = "white",
    [133] = "darkgreen",
    [134] = "white",
    [135] = "pink",
    [136] = "pink",
    [137] = "pink",
    [138] = "orange",
    [139] = "green",
    [140] = "blue",
    [141] = "blackblue",
    [142] = "blackpurple",
    [143] = "blackred",
    [144] = "darkgreen",
    [145] = "purple",
    [146] = "darkblue",
    [147] = "black",
    [148] = "purple",
    [149] = "darkpurple",
    [150] = "red",
    [151] = "darkgreen",
    [152] = "olivedrab",
    [153] = "brown",
    [154] = "tan",
    [155] = "green",
    [156] = "silver",
    [157] = "blue",
    [158] = "black",
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}

function GetJobType(job)
	if Config.PoliceJobs[job] then
		return 'police'
	elseif Config.AmbulanceJobs[job] then
		return 'ambulance'
	elseif Config.DojJobs[job] then
		return 'doj'
	else
		return nil
	end
end
