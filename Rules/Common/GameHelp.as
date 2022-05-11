#define CLIENT_ONLY
#include "ActorHUDStartPos.as";
#include "ShiprektTranslation.as";

bool showHelp = true;
bool justJoined = true;
bool page1 = true;
const f32 boxMargin = 50.0f;
//key names
const string party_key = getControls().getActionKeyKeyName(AK_PARTY);
const string inv_key = getControls().getActionKeyKeyName(AK_INVENTORY);
const string pick_key = getControls().getActionKeyKeyName(AK_PICKUP);
const string taunts_key = getControls().getActionKeyKeyName(AK_TAUNTS);
const string use_key = getControls().getActionKeyKeyName(AK_USE);
const string action1_key = getControls().getActionKeyKeyName(AK_ACTION1);
const string action2_key = getControls().getActionKeyKeyName(AK_ACTION2);
const string action3_key = getControls().getActionKeyKeyName(AK_ACTION3);
const string map_key = getControls().getActionKeyKeyName(AK_MAP);
const string zoomIn_key = getControls().getActionKeyKeyName(AK_ZOOMIN);
const string zoomOut_key = getControls().getActionKeyKeyName(AK_ZOOMOUT);
		
void onInit(CRules@ this)
{
	sv_contact_info = "\ngithub.com/Gingerbeard5773/shiprekt"; //when errors appear
	
	CFileImage@ image = CFileImage("GameHelp.png");
	Vec2f imageSize = Vec2f(image.getWidth(), image.getHeight());
	AddIconToken("$HELP$", "GameHelp.png", imageSize, 0);
	u_showtutorial = true;// for ShowTipOnDeath to work
	
	if (!GUI::isFontLoaded("thick font"))
	{
        GUI::LoadFont("thick font", g_locale == "ru" ? "GUI/Fonts/Arial.ttf" : "GUI/Fonts/AveriaSerif-Bold.ttf", 30, true);
    }
}

void onTick(CRules@ this)
{
	CControls@ controls = getControls();
	if (controls.isKeyJustPressed(KEY_F1))
	{
		u_showtutorial = true;// for ShowTipOnDeath to work
		showHelp = !showHelp;
		justJoined = false;
	}
	if (controls.isKeyJustPressed(KEY_LBUTTON))
		page1 = !page1;
}

