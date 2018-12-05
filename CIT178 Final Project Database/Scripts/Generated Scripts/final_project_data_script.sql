USE [Cronos_Frontier]
GO
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-MIL', N'Automated Military Unit')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-MN', N'Automated Mining Unit')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-SC', N'Automated Security Unit')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'AO-SC/MN', N'Automated Hybrid')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'ENG', N'Engineering Technician')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'EXE', N'Executive Officer')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'MIL', N'Military Personnel')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'MN', N'Mining Personnel')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'PLT', N'Pilot')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'RES', N'Research Personnel')
INSERT [dbo].[JobCode] ([JobCode], [JobDescription]) VALUES (N'SC', N'Security Personnel')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R 4CS', N'Phantom', N'AO-MIL', N'Testbed for Cloaking Device')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R BCM-100', N'Shredder', N'AO-MN', N'General Mining')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R DD2-R', N'Guardian', N'AO-MIL', N'Colony Defense')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R DME-2A', N'Wyvern', N'AO-MN', N'Automated Explorer')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R DME-3A', N'Hydra', N'AO-SC/MN', N'Automated Explorer/Security')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R HD1-F', N'Triton', N'AO-MN', N'Material Displacement')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R M2-F', N'Ogre', N'AO-MN', N'Rubble Processing')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R SD-H1', N'Harpy', N'AO-SC', N'Light Security')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R SDC-S1', N'Scourge', N'AO-SC/MN', N'Security/Mining Hybrid')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R SRK-1A', N'Kraken', N'AO-SC', N'Heavy Security')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R X1', N'Golem', N'AO-SC', N'Ordinance Delivery')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'CF-R XKR', N'Reaver', N'AO-MIL', N'Colony Defense')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'JOA 4CS', N'Scorpion', N'AO-MN', N'High-Density Mining')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'JOA M1-A', N'Goblin', N'AO-MN', N'Low-Yield Mining')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'JOA SRG-1', N'Gorgon', N'AO-SC', N'Medium Security')
INSERT [dbo].[Autonomous_Operators] ([AutoOpID], [CodeName], [JobCode], [Role]) VALUES (N'SP C-V1', N'Valkyrie', N'AO-MIL', N'Military Prototype')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'ENC-01', N'Enceladus Gas Mining Depot', N'Enceladus')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'OM-01', N'Skoll Outpost', N'Skoll')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'OM-02', N'Tarvos Outpost', N'Tarvos')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'OM-03', N'Ymir Outpost', N'Ymir')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'PHB-01', N'Phoebe Complex', N'Phoebe')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'PHB-02', N'Phoebe Refinery', N'Phoebe')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TET-01', N'Tethys Advanced Research Lab', N'Tethys')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-01', N'Titan Harbor', N'Titan')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-02', N'Titan Observatory', N'Titan')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-03', N'Titan Workshop', N'Titan')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-04', N'Titan Forge', N'Titan')
INSERT [dbo].[Facilities] ([FacilityID], [FacilityName], [FacilityLocation]) VALUES (N'TN-05', N'Titan Collider', N'Titan')
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-02', N'CF-R BCM-100', 18)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'CF-R DD2-R', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'CF-R DME-2A', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'CF-R HD1-F', 5)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'CF-R HD1-F', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'CF-R M2-F', 15)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'CF-R M2-F', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-03', N'CF-R M2-F', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'CF-R M2-F', 30)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'CF-R M2-F', 30)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'CF-R SD-H1', 15)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'CF-R SDC-S1', 15)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'CF-R SRK-1A', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'CF-R SRK-1A', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'CF-R SRK-1A', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'CF-R SRK-1A ', 25)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'CF-R X1', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'CF-R X1', 25)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'JOA 4CS', 15)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'JOA 4CS', 15)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'JOA 4CS', 25)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'JOA 4CS ', 35)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'JOA M1-A', 20)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'JOA M1-A', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-03', N'JOA M1-A', 19)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'JOA M1-A', 30)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'JOA M1-A', 30)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'JOA M1-A', 35)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-01', N'JOA SRG-1', 15)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-02', N'JOA SRG-1', 10)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'OM-03', N'JOA SRG-1', 16)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-01', N'JOA SRG-1', 15)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'PHB-02', N'JOA SRG-1 ', 20)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'JOA SRG-1 ', 35)
INSERT [dbo].[Operator_Assignment] ([FacilityID], [AutoOpID], [Quantity]) VALUES (N'TN-01', N'SP C-V1', 10)
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #202', N'ENC-01', CAST(N'2117-02-04' AS Date), N'Expansion of Enceladus Gas Mining Depot.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #226', N'TET-01', CAST(N'2117-03-19' AS Date), N'*Redacted*')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #422', N'TN-03', CAST(N'2117-09-02' AS Date), N'Perform modifications on JOA-4CS, JOA M1-A, and CF-R HD1-F units.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #424', N'TN-04', CAST(N'2117-09-08' AS Date), N'Mineral Analysis and Component Fabrication for CF-SP#413.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #425', N'TN-02', CAST(N'2117-12-14' AS Date), N'Conduct Survey of KIC 8462852 in the Cygnus Constellation.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #455', N'TN-05', CAST(N'2118-01-18' AS Date), N'Minaturization of CF-SP#413 technology.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #643', N'TN-05', CAST(N'2118-08-02' AS Date), N'Weaponization of Thunderbolt for colony defense.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #645', N'OM-02', CAST(N'2118-08-15' AS Date), N'Rare Mineral Survey for CF-P #455 and CF-P #643.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #655', N'PHB-01', CAST(N'2118-08-03' AS Date), N'Construction of new Autonomous Operator class.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #656', N'PHB-01', CAST(N'2118-08-17' AS Date), N'Test prototype Operator (CF-P #655) for suitability for Colony Defense.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #658', N'OM-01', CAST(N'2118-08-15' AS Date), N'Installation of new cryotubes in facility cyroshelter.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-P #659', N'OM-03', CAST(N'2118-08-19' AS Date), N'Installation of new cryotubes in facility cyroshelter.')
INSERT [dbo].[CFProjects] ([ProjectID], [FacilityID], [StartDate], [ProjectDescription]) VALUES (N'CF-SP #413', N'TN-05', CAST(N'2117-08-07' AS Date), N'Advanced Physics Experiment - Codename:Thunderbolt.')
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-00001', N'EXE', N'Gabriel', N'Kantor', N'CEO')
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-00003', N'EXE', N'James', N'Lynch', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-20329', N'RES', N'Dev', N'Saldanha', N'Dr.')
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21033', N'RES', N'Oberon', N'Kalu', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21037', N'RES', N'Matsuko', N'Yamada', N'Dr.')
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21039', N'ENG', N'Sanvi', N'Tamboli', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21202', N'RES', N'Annika', N'Geisler', N'Dr.')
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21283', N'PLT', N'Sam', N'Amjad', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21301', N'ENG', N'Harper', N'Eames', N'Dr.')
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-21302', N'PLT', N'Alex', N'Warden', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30843', N'SC', N'Bai', N'Li', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30849', N'ENG', N'Heloise', N'Martel', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30850', N'ENG', N'Evelyn', N'Buhari', N'Dr.')
INSERT [dbo].[Employees] ([EmployeeID], [JobCode], [FirstName], [LastName], [Title]) VALUES (N'CF-30920', N'ENG', N'Max', N'Volkov', NULL)
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #202', N'CF-00001')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #202', N'CF-21301')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #202', N'CF-21302')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-00001')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-20329')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-21301')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #226', N'CF-21302')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #422', N'CF-21039')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #424', N'CF-21033')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #425', N'CF-21037')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #643', N'CF-21202')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #645', N'CF-21202')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #655', N'CF-30849')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #656', N'CF-30849')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #658', N'CF-00003')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-P #659', N'CF-30850')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-SP #413', N'CF-21202')
INSERT [dbo].[Project_Assignment] ([ProjectID], [EmployeeID]) VALUES (N'CF-SP #413', N'CF-21302')
INSERT [dbo].[OperatorLogs] ([AutoOpID], [status]) VALUES (N'CF-R BCM-100', N'Inserted')
INSERT [dbo].[OperatorLogs] ([AutoOpID], [status]) VALUES (N'CF-R BCM-100', N'Deleted')
INSERT [dbo].[OperatorLogs] ([AutoOpID], [status]) VALUES (N'JOA SRG-1', N'Updated Quantity')
INSERT [dbo].[OperatorLogs] ([AutoOpID], [status]) VALUES (N'JOA M1-A', N'Updated Quantity')
INSERT [dbo].[OperatorLogs] ([AutoOpID], [status]) VALUES (N'JOA M1-A', N'Updated Quantity')
INSERT [dbo].[OperatorLogs] ([AutoOpID], [status]) VALUES (N'JOA SRG-1', N'Updated Quantity')
INSERT [dbo].[OperatorLogs] ([AutoOpID], [status]) VALUES (N'CF-R M2-F', N'Updated Quantity')
