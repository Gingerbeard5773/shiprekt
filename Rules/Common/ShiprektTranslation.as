// Gingerbeard @ 3/5/2022
//translated strings for shiprekt

//works by seperating each language by token '\\'
//in order- english, russian, portegeuse, polish, french
//"Translation\\перевод\\tradução\\tłumaczenie\\Traduction"

//Translators: GoldenGuy, Moz, Space Luke, Nova & Gizmodious

//TODO:
// Perhaps switch to a dictionary once kag updates to newer AS version
// Could also seperate languages by namespaces and then call from namespaces from namespaces depending on locale, this would enable the ability to seperate languages by file

///TODO TRANSLATIONS:
/// Wins!   #used in context of a winning team
/// Weapons refill very slowly.    #help menu tip
/// Dock on a mothership to refill spent ammunition.
/// 
/// Wheel Joint   #name for wheel joint block
/// A wheel joint, it can rotate connected parts of a ship to face different directions   #wheel desc
/// Plank   #plank 
/// Acts as a one way exit. Collides with projectiles and blocks only on the front side.   #plank desc
///
/// #self destruct vote
/// Your mothership is blowing up!
/// Mothership self-destruction vote failed!
/// Enable self-destruction
/// Self-Destruct Mothership
/// Vote to blow up your mothership
/// Blow up!
///
/// #game tips
/// Weapons on a miniship refill faster than weapons on a mothership.
/// Watch your shooting! Weapons can only refill if they aren't being fired!
/// A direct bomb hit to a Core can deal significant damage!
/// Refill a weapon's ammunition by docking with your mothership or station.
/// Miniships can dock not just with their own mothership, but enemy motherships as well!
/// Bombs stack with power when placed together.

string Translate(string words)
{
	string[]@ tokens = words.split("\\");
	if (g_locale == "en") //english
		return tokens[0];
	if (g_locale == "ru") //russian
		return tokens[1];
	if (g_locale == "br") //porteguese
		return tokens[2];
	if (g_locale == "fr") //french
		return tokens[4];
	if (g_locale == "pl") //polish
		return tokens[3];
	
	return tokens[0];
}

namespace Trans
{
	const string
	
	//Generic
	Captain       = Translate("Captain\\Капитан\\Capitão\\Kapitan\\Capitaine"),
	Total         = Translate("Total\\Всего\\Total\\Łączny\\Totale"),
	//Wooden        = Translate("Wooden\\Деревянный\\de madeira\\Drewniany\\en bois"),
	Booty         = Translate("Booty\\Добыча\\Saque\\Łup\\Trésor"),
	Core          = Translate("Core\\Сердце\\Núcleo\\Rdzeń\\Noyaux"),
	Mothership    = Translate("Mothership\\Главный корабль\\Navio-mãe\\Mothership\\Navire-mère"),
	Miniship      = Translate("Miniship\\Мини корабль\\Mini-navio\\Ministatek\\Navire"),
	Ship          = Translate("Ship\\Корабль\\Navio\\Statek\\Bateau"),
	Speed         = Translate("Speed\\Скорость\\Velocidade\\Prędkość\\Vitesse"),
	Weight        = Translate("Weight\\Вес\\Peso\\Ciężar\\Poids"),
	Team          = Translate("Team\\Комманда\\Time\\Zespół\\Équipe"),
	
	//Hud
	CoreHealth    = Translate("Team Core Health\\Здоровье сердца комманды\\Vida do Núcleo do Time\\Podstawowa kondycja zespołu\\Vie du Noyaux de votre Équipe"),
	Relinquish    = Translate("Click to relinquish ownership of a nearby seat\\Нажми чтобы завладеть ближайшим креслом\\Clique para renunciar a liderança de um assento próximo\\Kliknij, aby zrzec się prawa własności do pobliskiej siedziby\\Clic pour relacher votre possession d'un siège proche"),
	Transfer      = Translate("Click to transfer {booty} Booty to\\Нажми чтобы отдать {booty} Добычу\\Clique para transferir {booty} Saque para a\\Kliknij, aby przenieść {booty} Booty do\\Clic pour transféré du (trésor) Trésor à"),
	ShipCrew      = Translate("your Mothership Crew\\всем в своей комманде\\tripulação do seu Navio-mãe\\Załoga statku-matki\\votre Équippage sur le Navire-mère"),
	Bases         = Translate("Captured Bases\\Захваченные базы\\Bases Capturadas\\Zdobyte bazy\\Base Capturées"),
	FreeMode      = Translate("Free Building Mode - Waiting for players to join.\\Режим свободного строительства - Ждём пока присоединятся люди.\\Modo de Construção Livre - Aguardando a entrada de jogadores.\\Darmowy tryb budowania - Oczekiwanie na dołączenie graczy.\\Construction Libre - Attender que des joueurs arrivent"),
	KillSharks    = Translate("Kill sharks to gain some Booty\\Убивай акул для получения Добычи\\Mate tubarões para ganhar um pouco de Saque\\Zabij rekiny, aby zdobyć trochę łupów\\Tuer des requins pour gagner du Trésor"),
	CouplingRDY   = Translate("Couplings ready.\nPress [{key}] to take.\\Соединения готовы. \nНажми [{key}] чтобы создать.\\Acoplamentos prontos.\nPressione [{key}] para pegar.\\Złącza gotowe.\nNaciśnij [{key}], aby wziąć.\\Raccords prêts"),
	ShipAttack    = Translate("YOUR MOTHERSHIP IS UNDER ATTACK!!\\ВАШ ГЛАВНЫЙ КОРАБЛЬ ПОД АТАКОЙ!!\\SEU NAVIO-MÃE ESTÁ SOB ATAQUE!!\\TWÓJ STATEK-MATKA JEST ATAKOWANY!!\\VOTRE NAVIRE-MÈRE EST ATTAQUÉ!!"),
	Abandon       = Translate("> You are your Team's Captain <\n\nDon't abandon the Mothership!\\> Вы капитан комманды <\n\nНе покидайте корабль!\\> Você é o Capitão do seu Time <\n\nNão abandone o Navio-mãe!\\> Jesteś kapitanem swojego zespołu <\n\nNie porzucaj statku-matki!\\> Vous êtes le Capitaine de votre Équipe <\n\nN'abandonnez pas le Navire-mère!"),
	ReducedCosts  = Translate("Costs reduced during warmup\\Цены уменьшены во время подготовки\\Custos reduzidos durante o aquecimento\\Zmniejszone koszty podczas rozgrzewki\\Coûts réduits pendant la phase de préparation"),
	Reclaiming    = Translate("You are reclaiming someone else's property. Progress will be slower\\Вы отбираете чужую собственность. Прогресс будет медленнее\\Você está reivindicando a propriedade de outra pessoa. O progresso será mais lento\\Odzyskujesz cudzą własność. Postęp będzie wolniejszy\\Vous recyclez la propriété de quelqu'un d'autre. Le recyclage sera plus lent."),
	WarmupPlacing = Translate("You can only place Couplings and Repulsors on the Mothership during warm-up\\Вы можете размещать соединения и репульсоры на материнском корабле только во время подготовки.\\Você só pode colocar Acoplamntos e Repulsores no Navio-mãe durante o aquecimento\\Sprzęgła i repulsory można umieszczać na statku-matce tylko podczas rozgrzewki\\Vous ne pouvez placer des Raccords et des Répulseurs sur le Navire-mère que pendant la phase de préparation."),
	ReleaseCoup1  = Translate("Use left click to release them individually or right click to release all the couplings you've placed\\Используйте левый щелчок, чтобы отсоединить их по отдельности, или щелчок правой кнопкой мыши, чтобы отсоединить все соединения, которые вы установили.\\Use o botão esquerdo para soltá-los individualmente ou botão direito para soltar todos os acoplamentos que você colocou\\Użyj lewego przycisku myszy, aby zwolnić je pojedynczo lub kliknij prawym przyciskiem myszy, aby zwolnić wszystkie umieszczone złącza\\Clic gauche pour les relacher individuellement ou clic droit pour relacher tous les raccords que vous avez placé."),
	ReleaseCoup2  = Translate("PRESS AND HOLD SPACEBAR TO RELEASE COUPLINGS\\НАЖМИТЕ И УДЕРЖИВАЙТЕ ПРОБЕЛ, ЧТОБЫ ОТСОЕДИНИТЬ СОЕДИНЕНИЯ\\PRESSIONE E SEGURE A BARRA DE ESPAÇO PARA LIBERAR ACOPLAMENTOS\\NACIŚNIJ I PRZYTRZYMAJ SPACJĘ, ABY ZWOLNIĆ ŁĄCZNIKI\\MAINTENIR LA BARRE ESPACE POUR RELACHER LES RACCORDS"),
	FlaksLimit    = Translate("Flaks limit reached!\\Достигнут лимит зенитной артиллерии!\\Limite de antiaéreos alcançado!\\Osiągnięto limit flaków!\\Limite de Flaks atteinte!"),
	BootyTransW   = Translate("Click to transfer Booty (enabled after warm-up)\\Нажмите, чтобы передать Добычу (включается после подготовки)\\Clique para transferir Saque (habilitado após aquecimento)\\Kliknij, aby przenieść Booty (włączone po rozgrzewce)\\Clic pour transférer du Trésor (seulement après la phase de préparation)"),
	BootyTransM   = Translate("Click to transfer Booty ({booty} Booty minimum)\\Нажмите, чтобы передать Добычу ({booty} минимум)\\Clique para transferir Saque ({booty} Saque mínimo)\\Kliknij, aby przenieść łup (minimum {booty})\\Clic pour transférer du Trésor ({booty} Trésor minimum)"),
	FindNewTip    = Translate("Press Right Click to find another tip\\Нажмите правую кнопку мыши, чтобы найти другой совет\\Pressione Botão Direito para achar outra dica\\Naciśnij prawym przyciskiem myszy, aby znaleźć kolejną wskazówkę\\Clic droit pour avoir un autre conseil"),
	Respawn       = Translate("Respawning...\\Возрождение...\\Renascendo...\\Odradzanie...\\Résurrection..."),
	RespawnSoon   = Translate("Respawning soon...\\Скоро возрождение...\\Renascendo em breve...\\Odrodzenie wkrótce...\\Résurrection proche..."),
	
