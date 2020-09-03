Entity:	keyboard
Entity:	filesystem
	Method:	list	
		Doc: function(path:string):table -- Returns a list of names of objects in the directory at the specified absolute path in the file system.
	Method:	open	
		Doc: function(path:string[, mode:string='r']):userdata -- Opens a new file descriptor and returns its handle.
	Method:	remove	
		Doc: function(path:string):boolean -- Removes the object at the specified absolute path in the file system.
	Method:	makeDirectory	
		Doc: function(path:string):boolean -- Creates a directory at the specified absolute path in the file system. Creates parent directories, if necessary.
	Method:	read	
		Doc: function(handle:userdata, count:number):string or nil -- Reads up to the specified amount of data from an open file descriptor with the specified handle. Returns nil when EOF is reached.
	Method:	size	
		Doc: function(path:string):number -- Returns the size of the object at the specified absolute path in the file system.
	Method:	close	
		Doc: function(handle:userdata) -- Closes an open file descriptor with the specified handle.
	Method:	exists	
		Doc: function(path:string):boolean -- Returns whether an object exists at the specified absolute path in the file system.
	Method:	spaceUsed	
		Doc: function():number -- The currently used capacity of the file system, in bytes.
	Method:	isDirectory	
		Doc: function(path:string):boolean -- Returns whether the object at the specified absolute path in the file system is a directory.
	Method:	rename	
		Doc: function(from:string, to:string):boolean -- Renames/moves an object from the first specified absolute path in the file system to the second.
	Method:	write	
		Doc: function(handle:userdata, value:string):boolean -- Writes the specified data to an open file descriptor with the specified handle.
	Method:	getLabel	
		Doc: function():string -- Get the current label of the drive.
	Method:	lastModified	
		Doc: function(path:string):number -- Returns the (real world) timestamp of when the object at the specified absolute path in the file system was modified.
	Method:	seek	
		Doc: function(handle:userdata, whence:string, offset:number):number -- Seeks in an open file descriptor with the specified handle. Returns the new pointer position.
	Method:	setLabel	
		Doc: function(value:string):string -- Sets the label of the drive. Returns the new value, which may be truncated.
	Method:	isReadOnly	
		Doc: function():boolean -- Returns whether the file system is read-only.
	Method:	spaceTotal	
		Doc: function():number -- The overall capacity of the file system, in bytes.
Entity:	thermaldynamics_duct_energy_basic
	Method:	getDocs	
		Doc: 
	Method:	getRFCapacity	
		Doc: 
	Method:	getRFStored	
		Doc: 
	Method:	getMetadata	
		Doc: 
Entity:	eeprom
	Method:	getSize	
		Doc: function():number -- Get the storage capacity of this EEPROM.
	Method:	getData	
		Doc: function():string -- Get the currently stored byte array.
	Method:	makeReadonly	
		Doc: function(checksum:string):boolean -- Make this EEPROM readonly if it isn't already. This process cannot be reversed!
	Method:	setData	
		Doc: function(data:string) -- Overwrite the currently stored byte array.
	Method:	getLabel	
		Doc: function():string -- Get the label of the EEPROM.
	Method:	set	
		Doc: function(data:string) -- Overwrite the currently stored byte array.
	Method:	getChecksum	
		Doc: function():string -- Get the checksum of the data on this EEPROM.
	Method:	setLabel	
		Doc: function(data:string):string -- Set the label of the EEPROM.
	Method:	get	
		Doc: function():string -- Get the currently stored byte array.
	Method:	getDataSize	
		Doc: function():number -- Get the storage capacity of this EEPROM.
Entity:	screen
	Method:	turnOff	
		Doc: function():boolean -- Turns off the screen. Returns true if it was on.
	Method:	getAspectRatio	
		Doc: function():number, number -- The aspect ratio of the screen. For multi-block screens this is the number of blocks, horizontal and vertical.
	Method:	setPrecise	
		Doc: function(enabled:boolean):boolean -- Set whether to use high precision mode (sub-pixel mouse event positions).
	Method:	getKeyboards	
		Doc: function():table -- The list of keyboards attached to the screen.
	Method:	turnOn	
		Doc: function():boolean -- Turns the screen on. Returns true if it was off.
	Method:	setTouchModeInverted	
		Doc: function(value:boolean):boolean -- Sets whether to invert touch mode (sneak-activate opens GUI, instead of normal activate).
	Method:	isTouchModeInverted	
		Doc: function():boolean -- Whether touch mode is inverted (sneak-activate opens GUI, instead of normal activate).
	Method:	isOn	
		Doc: function():boolean -- Returns whether the screen is currently on.
	Method:	isPrecise	
		Doc: function():boolean -- Returns whether the screen is in high precision mode (sub-pixel mouse event positions).
