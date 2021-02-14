/*


   ___                  _       ___ _                           
  / __\___  _   _ _ __ | |_    / _ \ | __ _ _   _  ___ _ __ ___ 
 / /  / _ \| | | | '_ \| __|  / /_)/ |/ _` | | | |/ _ \ '__/ __|
/ /__| (_) | |_| | | | | |_  / ___/| | (_| | |_| |  __/ |  \__ \
\____/\___/ \__,_|_| |_|\__| \/    |_|\__,_|\__, |\___|_|  |___/
                                            |___/               
----------------------------------------------------------------->
Github: https://github.com/prrssr
Version: 0.0.1    
Requirements: discord-connector  
<----------------------------------------------------------------       
*/
#include <a_samp>
#include <discord-connector>

new CountingPlayer;

forward BotStatus(playerid);
public BotStatus(playerid)
{
	new string[256];
	format(string, sizeof(string), "with %d players!", CountingPlayer);
	DCC_SetBotActivity(string);
}

public OnGameModeInit()
{
       SetTimer("BotStatus", 1000, true);
}

public OnPlayerConnect(playerid)
{
	CountingPlayer++;
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	CountingPlayer--;
    return 1;
}