	//Votes
	Vote          = Translate("Vote\\Голосование\\Vote\\Głosować\\Vote"),
	SuddenDeath   = Translate("Sudden Death\\Внезапная смерть\\Morte Súbita\\Nagła śmierć\\Mort Subite"),
	Freebuild     = Translate("Freebuild\\Свободное строительство\\Construção Livre\\Tryb swobodnej budowy\\Construction libre"),
	FreebuildMode = Translate("Free-build mode\\Режим свободнго строительства\\Modo de Construção Livre\\Tryb swobodnej budowy\\Mode Construction-Libre"),
	SpeedThings   = Translate("Speed things up!\\Ускорьте дело!\\Acelere as coisas!\\Przyspiesz wszystko!\\On accélère les choses!"),
	ActiveDeath   = Translate("Sudden Death is already active!\\Внезапная смерть уже активирована!\\Morte Súbita já está ativa!\\Nagła śmierć jest już aktywna!\\Mort Subite est déjà activé!"),
	DeathStarted  = Translate("Sudden Death Started! Focus on destroying your enemies' engines so they can't escape the Whirlpool!\\Началась внезапная смерть! Сосредоточьтесь на уничтожении двигателей ваших врагов, чтобы они не смогли выбраться из Водоворота!\\Morte Súbita Começou! Foque em destruir os motores de seus inimigos para que eles não consigam escapar do Redemoinho!\\Rozpoczęła się nagła śmierć! Skoncentruj się na niszczeniu silników wrogów, aby nie mogli uciec z Whirlpool!\\La mort subite a commencé! Concentrez-vous sur la destruction des moteurs de vos ennemis afin qu'ils ne puissent pas échapper le Tourbillion!"),
	AttackReward  = Translate("Players get a huge Booty reward bonus from direct attacks.\\Игроки получают огромный бонус Добычи за прямые атаки.\\Jogadores ganham uma enorme recompensa bonus de Saque com ataques diretos.\\Gracze otrzymują ogromną premię za łupy z bezpośrednich ataków.\\Les joueurs obtiennent un énorme gain de Trésor grâce aux attaques directes."),
	WeightNote    = Translate("Note: removing heavy blocks from your ship doesn't help! Heavier ships are pulled less by the Whirlpool\\Примечание: удаление тяжелых блоков с вашего корабля не помогает! Водоворот меньше тянет более тяжелые корабли\\Aviso: remover blocos pesados do seu navio não ajuda! Navios mais pesados são menos puxados pelo Redemoinho\\Uwaga: usuwanie ciężkich bloków ze statku nie pomaga! Cięższe statki są mniej ciągnięte przez Whirlpool\\Note: enlever des blocs lourds de votre Navire n'aide pas! Les Navire plus lourds sont moins tirés par le Tourbillion"),
	BuildEnabled  = Translate("Free building mode enabled. Blocks are free! Start a new free building mode vote to return to the normal game mode\\Включен режим свободного строительства. Блоки бесплатно! Начните новое голосование за свободное строительство, чтобы вернуться к обычному игровому режиму.\\Modo de construção livre habilitado. Blocos são grátis! Inicie uma nova votação de modo de construção livre para retornar ao modo de jogo normal\\Włączony tryb swobodnego budowania. Bloki są darmowe! Rozpocznij nowy darmowy głos w trybie budowania, aby powrócić do normalnego trybu gry\\Mode Construction-Libre activé. Les blocs sont gratuits! Commencez un nouveau vote 'Mode Construction-Libre' pour revenir au mode de jeu normal"),
	BuildDisabled = Translate("Free building mode disabled. Start a new free building mode vote to return to the free building game mode\\Режим свободного строительства отключен. Начните новое голосование за свободное строительство, чтобы вернуться в режим бесплатной игры.\\Modo de construção livre desabilitado. Inicie uma nova votação de modo de construção livre para retornar ao modo de jogo de construção\\ryb swobodnego budowania wyłączony. Rozpocznij nowy darmowy głos w trybie budowania, aby powrócić do darmowego trybu budowania\\Mode Construction-Libre désactivé. Commencez un nouveau vote 'Mode Construction-Libre' pour revenir au mode de jeu de construction-libre"),
	SwitchTime    = Translate("Time left to switch again:\\Осталось времени, чтобы снова переключиться:\\Tempo restante para mudar novamente:\\Pozostały czas na ponowne przełączenie:\\Temps restant pour rechanger:"),
	Minutes       = Translate("minutes\\минут\\minutos\\minuty\\minutes"),
	TooLong       = Translate("Match taking too long?\\Матч длится слишком долго?\\Partida demorando demais?\\Mecz trwa zbyt długo?\\Match trop long?"),
	Enable        = Translate("Enable\\Включить\\Habilitar\\Włączać\\Activer"),
	Disable       = Translate("Disable\\Выключить\\Desabilitar\\Wyłączyć\\Désactiver"),
	Failed        = Translate("Failed\\Неудача\\Falhou\\Przegrany\\Échoué"),
	