Entity:	minecraft_chest
	Method:	drop	
		Doc: 
	Method:	list	
		Doc: 
	Method:	getTransferLocations	
		Doc: 
	Method:	getItem	
		Doc: 
	Method:	getDocs	
		Doc: 
	Method:	suck	
		Doc: 
	Method:	size	
		Doc: 
	Method:	pullItems	
		Doc: 
	Method:	getMetadata	
		Doc: 
	Method:	getItemMeta	
		Doc: 
	Method:	pushItems	
		Doc: 
Entity:	internet
	Method:	connect	
		Doc: function(address:string[, port:number]):userdata -- Opens a new TCP connection. Returns the handle of the connection.
	Method:	isHttpEnabled	
		Doc: function():boolean -- Returns whether HTTP requests can be made (config setting).
	Method:	isTcpEnabled	
		Doc: function():boolean -- Returns whether TCP connections can be made (config setting).
	Method:	request	
		Doc: function(url:string[, postData:string[, headers:table[, method:string]]]):userdata -- Starts an HTTP request. If this returns true, further results will be pushed using `http_response` signals.
Entity:	gpu
	Method:	getDepth	
		Doc: function():number -- Returns the currently set color depth.
	Method:	getBackground	
		Doc: function():number, boolean -- Get the current background color and whether it's from the palette or not.
	Method:	maxResolution	
		Doc: function():number, number -- Get the maximum screen resolution.
	Method:	setDepth	
		Doc: function(depth:number):number -- Set the color depth. Returns the previous value.
	Method:	getPaletteColor	
		Doc: function(index:number):number -- Get the palette color at the specified palette index.
	Method:	setBackground	
		Doc: function(value:number[, palette:boolean]):number, number or nil -- Sets the background color to the specified value. Optionally takes an explicit palette index. Returns the old value and if it was from the palette its palette index.
	Method:	setViewport	
		Doc: function(width:number, height:number):boolean -- Set the viewport resolution. Cannot exceed the screen resolution. Returns true if the resolution changed.
	Method:	maxDepth	
		Doc: function():number -- Get the maximum supported color depth.
	Method:	setForeground	
		Doc: function(value:number[, palette:boolean]):number, number or nil -- Sets the foreground color to the specified value. Optionally takes an explicit palette index. Returns the old value and if it was from the palette its palette index.
	Method:	fill	
		Doc: function(x:number, y:number, width:number, height:number, char:string):boolean -- Fills a portion of the screen at the specified position with the specified size with the specified character.
	Method:	getForeground	
		Doc: function():number, boolean -- Get the current foreground color and whether it's from the palette or not.
	Method:	bind	
		Doc: function(address:string[, reset:boolean=true]):boolean -- Binds the GPU to the screen with the specified address and resets screen settings if `reset` is true.
	Method:	setResolution	
		Doc: function(width:number, height:number):boolean -- Set the screen resolution. Returns true if the resolution changed.
	Method:	setPaletteColor	
		Doc: function(index:number, color:number):number -- Set the palette color at the specified palette index. Returns the previous value.
	Method:	set	
		Doc: function(x:number, y:number, value:string[, vertical:boolean]):boolean -- Plots a string value to the screen at the specified position. Optionally writes the string vertically.
	Method:	get	
		Doc: function(x:number, y:number):string, number, number, number or nil, number or nil -- Get the value displayed on the screen at the specified index, as well as the foreground and background color. If the foreground or background is from the palette, returns the palette indices as fourth and fifth results, else nil, respectively.
	Method:	copy	
		Doc: function(x:number, y:number, width:number, height:number, tx:number, ty:number):boolean -- Copies a portion of the screen from the specified location with the specified size by the specified translation.
	Method:	getScreen	
		Doc: function():string -- Get the address of the screen the GPU is currently bound to.
	Method:	getResolution	
		Doc: function():number, number -- Get the current screen resolution.
	Method:	getViewport	
		Doc: function():number, number -- Get the current viewport resolution.
Entity:	disk_drive
	Method:	eject	
		Doc: function([velocity:number]):boolean -- Eject the currently present medium from the drive.
	Method:	media	
		Doc: function(): string -- Return the internal floppy disk address
	Method:	isEmpty	
		Doc: function():boolean -- Checks whether some medium is currently in the drive.
