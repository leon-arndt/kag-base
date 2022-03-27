#include "ChatCommand.as"

class BotCommand : ChatCommand
{
	BotCommand()
	{
		super("bot", "Spawn a bot");
		AddAlias("henry");
		SetModOnly();
		SetDebugOnly();
	}

	void Execute(string name, string[] args, CPlayer@ player)
	{
		if (isServer())
		{
			AddBot("Henry");
		}
	}
}