	//Help menu
	Welcome       = Translate("Welcome to Shiprekt! Made by Strathos, Chrispin, and various other community members.\nLast changes and fixes by\\Добро пожаловать в Shiprekt! Мод создан Strathos, Chrispin и другими членами сообщества.\n Последние изменения и исправления:\\Bem-vindo ao Shiprekt! Feito por Strathos, Chrispin e diversos membros da comunidade.\nÚltimas mudanças e correções por\\Witamy w Shiprekt! Wykonane przez Strathosa, Chrispina i różnych innych członków społeczności.\nOstatnie zmiany i poprawki autorstwa\\Bienvenue dans Shiprekt! Créé pas Strathos, Chrispin et divers autres membres de la communauté.\nDernièrs changements et corrections par"),
	Version       = Translate("Version\\Версия\\Versão\\Wersja\\Version"),
	LastChanges   = Translate("Last Changes\\Последние изменения\\Últimas mudanças\\Ostatnie zmiany\\Derniers changements"),
	Go_to_the     = Translate("Go to the\\Перейти\\Vá para o\\Przejdź do\\Allez à l"),
	ChangePage    = Translate("Press Left Click to change page | F1 to toggle this help Box (or type !help)\\Нажмите ЛКМ чтобы сменить страницу | F1 чтобы открыть это окно (или введите !help в чате)\\Pressione o Botão Esquerdo para mudar de página | F1 para habilitar essa Caixa de ajuda (ou digite !help)\\Naciśnij przycisk left click, aby zmienić | strony F1, aby przełączyć tę pomoc Box (lub wpisz !help)\\Clic gauche pour changer de page | F1 pour afficher cette fenêtre d'aide (ou taper !help)"),
	ClickIcons    = Translate("Click these Icons for Control and Booty functions!\\Нажмите эти иконки для управления и функций Добычи\\Clique nesses Ícones para funções de Controle e Saque!\\Kliknij te ikony, aby uzyskać funkcje sterowania i łupów!\\Clic ces Icônes pour les Contrôles et les fonctions du Trésor"),
	FastGraphics  = Translate("Having lag issues? Turn on Faster Graphics in KAG video settings for possible improvement!\\Проблемы с лагами? Включите Faster Graphics в настройках видео для возможного улучшения!\\Vivenciando problemas de rede? Habilite os Gráficos Rápidos nas configurações de vídeo do KAG para uma possível melhora!\\Masz problemy z opóźnieniami? Włącz Szybszą grafikę w ustawieniach wideo KAG, aby uzyskać możliwą poprawę!\\Problèmes de lag? Activé l'option 'Faster Graphics' dans les paramètres vidéo de KAG pour une possible amélioration!"),
	Caption1      = Translate("Use Propellers and Couplings to build Torpedoes\\Используйте пропеллеры и Соединения для постройки торпед\\Use Hélices e Acoplamentos para construir Torpedos\\Użyj śmigieł i sprzęgieł do budowy torped\\Utilisez des Hélices et des Raccords pour construire des Torpilles"),
	Caption2      = Translate("Couplings let you dock with your Mothership\\Соединения позволяют вам стыковаться с вашим Главным кораблём\\Acoplamentos lhe permitem atracar com seu Navio-mãe\\Złącza umożliwiają dokowanie do statku-matki\\Les Raccords vous permettent de vous accrochez à votre Navire-mère"),
	Caption3      = Translate("Use Couplings to build new ships\\Используйте Соединения для постройки новых кораблей\\Use Acoplamentos para construir novos navios\\Użyj sprzęgieł do budowy nowych statków\\Utilisez des Raccords pour construire de nouveaux bateaux"),
	Caption4      = Translate("Navigate to Xs to gather Booty\\Перейдите к Xs, чтобы собрать добычу\\Navegue até Xs para coletar Saque\\Przejdź do Xs, aby zebrać Łup\\Naviguez jusqu'aux X pour rassembler des trésors"),
	
	//How to play
	HowToPlay     = Translate("How to Play\\Как играть\\Como Jogar\\Jak grać\\Comment jouer"),
	GatherX       = Translate("Gather Xs for Booty. Xs have more Booty the closer they spawn to the map center.\\Стойте на Х-ах для Добычи. Х-ы ближе к центру карты дают больше Добычи.\\Colha Xs por Saque. Quanto mais perto do centro do mapa os Xs nascem, mais Saque eles têm.\\Zbierz Xs dla Booty. Xs mają więcej Łupów, im bliżej odradzają się do centrum mapy.\\Aller aux Xs pour gagner du Trésor. Plus les Xs sont proches du centre de la carte, plus ils auront de Trésor."),
	EngineWeak    = Translate("Engines are very weak! Use wood hull blocks as armor or Miniships will eat through them!\\Двигатели очень слабые! Используй деревянные каркасные блоки для защиты корабля!\\Motores estão muito fracos! Use blocos de casco de madeira como armadura ou Mini-navios irão devorar tudo!\\Silniki są bardzo słabe! Użyj drewnianych bloków kadłuba jako zbroi lub ministatki zjedzą przez nie!\\Les moteurs sont très faibles! Placer des blocs de bois pour les protéger ou les bateaux ennemis les détruiront facilement."),
	YieldX        = Translate("Xs yield little Booty, but weapons reward a lot per hit to enemy ships!\\Х-ы дают мало Добычи, но стрельба по вражеским кораблям гораздо больше!\\Xs rendem pouco Saque, mas as armas recompensam muito por acerto aos navios inimigos!\\Xs dają mały łup, ale broń nagradza dużo za trafienie wrogich statków!\\Les Xs donnent peu de Trésor, mais tirer sur les bateaux ennemis donne plus de Trésor!"),
	Docking       = Translate("Couplings stick to your Mothership on collision. Use them to dock with it.\\Соединения прилипают к Главному кораблю при соприкосновении с ним. Используй их для стыковки.\\Os acoplamentos aderem ao seu Navio-mãe em caso de colisão. Use-os para atracar.\\Sprzęgła przyklejają się do twojego statku-matki podczas kolizji. Użyj ich, aby zadokować z nim.\\Les Raccords s'attachent à votre Navire-mère en cas de collision. Utilisez-les pour vous y ancrer."),
	OtherTips     = Translate("Other Tips\\Прочие подсказки\\Outras Dicas\\Inne wskazówki\\Autres conseils"),
	Leaderboard   = Translate("The higher a team is on the leaderboard, the more Booty you get for attacking them.\\Чем выше комманда в таблице, тем больше Добычи получишь за атаку на них.\\Quanto mais alto um time está na tabela de classificação, mais Saque você ganhará ao atacá-los.\\Im wyżej drużyna znajduje się w tabeli liderów, tym więcej łupów dostajesz za atakowanie jej.\\Plus une équipe est élevée dans le classement, plus vous obtiendrez de Trésor en les attaquant."),
	BlockWeight   = Translate("Each block has a different weight. The heavier, the more they slow your ship down.\\Каждый блок имеет разный вес. Чем тяжелее твой корабль, тем медленнее он будет.\\Cada bloco tem um peso diferente. Quanto mais pesado for, mais devagar seu navio ficará.\\Każdy blok ma inną wagę. Im cięższy,  tym bardziej spowalniają twój statek.\\Chaque bloc a un poids différent. Plus ils sont lourds, plus ils ralentissent votre navire."),
	