//a work in progress
void onRender(CRules@ this)
{
	CPlayer@ player = getLocalPlayer();
	if (player is null) return;
	
	if (showHelp)
	{	
		const SColor tipsColor = SColor(255, 255, 255, 255);
		const f32 sWidth = getScreenWidth();
		const f32 sHeight = getScreenHeight();
		const u32 gameTime = getGameTime();

		Vec2f imageSize;
		GUI::GetIconDimensions("$HELP$", imageSize);

		const string infoTitle = Trans::HowToPlay;
		const string textInfo = "- "+ Trans::Mothership+":\n" +
		" * "+ Trans::GatherX    +"\n"+
		" * "+ Trans::EngineWeak +"\n\n"+
		"- " + Trans::Miniship   +":\n" +
		" * "+ Trans::YieldX     +"\n"+
		" * "+ Trans::Docking    +"\n\n"+
		"- " + Trans::OtherTips  +":\n"+
		" * "+ Trans::Leaderboard+"\n"+
		" * "+ Trans::BlockWeight;
		
		//Controls
		const string controlsTitle = Trans::Controls;
		const string controlsInfo = " [ " + inv_key + " ] "+ Trans::GetBlocks+"\n"+
		" [ " + action3_key + " ] "+ Trans::RotateBlocks+"\n"+
		" [ " + action1_key + " ] "+ Trans::Punch+"\n"+
		" [ " + action2_key + " ] "+Trans::Hold+" "+ Trans::FireGun+"\n"+
		" [ MOUSE MIDDLE ]  "+ Trans::Hold+" "+Trans::PointEmote+"\n"+
		" [ " + zoomIn_key + " ], [ " + zoomOut_key + " ] "+ Trans::Zoom+"\n"+
		" [ " + party_key + " ] "+ Trans::AccessTools+"\n"+
		" [ " + map_key + " ] "+ Trans::ScaleCompass+"\n"+
		" [ " + pick_key + " ] / [ " + taunts_key + " ] "+ Trans::Hold+" "+Trans::Strafe+".";
		
		GUI::SetFont("menu");
		
		Vec2f infoSize;
		GUI::GetTextDimensions(infoTitle + textInfo, infoSize);
		Vec2f controlsSize;
		GUI::GetTextDimensions(controlsTitle + controlsInfo, controlsSize);

		const Vec2f tlBox = Vec2f(sWidth/2 - imageSize.x - boxMargin, Maths::Max(10.0f, sHeight/2 - imageSize.y - infoSize.y/2 - controlsSize.y/2 - boxMargin));
		const Vec2f brBox = Vec2f(sWidth/2 + imageSize.x + boxMargin, sHeight/2 + imageSize.y + infoSize.y/2 + controlsSize.y/2);
		
		//draw box
		GUI::DrawButtonPressed(tlBox, brBox);
		
		if (justJoined)
		{
			//welcome text
			const string intro = Trans::Welcome+" Gingerbeard."; //last editor
			
			Vec2f introSize;
			GUI::GetTextDimensions(intro, introSize);
			GUI::SetFont("normal");
			GUI::DrawTextCentered(intro, Vec2f(sWidth/2, tlBox.y + 20), tipsColor);
		} 
		
		if (!justJoined || gameTime % 90 > 30)
		{
			//helptoggle
			const string helpToggle = ">> "+Trans::ChangePage+" <<";
			
			Vec2f toggleSize;
			GUI::GetTextDimensions(helpToggle, toggleSize);
			
			GUI::SetFont("menu");
			GUI::DrawTextCentered(helpToggle, Vec2f(sWidth/2, tlBox.y + 40), tipsColor);
			if (page1)
				GUI::DrawTextCentered(helpToggle, Vec2f(sWidth/2, tlBox.y + 2*imageSize.y + boxMargin + 25), tipsColor);
		}
		
		if (page1)
		{
			//PAGE 1
			const string shiprektVersion = "Shiprekt++ "+Trans::Version+" 1.51.1\n";
			const string lastChangesInfo = Trans::LastChanges+":\n"
			+ "- 4-27-2022 - By Gingerbeard\n"
			+ "  * Weapons only refill ammunition if they aren't being fired.\n"
			+ "  * Tweaked the harvester to be weaker.\n"
			+ "  * Disabled anti-ram.\n"
			+ "  * Bombs' power stacks with nearby bombs! Boom!\n"
			+ "  * Enemy miniships can dock on your mothership! Watch out.\n"
			+ "  * Refill is faster for miniships, but slower for your mothership.\n"
			+ "  * Fixed a problem where players couldn't direct where they were swimming.\n"
			+ "  * Docking won't push the other ship if your ship is smaller (easier miniship docking).\n";
			
			GUI::SetFont("menu");
			Vec2f lastChangesSize;
			GUI::GetTextDimensions(lastChangesInfo, lastChangesSize);
		
			const Vec2f tlBoxJustJoined = Vec2f(sWidth/2 - imageSize.x - boxMargin,  Maths::Max(10.0f, sHeight/2 - imageSize.y - lastChangesSize.y/2));
			//Vec2f brBoxJustJoined = Vec2f(sWidth/2 + imageSize.x + boxMargin, sHeight/2 + imageSize.y + lastChangesSize.y/2);
			
			GUI::SetFont("thick font");
			GUI::DrawText(shiprektVersion, Vec2f(sWidth/2 - imageSize.x, tlBoxJustJoined.y + 2*imageSize.y), tipsColor);
			
			GUI::SetFont("menu");
			GUI::DrawText(lastChangesInfo, Vec2f(sWidth/2 - imageSize.x, tlBoxJustJoined.y + 2*imageSize.y + boxMargin), tipsColor);
			
			//image
			GUI::DrawIconByName("$HELP$", Vec2f(sWidth/2 - imageSize.x, tlBox.y + boxMargin + 10));
			
			//captions
			if (g_locale != "en")
			{
				GUI::SetFont("normal");
				Vec2f ImagePos(sWidth/2 - imageSize.x, tlBox.y + boxMargin + 10);
				GUI::DrawTextCentered(Trans::Caption1, ImagePos + Vec2f(150,230), tipsColor);
				GUI::DrawTextCentered(Trans::Caption2, ImagePos + Vec2f(150,400), tipsColor);
				GUI::DrawTextCentered(Trans::Caption3, ImagePos + Vec2f(550,190), tipsColor);
				GUI::DrawTextCentered(Trans::Caption4, ImagePos + Vec2f(340, 30), tipsColor);
			}
		}
		else
		{
			//PAGE 2
			
			GUI::SetFont("thick font");
			
			GUI::DrawText(infoTitle, Vec2f(tlBox.x + boxMargin, tlBox.y + boxMargin + 20), tipsColor);
			GUI::DrawText(controlsTitle, Vec2f(tlBox.x + boxMargin, tlBox.y + boxMargin + 240), tipsColor);
			
			GUI::SetFont("menu");
			GUI::DrawText(textInfo, Vec2f(tlBox.x + boxMargin, tlBox.y + boxMargin + 60), tipsColor);
			GUI::DrawText(controlsInfo, Vec2f(tlBox.x + boxMargin, tlBox.y + boxMargin + 280), tipsColor);
			
			if (!v_fastrender)
			{
				const string lagTip = "<> "+Trans::FastGraphics+" <>";
				GUI::DrawTextCentered(lagTip, Vec2f(sWidth/2, tlBox.y + boxMargin *10), tipsColor);
			}
		}
	
		//hud icons
		Vec2f tl = getActorHUDStartPosition(null, 6);
	
		if (getLocalPlayerBlob() !is null && (getControls().getMouseScreenPos() - (tl + Vec2f(90, 125))).Length() > 200.0f)
		{
			GUI::SetFont("menu");
			GUI::DrawTextCentered("[ "+Trans::ClickIcons+" ]",  tl + Vec2f(90, -17 + Maths::Sin(gameTime/4.5f) * 2.5f), tipsColor);
			//GUI::DrawSplineArrow2D(tl + Vec2f(225, 7), tl + Vec2f(105, -12), tipsColor);
		}
		
		//Add social links
		makeWebsiteLink(Vec2f(brBox.x, 100.0f), Trans::Go_to_the+" Shiprekt Github", "https://github.com/Gingerbeard5773/shiprekt");
		makeWebsiteLink(Vec2f(brBox.x, 150.0f), Trans::Go_to_the+" Shiprekt Discord", "https://discord.gg/V29BBeba3C");
	}
}

