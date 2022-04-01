init()
{
 	level thread onplayerconnect();
}

onplayerconnect()
{
	for ( ;; )
	{
		level waittill( "connecting", player );
		player thread onplayerspawned();
	}
}

onplayerspawned()
{
	level endon( "game_ended" );
    self endon( "disconnect" );

    	self.initial_spawn = true;

    for(;;)
    {
        self waittill_any("spawned_player", "player_revived"); //	 When the player respawns or is revived.
        self IPrintLnBold( "Max Health Boosted From 100hp to 150hp" );
		self.maxhealth=150;
        self.health=self.maxhealth;
    }
}