	//Controls
	Controls      = Translate("Controls\\Управление\\Controles\\Formantów\\Contrôles"),
	Hold          = Translate("<hold>\\<зажми>\\<segure>\\<hold>\\<tenir>"),
	GetBlocks     = Translate("get Blocks while aboard your Mothership. Produces couplings while in a seat.\\взять блок когда на главном корабле. Создаёт соединеие когда в кресле.\\pegar Blocos enquanto estiver a bordo de seu Navio-mãe. Produzir acoplamentos enquanto estiver em um assento.\\zdobądź Bloki na pokładzie statku-matki. Wytwarza sprzęgła w fotelu.\\prenez des blocs à bord de votre Navire-mère. Produit des raccords dans un siège."),
	RotateBlocks  = Translate("rotate blocks while building or release couplings when sitting.\\повернуть блок когда строишь или убирает соединения когда в кресле.\\rotacionar blocos enquanto constrói ou soltar acoplamentos enquanto estiver sentado.\\obracaj bloki podczas budowania lub zwalniania sprzęgieł podczas siedzenia.\\faites pivoter les blocs lors de la construction ou relacher les raccords lorsque vous êtes assis."),
	Punch         = Translate("punch when standing or fire Machineguns when sitting.\\удар когда стоишь или выстрел из пулеметов когда сидишь.\\socar enquanto estiver de pé ou atirar com Metralhadoras enquanto estiver sentado.\\uderzać podczas stania lub strzelać z karabinów maszynowych podczas siedzenia.\\frapper quand vous êtes debout ou tirer les armes à feu quand vous êtes assis."),
	FireGun       = Translate("fire handgun or fire Cannons when sitting.\\выстрел пистолета или выстрел из пушек когда сидишь.\\atirar com uma arma de fogo ou atirar com Canhões enquanto estiver sentado.\\strzelaj z pistoletu lub strzelaj z armat podczas siedzenia.\\tirer avec votre arme ou faite feu avec les Canons quand vous êtes assis."),
	PointEmote    = Translate("show point emote.\\показать эмоцию-указатель.\\mostrar o emote de apontar.\\pokaż emotkę punktu.\\affiche l'emote pointent du doigt."),
	Zoom          = Translate("zoom in/out.\\приблизить/отдалить\\dar zoom para dentro/fora.\\powiększanie/pomniejszanie.\\zoom avant/arrière."),
	AccessTools   = Translate("access the tools menu.\\открыть меню инструментов.\\acessar o menu de ferramentas.\\przejdź do menu narzędzi.\\accéder au menu des outils."),
	ScaleCompass  = Translate("scale the Compass 2x. Tap to toggle. Hold for a quick view.\\увеличит компас в 2 раза. Нажми для удержания или зажми для временного просмотра.\\escalar a Bússola 2x. Clique para habilitar. Sgure para uma olhada breve.\\skaluj Kompas 2x. Dotknij, aby przełączyć. Przytrzymaj, aby wyświetlić szybki widok.\\aggrandit la Boussole 2x. Appuyer pour basculer. Maintenez pour une vue rapide."),
	Strafe        = Translate("toggle engines strafe mode\\переключить режим стрейфа двигателей\\habilitar o modo strafe dos motores\\włącz tryb strafe silników\\basculer en mode mitraillage des moteurs"),
	
	//Build menu
	Components    = Translate("Components\\Компоненты\\Componentes\\Składniki\\Composants"),
	AmmoCap       = Translate("AmmoCap\\Боеприпасы\\Munição\\Amunicja\\MunitionsCap"),
	WarmupWarning = Translate("Weapons are enabled after the warm-up time ends\\Оружие включается после окончания подготовки\\Armas são habilitadas depois que o tempo do aquecimendo acabar\\Bronie są włączone po zakończeniu czasu rozgrzewania\\Les armes sont activées après la fin de la préparation"),
	BuyAgain      = Translate("Press the inventory key to buy again.\\Нажмите клавишу инвентаря, чтобы купить снова.\\Pressione a tecla de inventário para comprar novamente.\\Naciśnij klawisz ekwipunku, aby kupić ponownie.\\Appuyez sur la touche de l'inventaire pour acheter à nouveau."),
	Seat          = Translate("Seat\\Кресло\\Assento\\Siedzenie\\Siège"),
	Engine        = Translate("Standard Engine\\Стандартный Двигатель\\Motor Padrão\\Standardowy silnik\\Moteur Standard"),
	RamEngine     = Translate("Ram Engine\\Быстрый Двигатель\\Motor de Aríete\\Silnik Baran\\Moteur Fragile"),
	Coupling      = Translate("Coupling\\Соединение\\Acoplamento\\Sprzęg\\Raccords"),
	Hull          = Translate("Wooden Hull\\Каркас\\Casco de madeira\\Kadłub\\Coque"),
	Platform      = Translate("Wooden Platform\\Платформа\\Plataforma de madeira\\Podest\\Plate-forme"),
	Door          = Translate("Wooden Door\\Дверь\\Porta de madeira\\Drzwi\\Porte"),
	//Piston        = Translate("Wooden Piston\\Поршень\\Pistão de madeira\\Tłok\\Piston"),
	Harpoon       = Translate("Harpoon\\Гарпун\\Harpão\\Harpun\\Harpon"),
	Harvester     = Translate("Harvester\\Ломатель\\Colheitadeira\\Żniwiarka\\Recycleur"),
	Patcher       = Translate("Patcher\\Чинитель\\Reparador\\Łatacz\\Réparateur"),
	//AntiRam       = Translate("Anti-Ram\\Анти-Таран\\Anti-Aríete\\Anty-Baran\\Anti-Frappe"),
	Repulsor      = Translate("Repulsor\\Репульсор\\Repulsor\\Repulsor\\Répulseur"),
	Ram           = Translate("Ram Hull\\Таран\\Aríete\\Baran\\Frappe"),
	Auxilliary    = Translate("Auxilliary Core\\Вспомогательное Сердце\\Núcleo Auxiliar\\Rdzeń pomocniczy\\Noyau auxiliaire"),
	Bomb          = Translate("Bomb\\Бомба\\Bomba\\Bomba\\Bombe"),
	PointDefense  = Translate("Point Defense\\Защитная турель\\Defesa de Ponto\\Obrona punktowa\\Anti-Projectiles"),
	FlakCannon    = Translate("Flak Cannon\\Зенитная Пушка\\Canhão Antiaéreo\\Działo\\Canon antiaérien"),
	Machinegun    = Translate("Machinegun\\Пулемёт\\Metralhadora\\Karabin maszynowy\\Mitrailleuse"),
	Cannon        = Translate("Cannon\\Пушка\\Canhão\\Armata\\Canon"),
	Launcher      = Translate("Missile Launcher\\Ракетная Установка\\Lança-Mísseis\\Wyrzutnia pocisków\\Lance-Missiles"),
	DecoyCore     = Translate("Decoy Core\\Фальшивое Сердце\\Núcleo de Distração\\Rdzeń wabika\\Noyau Leurre"),
	