void makeWebsiteLink(Vec2f pos, string text, string website)
{
	const f32 height = 40;

	GUI::SetFont("menu");
	
	Vec2f dim;
	GUI::GetTextDimensions(text, dim);

	const f32 width = dim.x + 20;

	const Vec2f tl = Vec2f(getScreenWidth() - 10 - width - pos.x, pos.y);
	const Vec2f br = Vec2f(getScreenWidth() - 10 - pos.x, tl.y + height);

	CControls@ controls = getControls();
	const Vec2f mousePos = controls.getMouseScreenPos();

	const bool hover = (mousePos.x > tl.x && mousePos.x < br.x && mousePos.y > tl.y && mousePos.y < br.y);

	if (hover)
	{
		GUI::DrawButton(tl, br);

		if (controls.isKeyJustPressed(KEY_LBUTTON))
		{
			Sound::Play("option");
			OpenWebsite(website);
			showHelp = !showHelp;
		}
	}
	else
	{
		GUI::DrawPane(tl, br, 0xffcfcfcf);
	}

	GUI::DrawTextCentered(text, Vec2f(tl.x + (width * 0.50f), tl.y + (height * 0.50f)), 0xffffffff);
}

//failback for F1 key problems
bool onClientProcessChat(CRules@ this, const string &in textIn, string &out textOut, CPlayer@ player)
{	
	if (player !is null && player.isMyPlayer() && textIn == "!help")
	{
		showHelp = !showHelp;
		justJoined = false;
	}
	
	return true;
}
