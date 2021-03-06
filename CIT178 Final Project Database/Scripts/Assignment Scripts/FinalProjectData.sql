USE [Cronos_Frontier]
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-MIL', N'Automated Military Unit')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-MN', N'Automated Mining Unit')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-SC', N'Automated Security Unit')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-SC/MN', N'Automated Hybrid')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'ENG', N'Engineering Technician')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'EXE', N'Executive Officer')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'MIL', N'Military Personnel')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'MN', N'Mining Personnel')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'PLT', N'Pilot')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'RES', N'Research Personnel')
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'SC', N'Security Personnel')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R 4CS', N'Phantom', N'AO-MIL', N'Testbed for Cloaking Device')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R BCM-100', N'Shredder', N'AO-MN', N'General Mining')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R DD2-R', N'Guardian', N'AO-MIL', N'Colony Defense')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R DME-2A', N'Wyvern', N'AO-MN', N'Automated Explorer')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R DME-3A', N'Hydra', N'AO-SC/MN', N'Automated Explorer/Security')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R HD1-F', N'Triton', N'AO-MN', N'Material Displacement')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R M2-F', N'Ogre', N'AO-MN', N'Rubble Processing')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R SD-H1', N'Harpy', N'AO-SC', N'Light Security')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R SDC-S1', N'Scourge', N'AO-SC/MN', N'Security/Mining Hybrid')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R SRK-1A', N'Kraken', N'AO-SC', N'Heavy Security')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R X1', N'Golem', N'AO-SC', N'Ordinance Delivery')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R XKR', N'Reaver', N'AO-MIL', N'Colony Defense')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'JOA 4CS', N'Scorpion', N'AO-MN', N'High-Density Mining')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'JOA M1-A', N'Goblin', N'AO-MN', N'Low-Yield Mining')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'JOA SRG-1', N'Gorgon', N'AO-SC', N'Medium Security')
GO
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'SP C-V1', N'Valkyrie', N'AO-MIL', N'Military Prototype')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'ENC-01', N'Enceladus Gas Mining Depot', N'Enceladus')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'OM-01', N'Skoll Outpost', N'Skoll')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'OM-02', N'Tarvos Outpost', N'Tarvos')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'OM-03', N'Ymir Outpost', N'Ymir')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'PHB-01', N'Phoebe Complex', N'Phoebe')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'PHB-02', N'Phoebe Refinery', N'Phoebe')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TET-01', N'Tethys Advanced Research Lab', N'Tethys')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-01', N'Titan Harbor', N'Titan')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-02', N'Titan Observatory', N'Titan')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-03', N'Titan Workshop', N'Titan')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-04', N'Titan Forge', N'Titan')
GO
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-05', N'Titan Collider', N'Titan')
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'CF-R BCM-100', 2)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'CF-R HD1-F', 5)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'CF-R M2-F', 15)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'CF-R M2-F', 10)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-03', N'CF-R M2-F', 15)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'CF-R M2-F', 30)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'CF-R M2-F', 30)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'CF-R SRK-1A', 10)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'CF-R SRK-1A', 10)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'CF-R SRK-1A', 10)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'CF-R X1', 10)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'JOA 4CS', 15)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'JOA 4CS', 15)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'JOA 4CS', 25)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'JOA 4CS ', 35)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'JOA M1-A', 20)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'JOA M1-A', 10)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-03', N'JOA M1-A', 15)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'JOA M1-A', 30)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'JOA M1-A', 30)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'JOA SRG-1', 15)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'JOA SRG-1', 10)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-03', N'JOA SRG-1', 5)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'JOA SRG-1', 15)
GO
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'JOA SRG-1 ', 20)
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #202', N'ENC-01', CAST(N'2117-02-04' AS Date), N'Expansion of Enceladus Gas Mining Depot.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #226', N'TET-01', CAST(N'2117-03-19' AS Date), N'*Redacted*')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #422', N'TN-03', CAST(N'2117-09-02' AS Date), N'Perform modifications on JOA-4CS, JOA M1-A, and CF-R HD1-F units.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #424', N'TN-04', CAST(N'2117-09-08' AS Date), N'Mineral Analysis and Component Fabrication for CF-SP#413.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #425', N'TN-02', CAST(N'2117-12-14' AS Date), N'Conduct Survey of KIC 8462852 in the Cygnus Constellation.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #455', N'TN-05', CAST(N'2118-01-18' AS Date), N'Minaturization of CF-SP#413 technology.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #643', N'TN-05', CAST(N'2118-08-02' AS Date), N'Weaponization of Thunderbolt for colony defense.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #645', N'OM-02', CAST(N'2118-08-15' AS Date), N'Rare Mineral Survey for CF-P #455 and CF-P #643.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #655', N'PHB-01', CAST(N'2118-08-03' AS Date), N'Construction of new Autonomous Operator class.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #656', N'PHB-01', CAST(N'2118-08-17' AS Date), N'Test prototype Operator (CF-P #655) for suitability for Colony Defense.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #658', N'OM-01', CAST(N'2118-08-15' AS Date), N'Installation of new cryotubes in facility cyroshelter.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #659', N'OM-03', CAST(N'2118-08-19' AS Date), N'Installation of new cryotubes in facility cyroshelter.')
GO
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-SP #413', N'TN-05', CAST(N'2117-08-07' AS Date), N'Advanced Physics Experiment - Codename:Thunderbolt.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-00001', N'EXE', N'Gabriel', N'Kantor', N'CEO')
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-00003', N'EXE', N'James', N'Lynch', NULL)
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-20329', N'RES', N'Dev', N'Saldanha', N'Dr.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21033', N'RES', N'Oberon', N'Kalu', NULL)
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21037', N'RES', N'Matsuko', N'Yamada', N'Dr.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21039', N'ENG', N'Sanvi', N'Tamboli', NULL)
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21202', N'RES', N'Annika', N'Geisler', N'Dr.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21283', N'PLT', N'Sam', N'Amjad', NULL)
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21301', N'ENG', N'Harper', N'Eames', N'Dr.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21302', N'PLT', N'Alex', N'Warden', NULL)
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30843', N'SC', N'Bai', N'Li', NULL)
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30849', N'ENG', N'Heloise', N'Martel', NULL)
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30850', N'ENG', N'Evelyn', N'Buhari', N'Dr.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30920', N'ENG', N'Max', N'Volkov', NULL)
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #202', N'CF-00001')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #202', N'CF-21301')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #202', N'CF-21302')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-00001')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-20329')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-21301')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-21302')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #422', N'CF-21039')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #424', N'CF-21033')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #425', N'CF-21037')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #643', N'CF-21202')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #645', N'CF-21202')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #655', N'CF-30849')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #656', N'CF-30849')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #658', N'CF-00003')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #659', N'CF-30850')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-SP #413', N'CF-21202')
GO
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-SP #413', N'CF-21302')
GO