	SeatDesc      = Translate("Use it to control your ship. It can also release and produce Couplings.\nBreaks on impact.\\Используйте его, чтобы управлять своим кораблем. Он также может освобождать и производить соединения.\nЛомается при ударе.\\Use-o para controlar seu navio. Ele Também pode liberar e produzir Acoplamentos.\nQuebra com impacto.\\Użyj go do kontrolowania swojego statku. Może również uwalniać i produkować sprzęgła.\nPrzerwy przy uderzeniu.\\Utilisez ceci pour contrôler votre Navire. Il peut également relacher et faire des raccords.\nCassent à l'impact."),
	EngineDesc    = Translate("A ship motor with some armor plating for protection.\\Корабельный мотор с броней для защиты.\\Um motor de navio com um pouco de blindagem para proteção.\\Silnik okrętowy z pewnym pancerzem dla ochrony.\\Un moteur de navire avec un peu d'armure pour protection."),
	RamEngineDesc = Translate("An engine that trades protection for extra power.\\Двигатель без защиты но с дополнительной мощностью.\\Um motor que troca proteção por potência extra.\\Silnik, który zamienia ochronę na dodatkową moc.\\Un moteur qui échange protection contre plus de puissance."),
	CouplingDesc  = Translate("A versatile block used to hold and release other blocks.\\Универсальный блок, используемый для удержания и освобождения других блоков.\\Um bloco versátil usado para segurar e soltar outros blocos.\\Uniwersalny blok służący do przytrzymywania i zwalniania innych bloków.\\Un bloc polyvalent utilisé pour tenir et libérer d'autres blocs."),
	WoodHullDesc  = Translate("A very tough block for protecting delicate components.\\Очень прочный блок для защиты хрупких блоков.\\Um bloco bem duro para proteger componentes delicados.\\Bardzo wytrzymały blok do ochrony delikatnych elementów.\\Un bloc très résistant pour protéger les composants plus délicats."),
	PlatformDesc  = Translate("A good quality wooden floor panel. Get that deck shining.\\Качественная деревянная панель для пола.\\Um painel de piso de madeira de boa qualidade. Deixe o convés brilhando.\\Dobrej jakości drewniany panel podłogowy. Spraw, aby ta talia lśniła.\\Un plancher en bois de bonne qualité. Décaliss moi la marde qu'ya sur ce criss de pont là!"),
	DoorDesc      = Translate("A wooden door. Useful for ship security.\\Деревянная дверь. Полезно для охраны корабля.\\Útil para a segurança do navio.\\Drewniane drzwi. Przydatny do ochrony statku.\\Une porte en bois. Utile pour la sécurité du navire."),
	//PistonDesc    = Translate("A piston. Can be used to push and pull segments of a ship.\\Поршень. Используется, чтобы толкать и тянуть сегменты корабля.\\Um pistão. Pode ser utilizado para empurrar e puxar segmentos de um navio.\\Tłok. Może być używany do pchania i ciągnięcia segmentów statku.\\Un piston. Peut être utilisé pour pousser et tirer des segments d'un navire."),
	HarpoonDesc   = Translate("A manual-fire harpoon launcher. Can be used for grabbing, towing, or water skiing!\\Гарпунная пусковая установка с ручным огнем. Может использоваться для захвата, буксировки или катания на водных лыжах!\\Um lançador de harpão de fogo manual. Pode ser utilizado para agarrar, rebocar ou esqui-aquático!\\Wyrzutnia harpunów ręcznego ognia. Może być używany do chwytania, holowania lub jazdy na nartach wodnych!\\Un tireur de harpon manuel. Peut être utilisé pour saisir, tracter ou faire du ski nautique!"),
	HarvesterDesc = Translate("An industrial-sized deconstructor that allows you to quickly mine resources from ship debris.\\Деконструктор промышленных размеров, позволяющий быстро добывать ресурсы из корабельных обломков.\\Um desconstrutor de tamanho industrial que permite extrair rapidamente recursos de detritos de navios.\\Dekonstruktor wielkości przemysłowej, który pozwala szybko wydobywać zasoby z gruzu statku.\\Un déconstructeur industriel qui vous permet d'extraire rapidement des ressources à partir de débris."),
	PatcherDesc   = Translate("Emits a regenerative beam that can repair multiple components at once.\\Излучает регенеративный луч, который может восстанавливать несколько блоков одновременно.\\Emite um feixe regenerativo que pode reparar múltiplos componentes de uma vez.\\Emituje wiązkę regeneracyjną, która może naprawiać wiele komponentów jednocześnie.\\Émet un laser régénératif qui peut réparer plusieurs composants à la fois."),
	//AntiRamDesc   = Translate("Can absorb and negate multiple ram components, however weak against projectiles.\\Может поглощать и блокировать несколько блоков Тарана, однако слаб против снарядов.\\Pode absorver e negar múltiplos componentes de aríete, entretanto é fraco contra projéteis.\\Może absorbować i negować wiele elementów barana, jednak słabych przeciwko pociskom.\\Peut absorber plusieurs composants de frappe, toutefois est faible contre les projectiles."),
	RepulsorDesc  = Translate("Explodes pushing blocks away. Can be triggered remotely or by impact. Activates in a chain.\\Взрывается, отталкивая блоки. Может запускаться дистанционно или ударом. Активируется по цепочке.\\Explode empurrando blocos para longe. Pode ser acionado remotamente ou por impacto. Ativa em uma cadeia.\\Wybucha odpychając bloki. Może być wyzwalany zdalnie lub przez uderzenie. Aktywuje się w łańcuchu.\\Explose en repoussant des blocs. Peut être déclenché à distance ou par impact. S'active en chaîne."),
	RamDesc       = Translate("A rigid block that fractures on contact with other blocks. Will destroy itself as well as the block it hits.\\Жесткий блок, который ломается при контакте с другими блоками. Уничтожает себя, а также блок, в который попадает.\\Um bloco rígido que fratura em contato com outros blocos. Destruirá a si mesmo, assim como o bloco que atingir.\\Sztywny blok, który pęka w kontakcie z innymi blokami. Zniszczy siebie, a także blok, w który uderzy.\\Un bloc rigide qui se fracture au contact d'autres blocs. Se détruira avec le bloc qu'il frappe."),
	AuxillDesc    = Translate("Similar to the Mothership core. Very powerful - gives greater independence to support ships.\\Подобно Сердцу главного корабля. Очень мощный - дает большую независимость мини-кораблям.\\Semelhante ao núcleo do Navio-mãe. Muito poderoso - fornece maior independência para navios de suporte.\\Podobny do rdzenia Statku-Matki. Bardzo potężny - daje większą niezależność do wspierania statków.\\Similaire au noyau de Navire-mère. Très puissant - donne une plus grande indépendance pour soutenir les navires."),
	BombDesc      = Translate("Explodes on contact. Very useful against Solid blocks.\\Взрывается при контакте. Очень полезно против твёрдых блоков.\\Explode em contato. Muito útil contra blocos Sólidos.\\Wybucha w kontakcie. Bardzo przydatny przeciwko blokom solidnym.\\Explose au contact. Très utile contre les blocs solides."),
	PointDefDesc  = Translate("A short-ranged automated defensive turret. Neutralizes airborne projectiles such as flak.\\Автоматическая оборонительная турель ближнего действия. Нейтрализует летающие снаряды, такие как снаряды зенитных пушек.\\Uma torre de defesa automatizada de curta distância. Neutraliza projéteis no ar como um antiaéreo.\\Zautomatyzowana wieża obronna o krótkim zasięgu. Neutralizuje pociski unoszące się w powietrzu, takie jak.\\Une tourelle défensive automatisée à courte portée. Neutralise les projectiles aériens comme ceux des Canon antiaérien."),
	FlakDesc      = Translate("A long-ranged automated defensive turret that fires explosive shells with a proximity fuse.\\Автоматизированная защитная турель дальнего действия, стреляющая разрывными снарядами с взрывателем дальности.\\Uma torre de defesa automatizada de longa distância que dispara projéteis explosivos com um fusível de proximidade.\\Zautomatyzowana wieża obronna dalekiego zasięgu, która wystrzeliwuje pociski wybuchowe z zapalnikiem zbliżeniowym.\\Une tourelle défensive automatisée à longue portée qui tire des obus explosifs avec un fusible de proximité."),
	MGDesc        = Translate("A fixed rapid-fire, lightweight, machinegun that fires high-velocity projectiles.\nEffective against engines.\\Неподвижный скорострельный легкий пулемет, стреляющий высокоскоростными снарядами.\nЭффективен против двигателей.\\Uma metralhadora fixa leve e de alta cadência que dispara projéteis de alta velocidade.\nEficaz contra motores.\\Stały szybkostrzelny, lekki karabin maszynowy, który strzela pociskami o dużej prędkości.\nSkuteczny przeciwko silnikom.\\Une mitrailleuse fixe légère à tir rapide qui tire des projectiles à grande vitesse.\nEfficace contre les moteurs."),
	CannonDesc    = Translate("A fixed cannon that fires momentum-bearing armor-piercing shells.\\Стационарная пушка, которая стреляет бронебойными снарядами с импульсом.\\Um canhão fixo que dispara projéteis perfurantes com impulso.\\Stałe działo, które wystrzeliwuje pociski przeciwpancerne z pędem.\\Un canon fixe qui tire des obus perforants."),
	LauncherDesc  = Translate("A fixed tube that fires a slow missile with short-ranged guidance.\nVery effective against armored ships.\\Неподвижная труба, стреляющая медленной ракетой с малой дальностью наведения.\nОчень эффективна против бронированных кораблей.\\Um tubo fixo que dispara um míssil lento com orientação de curto alcance.\\Stała rura, która wystrzeliwuje powolny pocisk z naprowadzaniem na krótki dystans.\nBardzo skuteczny przeciwko okrętom pancernym.\\Un tube fixe qui tire un missile lent avec un guidage à courte portée.\nTrès efficace contre les navires extrêmement protégé."),
	DecoyCoreDesc = Translate("A fake core to fool enemies. Replaces the Mothership on the compass.\\Фальшивое сердце, чтобы одурачить врагов. Заменяет главное сердце на компасе.\\Um núcleo falso para enganar inimigos. Substitui o Navio-mãe na bússola.\\Fałszywy rdzeń do oszukiwania wrogów. Zastępuje statek macierzysty na kompasie.\\Un faux noyau pour tromper les ennemis. Remplace le Navire-mère sur la boussole."),
	