Entity:	filesystem
	Method:	list	
		Doc: function(path:string):table -- Returns a list of names of objects in the directory at the specified absolute path in the file system.
	Method:	open	
		Doc: function(path:string[, mode:string='r']):userdata -- Opens a new file descriptor and returns its handle.
	Method:	remove	
		Doc: function(path:string):boolean -- Removes the object at the specified absolute path in the file system.
	Method:	makeDirectory	
		Doc: function(path:string):boolean -- Creates a directory at the specified absolute path in the file system. Creates parent directories, if necessary.
	Method:	read	
		Doc: function(handle:userdata, count:number):string or nil -- Reads up to the specified amount of data from an open file descriptor with the specified handle. Returns nil when EOF is reached.
	Method:	size	
		Doc: function(path:string):number -- Returns the size of the object at the specified absolute path in the file system.
	Method:	close	
		Doc: function(handle:userdata) -- Closes an open file descriptor with the specified handle.
	Method:	exists	
		Doc: function(path:string):boolean -- Returns whether an object exists at the specified absolute path in the file system.
	Method:	spaceUsed	
		Doc: function():number -- The currently used capacity of the file system, in bytes.
	Method:	isDirectory	
		Doc: function(path:string):boolean -- Returns whether the object at the specified absolute path in the file system is a directory.
	Method:	rename	
		Doc: function(from:string, to:string):boolean -- Renames/moves an object from the first specified absolute path in the file system to the second.
	Method:	write	
		Doc: function(handle:userdata, value:string):boolean -- Writes the specified data to an open file descriptor with the specified handle.
	Method:	getLabel	
		Doc: function():string -- Get the current label of the drive.
	Method:	lastModified	
		Doc: function(path:string):number -- Returns the (real world) timestamp of when the object at the specified absolute path in the file system was modified.
	Method:	seek	
		Doc: function(handle:userdata, whence:string, offset:number):number -- Seeks in an open file descriptor with the specified handle. Returns the new pointer position.
	Method:	setLabel	
		Doc: function(value:string):string -- Sets the label of the drive. Returns the new value, which may be truncated.
	Method:	isReadOnly	
		Doc: function():boolean -- Returns whether the file system is read-only.
	Method:	spaceTotal	
		Doc: function():number -- The overall capacity of the file system, in bytes.
Entity:	computer
	Method:	beep	
		Doc: function([frequency:string or number[, duration:number]]) -- Plays a tone, useful to alert users via audible feedback.
	Method:	stop	
		Doc: function():boolean -- Stops the computer. Returns true if the state changed.
	Method:	getDeviceInfo	
		Doc: function():table -- Collect information on all connected devices.
	Method:	isRunning	
		Doc: function():boolean -- Returns whether the computer is running.
	Method:	getProgramLocations	
		Doc: function():table -- Returns a map of program name to disk label for known programs.
	Method:	start	
		Doc: function():boolean -- Starts the computer. Returns true if the state changed.
Entity:	openblocks_tank
	Method:	getTanks	
		Doc: 
	Method:	getTransferLocations	
		Doc: 
	Method:	pullFluid	
		Doc: 
	Method:	getMetadata	
		Doc: 
	Method:	getDocs	
		Doc: 
	Method:	pushFluid	
		Doc: 
Entity:	filesystem
	Method:	list	
		Doc: function(path:string):table -- Returns a list of names of objects in the directory at the specified absolute path in the file system.
	Method:	open	
		Doc: function(path:string[, mode:string='r']):userdata -- Opens a new file descriptor and returns its handle.
	Method:	remove	
		Doc: function(path:string):boolean -- Removes the object at the specified absolute path in the file system.
	Method:	makeDirectory	
		Doc: function(path:string):boolean -- Creates a directory at the specified absolute path in the file system. Creates parent directories, if necessary.
	Method:	read	
		Doc: function(handle:userdata, count:number):string or nil -- Reads up to the specified amount of data from an open file descriptor with the specified handle. Returns nil when EOF is reached.
	Method:	size	
		Doc: function(path:string):number -- Returns the size of the object at the specified absolute path in the file system.
	Method:	close	
		Doc: function(handle:userdata) -- Closes an open file descriptor with the specified handle.
	Method:	exists	
		Doc: function(path:string):boolean -- Returns whether an object exists at the specified absolute path in the file system.
	Method:	spaceUsed	
		Doc: function():number -- The currently used capacity of the file system, in bytes.
	Method:	isDirectory	
		Doc: function(path:string):boolean -- Returns whether the object at the specified absolute path in the file system is a directory.
	Method:	rename	
		Doc: function(from:string, to:string):boolean -- Renames/moves an object from the first specified absolute path in the file system to the second.
	Method:	write	
		Doc: function(handle:userdata, value:string):boolean -- Writes the specified data to an open file descriptor with the specified handle.
	Method:	getLabel	
		Doc: function():string -- Get the current label of the drive.
	Method:	lastModified	
		Doc: function(path:string):number -- Returns the (real world) timestamp of when the object at the specified absolute path in the file system was modified.
	Method:	seek	
		Doc: function(handle:userdata, whence:string, offset:number):number -- Seeks in an open file descriptor with the specified handle. Returns the new pointer position.
	Method:	setLabel	
		Doc: function(value:string):string -- Sets the label of the drive. Returns the new value, which may be truncated.
	Method:	isReadOnly	
		Doc: function():boolean -- Returns whether the file system is read-only.
	Method:	spaceTotal	
		Doc: function():number -- The overall capacity of the file system, in bytes.