	//Tools
	ToolsMenu     = Translate("Tools Menu\\Меню инструментов\\Menu de Ferramentas\\Menu narzędzi\\Menu des Outils"),
	Pistol        = Translate("Pistol\\Пистолет\\Pistola\\Pistolet\\Pistolet"),
	PistolDesc    = Translate("A basic, ranged, personal defense weapon.\\Обычное средство персональной защиты дальнего действия.\\Uma arma básica de defesa pessoal à distância.\\Podstawowa, dystansowa, osobista broń obronna.\\Une arme de défense personnelle basique à distance."),
	Deconstructor = Translate("Deconstructor\\Деконструктор\\Desconstrutor\\Dekonstruktor\\Déconstructeur"),
	DeconstDesc   = Translate("A tool that can reclaim ship parts for booty.\\Инструмент для разборки частей корабля на Добычу.\\Uma ferramenta que consegue recuperar partes do navio para saque.\\Narzędzie, które może odzyskać części do statku na łupy.\\Un outil qui peut recycler des pièces de navire pour du Trésor."),
	Reconstructor = Translate("Reconstructor\\Реконструктор\\Reconstrutor\\Rekonstruktor\\Reconstructeur"),
	ReconstDesc   = Translate("A tool that can repair ship parts at the cost of booty.\\Инструмент для починки частей корабля за Добычу.\\Uma ferramenta que consegue reparar partes do navio ao custo de saque.\\Narzędzie, które może naprawiać części do statków kosztem łupów.\\Un outil qui peut réparer les pièces d'un navire au prix de Trésor."),
	
	//Events
	SettingFree   = Translate("{playercount} player(s) in map. Setting freebuild mode until more players join.\\игроков на карте. Включён режим свободного строительства, пока не присоединятся другие игроки.\\{playercount} jogadores no mapa. Configurando o modo freebuild até que mais jogadores se juntem.\\{playercount} graczy na mapie. Ustawiam tryb swobodnej budowy, dopóki nie dołączy więcej graczy.\\{playercount} joueurs sur la carte. Mode de Construction-Libre jusqu'à ce que plus de joueurs rejoignent."),
	CoreKill      = Translate("Congratulations! A Core Kill was added to your Scoreboard.\\Поздравляем! Убийство Сердца было добавлено в вашу таблицу результатов.\\Parabéns! Um Núcleo Kill foi adicionado ao seu placar.\\Gratulacje! Do tablicy wyników dodano główne zabójstwo.\\Bien joué! Un point de Kill de Noyau a été ajouté a votre Score!"),
	TeamBounty    = Translate("{winnerteam} gets {reward} Booty for destroying {killedteam}\\{winnerteam} получает {reward} Добычи за уничтожение {killedteam}\\{winnerteam} recebe {reward} saques por destruir {killedteam}\\{winnerteam} dostaje {reward} łup za zniszczenie {killedteam}\\{winnerteam} obtient {reward} de Trésor pour le meurtre sanglant de {killedteam}");
}

//arrays for indexing purposes

const string[] teamColors =
{
	Translate("Blue\\Синие\\Azul\\Niebieski\\Bleu"),
	Translate("Red\\Красные\\Vermelho\\Czerwony\\Rouge"),
	Translate("Green\\Зелёные\\Verde\\Zielony\\Vert"),
	Translate("Purple\\Фиолетовые\\Roxo\\Purpura\\Mauve"),
	Translate("Orange\\Оранжевые\\Laranja\\Pomarańcza\\Orange"),
	Translate("Cyan\\Бирюзовые\\Ciano\\Błękitny\\Cyan"),
	Translate("Navy Blue\\Тёмно-синие\\Azul-marinho\\Granatowy\\Bleu Marine"),
	Translate("Beige\\Бежевые\\Bege\\Beż\\Beige")
};

const string[] shiprektTips =
{
	Translate("Pistols deal fair damage to Mothership Cores, but Machineguns are not effective at all!\\пистолеты наносят приличный урон Сердцу главного корабля, а Пулеметы совсем не эффективны!\\pistolas causam dano decente aos Núcleos de Navios-mãe, porém Metralhadoras não são nem um pouco eficazes!\\pistolety zadają uczciwe obrażenia rdzeniom statku-matki, ale karabiny maszynowe nie są w ogóle skuteczne!\\les pistolets font des dégats raisonnable au Noyaux de Navire-mère, mais les Mitrailleuses ne sont pas efficace du tout!"),
	Translate("Target enemy ships that are higher on the leaderboard to get bigger rewards.\\атакуйте вражеские корабли, которые выше в таблице, чтобы получить большие награды.\\mire em navios inimigos que se encontram mais alto na tabela de classificação para conseguir recompensas melhores.\\celuj w wrogie okręty, które znajdują się wyżej w tabeli liderów, aby uzyskać większe nagrody.\\attaquer les navires enemies qui ont une place plus haute sur le classement pour plus de récompenses."),
	Translate("Machineguns and flak obliterate engines. Motherships need to place Solid blocks to counter this!\\пулеметы и зенитки уничтожают двигатели. Главные корабли должны размещать каркасные блоки, чтобы противостоять этому!\\metralhadoras e antiaéreos dizimam motores. Navios-mãe precisam colocar blocos Sólidos para combater isso!\\karabiny maszynowe i zacierają silniki. Statki-matki muszą umieszczać solidne bloki, aby temu przeciwdziałać!\\les mitrailleuses et canons antiaériens dédruisent absolument les moteurs. Les Navire-mère doivent donc placer des blocs solides pour contrer cela!"),
	Translate("Weapons don't stack! If you line them up only the outmost one will fire.\\оружие не стакается! Если вы выстроите их в линию, сработает только крайние из них.\\armas não empilham! Se você alinhá-las, apenas a mais distante irá disparar.\\broń nie kumuluje się! Jeśli ustawisz je w linii, tylko najwyższy z nich wystrzeli.\\les armes ne s'empilent pas! Si vous les alignez, seul le plus éloigné tirera."),
	Translate("Flak cannons get a fire rate boost when they are manned.\\зенитные пушки получают повышение скорострельности, когда они пилотируются.\\canhões antiaéreos recebem um impulso de taxa de cadência quando são controlados manualmente.\\armaty zwiększają szybkostrzelność, gdy są obsadzone.\\les canons antiaériens bénéficient d'une augmentation de la cadence de tir lorsqu'ils sont pilotés par un joueur."),
	Translate("While on a Miniship, don't bother gathering Xs until they disappear. Instead always look for bigger Xs.\\находясь на мини-корабле, не утруждайте себя сбором Х-ов пока они не исчезнут. Вместо этого всегда ищите большие Х-ы.\\enquanto estiver em um Mini-navio, não se preocupe em coletar Xs até desaparecerem. Em vez disso, sempre procure por Xs maiores.\\będąc na Minisłodzie, nie zawracaj sobie głowy zbieraniem Xs, dopóki nie znikną. Zamiast tego zawsze szukaj większych Xs.\\sur un navire, ne vous embêtez pas à rassembler des Xs jusqu'à ce qu'ils disparaissent. Au lieu de cela, recherchez toujours des Xs plus grands."),
	Translate("Removing heavy blocks on Sudden Death doesn't help! Heavier ships are pulled less by the Whirlpool.\\снятие тяжелых блоков во время Внезапной Смерти не помогает! Водоворот меньше притягивает более тяжелые корабли.\\remover blocos pesados na Morte Súbita não ajuda! Navios mais pesados são puxados menos pelo Redemoinho.\\usuwanie ciężkich bloków na Sudden Death nie pomaga! Cięższe statki są mniej ciągnięte przez Whirlpool.\\enlever des blocs lourds en mode Mort Subite n'aide pas! Les navires plus lourds sont moins tirés par le Tourbillion."),
	Translate("Docking: press [F]. Place the couplings on your Miniship. Bump the couplings against your Mothership.\\стыковка: нажмите [F]. Поместите Соединения на свой мини-корабль. Коснитесь Соединениями о свой главный корабль.\\atracando: pressione [F]. Coloque os acoplamentos no seu Mini-navio. Bata os acoplamentos contra seu Navio-mãe.\\dokowanie: naciśnij [F]. Umieść sprzęgła na swoim miniokręgu. Uderz w sprzężenia o swój Statek-Matkę.\\amarrage: appuyez sur [F]. Placez les raccords sur votre Navire. Frappez les couplages contre votre Navire-mère."),
	Translate("Launching torpedoes: accelerate so the torpedo engine starts and break the coupling with spacebar.\\запуск торпед: разгонитесь до запуска торпедного двигателя и разорвите Соединение пробелом.\\lançando torpedos: acelere para que o motor do torpedo dê partida e quebre o acoplamento com a barra de espaço.\\wystrzeliwanie torped: przyspiesz, aby silnik torpedowy uruchomił się i przerwał sprzęg z spacją.\\lancer des torpilles: accélérer pour que le moteur de la torpille démarre et rompé le raccord avec la barre d'espace."),
	Translate("An engine's propeller blades destroy blocks, so be mindful of where you dock!\\лопасти пропеллера двигателя разрушают блоки, так что следите за тем, где вы швартуетесь!\\as pás da hélice de um motor destroem blocos, então fique atento de onde irá atracar!\\łopaty śmigła silnika niszczą bloki, więc pamiętaj o tym, gdzie dokujesz!\\les pales d'hélice d'un moteur détruisent les blocs, alors faites attention à l'endroit où vous vous amarrez!"),
	Translate("Destroy an enemy core so your whole team gets a Bounty! High ranking teams give bigger rewards.\\уничтожьте вражеское сердце, чтобы вся ваша команда получила награду! Команды с выше в таблтце дают больше награды.\\destrua um núcleo inimigo para que seu time inteiro consiga uma Recompensa! Times com alta classificação dão recompensas maiores.\\zniszcz rdzeń wroga, aby cała twoja drużyna otrzymała bounty! Wysoko postawione zespoły dają większe nagrody.\\détruisez un noyau ennemi pour que toute votre équipe reçoive une Prime! Les équipes de haut rang donnent de plus grandes récompenses"),
	Translate("Transfer Booty to your teammates by clicking the Coin icon at the lower HUD.\\передайте Добычу своим товарищам по команде, щелкнув значок монеты внизу.\\transfira Saque para seus colegas de equipe clicando no ícone de Moeda no HUD inferior.\\przekaż łup kolegom z drużyny, klikając ikonę Monety na dolnym HUD.\\transférez du Trésor à vos coéquipiers en cliquant sur l'icône de Pièce dans le HUD en bas de l'écran."),
	Translate("Relinquish ownership of a seat by standing next to it and clicking the Star icon at the lower HUD.\\отказаться от права собственности на кресло, встав рядом с ним и щелкнув значок звездочки в низу.\\renuncie a liderança de um assento ao ficar em pé próximo a ele e clicar no ícone da Estrela no HUD inferior.\\zrzekaj się własności miejsca, stojąc obok niego i klikając ikonę gwiazdki na dolnym HUD.\\relacher la propriété de votre siège en vous tenant à côté de celui-ci et en cliquant sur l'icône Étoile dans le HUD en bas de l'écran."),
	Translate("Double tap the [F] key to re-purchase the last bought item while on your Mothership.\\дважды нажмите клавишу [F], чтобы повторно купить последний купленный предмет, находясь на главном корабле.\\clique duas vezes na tecla [F] para comprar novamente o último item que você havia comprado enquanto está no seu Navio-mãe.\\dotknij dwukrotnie [F], aby ponownie kupić ostatnio kupiony przedmiot na statku-matce.\\appuyez deux fois sur la touche [F] pour racheter le dernier bloc acheté sur votre Navire-mère."),
	Translate("You can check how many enemy Motherships you have destroyed on the Tab board.\\Вы можете проверить, сколько вражеских главных кораблей вы уничтожили на вкладке Tab.\\você pode checar quantos Navios-mãe inimios você já destruiu na tabela do Tab.\\możesz sprawdzić, ile wrogich statków-matek zniszczyłeś na planszy Tab.\\vous pouvez voir combien de Navires-mères ennemis vous avez détruits en pressant TAB."),
	Translate("Have the urge to point at something? Press and hold middle click.\\есть желание указать на что-то? Нажмите и удерживайте колёсико мыши.\\sente a necessidade de apontar para algo? Pressione e segure o botão do meio do mouse.\\masz ochotę na coś wskazać? Naciśnij i przytrzymaj środkowy przycisk myszy.\\envie de pointer du doigt quelque chose? Appuyez et maintenez la molette."),
	Translate("You can break Couplings and activate Repulsors post torpedo launch if you keep your spacebar pressed.\\вы можете сломать Соединеия и активировать репульсоры после запуска торпеды, если будете удерживать клавишу пробела.\\você pode quebrar Acoplamentos e ativar Repulsores após o lançamento de torpedo se você mantiver sua barra de espaço pressionada.\\możesz złamać sprzęgła i aktywować repulsory po wystrzeleniu torpedy, jeśli będziesz trzymał wciśnięty spację.\\vous pouvez casser les raccords et activer les répulseurs après le lancement de la torpille si vous maintenez votre barre d'espace enfoncée."),
	Translate("Break all the Couplings you've placed on your ship by holding spacebar and right clicking.\\сломайте все соединения, которые вы разместили на своем корабле, удерживая клавишу пробела и щелкая правой кнопкой мыши.\\quebre todos os Acoplamentos que você colocou no seu navio ao segurar a barra de espaço e clicar com o botão direito.\\złam wszystkie sprzęgła umieszczone na statku, przytrzymując spację i klikając prawym przyciskiem myszy.\\cassez tous les accouplements que vous avez placés sur votre navire en maintenant la barre d'espace et en faisant clic droit."),
	Translate("Injured blocks cause less damage on collision.\\поврежденные блоки наносят меньше урона при столкновении.\\blocos danificados causam menos dano em colisões.\\uszkodzone bloki powodują mniejsze uszkodzenia podczas kolizji.\\les blocs endomagés font moins de dégats quand ils frappent."),
	Translate("Strafe mode activates only the engines perpendicular to your ship.\\«режим стрейфа» активирует только двигатели, перпендикулярные вашему кораблю.\\o modo strafe ativa apenas os motores perpendiculares ao seu navio.\\'tryb strafe' aktywuje tylko silniki prostopadłe do twojego statku.\\'mode déplacement de côté' n'active que les moteurs perpendiculaires à votre navire."),
	Translate("Players get a walk speed boost while aboard their Mothership.\\игроки получают повышение скорости ходьбы на борту своего главного корабля.\\jogadores ganham um impulso de velocidade de caminhada enquanto estiverem a bordo de seus Navios-mãe.\\gracze otrzymują zwiększenie prędkości chodu na pokładzie swojego statku-matki.\\les joueurs bénéficient d'une augmentation de la vitesse de marche à bord de leur Navire-mère."),
	Translate("Players get healed over time while aboard their Mothership.\\игроки со временем исцеляются, находясь на борту своего главного корабля.\\jogadores são curados com o passar do tempo enquanto estiverem a bordo de seus Navios-mãe.\\gracze zostają uzdrowieni z czasem na pokładzie swojego statku-matki.\\les joueurs sont guéris au fil du temps à bord de leur Navire-mère."),
	Translate("Adding more blocks to a ship will decrease its turning speed.\\добавление дополнительных блоков к кораблю уменьшает его скорость поворота.\\adicionar mais blocos para um navio irá reduzir sua velocidade de giro.\\dodanie większej liczby bloków do statku zmniejszy jego prędkość obrotową.\\ajouter plus de blocs à un navire diminuera sa vitesse de rotation."),
	Translate("Stolen enemy ships convert to your team after some seconds of driving them.\\украденные вражеские корабли меняют команду на вашу после нескольких секунд управления ими.\\navios inimigos roubados são convertidos ao seu time após alguns segundos dirigindo-os.\\Skradzione wrogie okręty zamieniają się w twoją drużynę po kilku sekundach prowadzenia ich.\\les navires ennemis volés se convertissent en votre équipe après quelques secondes de conduite."),
	Translate("Kill sharks or enemy players to get a small Booty reward.\\убивайте акул или вражеских игроков, чтобы получить небольшую Добычу.\\mate tubarões ou jogadores inimigos para ganhar uma pequena recompensa de Saque.\\zabij rekiny lub wrogich graczy, aby otrzymać małą nagrodę Booty.\\tuez des requins ou des joueurs ennemis pour obtenir une petite récompense de Trésor."),
	Translate("Crewmates get an Xs gathering boost while aboard their Mothership at the expense of their captain.\\товарищи по команде получают ускорение сбора X-ов на борту своего материнского корабля за счет своего капитана.\\tripulantes ganham um impulso de coleta de Xs enquanto estiverem a bordo de seus Navios-mãe às custas de seu capitão.\\Członkowie załogi otrzymują premię do zbierania Xs na pokładzie statku macierzystego kosztem swojego kapitana.\\les coéquipiers reçoivent un coup de pouce de collecte de Xs à bord de leur Navire-mère aux dépens de leur capitaine."),
	Translate("Xs give more Booty the closer they are to the center of the map.\\Х-ы дают больше добычи, чем ближе они к центру карты.\\Xs fornecem mais Saque conforme estão mais perto do centro do mapa.\\Xs dają więcej Łupów, im bliżej są środka mapy.\\Les Xs donnent plus de Trésor plus ils sont proches du centre de la carte."),
	Translate("Repulsors will activate propellers in near vicinity on detonation.\\репульсоры активируют пропеллеры в непосредственной близости от детонации.\\repulsores ativarão as hélices nas proximidades na detonação.\\odpychacze aktywują śmigła w pobliżu podczas detonacji.\\les répulseurs activent les hélices à proximité lors de leur détonation."),
	Translate("Keep an eye on your torpedoes, they can change direction if they bounce off the border!\\следите за своими торпедами, они могут изменить направление, если отскочат от границы карты!\\fique de olho em seus torpedos, eles podem mudar de direção se baterem no limite do mapa!\\miej oko na swoje torpedy, mogą zmienić kierunek, jeśli odbiją się od granicy!\\gardez un œil sur vos torpilles, elles peuvent changer de direction si elles rebondissent sur la bordure!"),
	Translate("Killing players while you're onboard their mothership gives you 3x the Booty reward!\\убивая игроков, пока вы находитесь на борту их материнского корабля, вы получаете в 3 раза больше добычи!\\matar jogadores enquanto você estiver no Navio-mãe deles fornecerá 3x a recompensa de Saque!\\Zabijanie graczy, gdy jesteś na pokładzie ich statku-matki, daje ci 3x nagrodę Booty!\\tuer des joueurs alors que vous êtes à bord de leur navire-mère vous donne 3x la récompense de Trésor!"),
	Translate("Auxilliary cores can be improvised into high-end explosives.\\вспомогательные сердца могут быть импровизированы в высококлассные взрывчатые вещества.\\núcleos auxiliares podem ser improvisados em explosivos de alta qualidade.\\rdzenie pomocnicze można improwizować w wysokiej klasy materiały wybuchowe.\\les noyaux auxiliaires peuvent être des explosifs improvisés haut de gamme."),
	"Weapons on a miniship refill faster than weapons on a mothership.",
	"Watch your shooting! Weapons can only refill if they aren't being fired!",
	"A direct bomb hit to a Core can deal significant damage!",
	"Refill a weapon's ammunition by docking with your mothership or station.",
	"Miniships can dock not just with their own mothership, but enemy motherships as well!",
	"Bombs stack with power when placed together."
};
