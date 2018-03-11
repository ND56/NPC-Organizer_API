# frozen_string_literal: true

# A class to contain race/class arrays for search logic
class RaceClassArrays

  ARTIFICER = ['Artificer', 'artificer', 'Alchemist', 'alchemist',
               'gunsmith', 'Gunsmith']

  BARBARIAN = ['Barbarian', 'barbarian', 'berserker', 'Berserker',
               'Totem Warrior', 'totem warrior', 'Ancestral Guardian',
               'ancestral guardian', 'storm herald', 'Storm Herald',
               'Zealot', 'zealot', 'Battlerager', 'battlerager']

  BARD = ['Bard', 'bard', 'College', 'college']

  CLERIC = ['Cleric', 'cleric', 'Arcana', 'arcana', 'Death', 'death',
            'Forge', 'forge', 'Grave', 'grave', 'Knowledge',
            'knowledge', 'Life', 'life', 'Light', 'light', 'Nature',
            'nature', 'Tempest', 'tempest', 'trickery', 'Trickery',
            'War', 'war']

  DRUID = ['Druid', 'druid', 'Circle', 'circle']

  FIGHTER = ['Fighter', 'fighter', 'Champion', 'champion',
             'Battle Master', 'battle master', 'Eldritch Knight',
             'eldritch knight', 'Arcane Archer', 'arcane archer',
             'Cavalier', 'cavalier', 'Samurai', 'samurai',
             'Monster Hunter', 'monster hunter', 'Sharpshooter',
             'sharpshooter', 'brute', 'Brute']

  MONK = ['Monk', 'monk']

  MYSTIC = ['Mystic', 'mystic', 'Order of', 'order of', 'Order',
            'order']

  PALADIN = ['Paladin', 'paladin']

  RANGER = ['Ranger', 'ranger', 'Hunter', 'hunter', 'Beast Master',
            'beast master', 'gloom stalker', 'Gloom Stalker',
            'Horizon Walker', 'horizon walker', 'monster slayer',
            'Monster Slayer', 'Primeval Guardian', 'primeval guardian']

  ROGUE = ['Rogue', 'rogue', 'thief', 'Thief', 'Assassin', 'assassin',
           'arcane trickster', 'Arcane Trickster', 'Inquisitive',
           'inquisitive', 'Mastermind', 'mastermind', 'Scout', 'scout',
           'Swashbuckler', 'swashbuckler']

  SORCERER = ['Sorcerer', 'sorcerer', 'Draconic', 'draconic', 'Wild',
              'Wild', 'Divine Soul', 'divine soul', 'Shadow Magic',
              'shadow magic', 'Storm Sorcery', 'storm sorcery',
              'Phoenix Sorcery', 'phoenix sorcery', 'Sea Sorcery',
              'sea sorcery', 'Stone Sorcery', 'stone sorcery']

  WARLOCK = ['Warlock', 'warlock', 'Archfey', 'archfey', 'Fey', 'fey',
            'Celestial', 'celestial', 'Fiend', 'fiend',
            'Great Old One', 'Hexblade', 'hexblade', 'Raven Queen',
            'raven queen', 'Seeker', 'seeker', 'Undying', 'undying',
            'Pact of', 'pact of']

  WIZARD = ['Wizard', 'wizard', 'Abjurer', 'abjurer', 'abjuration',
            'Abjuration', 'Bladesinger', 'Bladesinging', 'bladesinger',
            'bladesinging', 'Conjuror', 'conjuror', 'Conjuration',
            'conjuratoon', 'Diviner', 'diviner', 'Divination',
            'divination', 'Enchanter', 'enchanter', 'Evocatator',
            'evocatator', 'Evocateur', 'evocateur', 'Evocation',
            'evocation', 'Illusionist', 'illusionist', 'Illusion',
            'illusion', 'Lore Master', 'lore master', 'Necromancer',
            'necromancer', 'necromancy', 'Necromancy', 'Technomancy',
            'technomany', 'Technomancer', 'technomancer',
            'theurgy', 'Theurgy', 'Theurgist', 'theurgist',
            'Transmutation', 'transmutation', 'transmuter',
            'Transmuter', 'transmutor', 'Transmutor',
            'war magic', 'War Magic', 'Mage', 'mage', 'magician',
            'Magician']

  AASIMAR = ['Aasimar', 'aasimar', 'Protector', 'protector', 'Scourge',
             'scourge', 'fallen', 'Fallen']

  BUGBEAR = ['Bugbear', 'bugbear']

  DRAGONBORN = ['Dragonborn', 'dragonborn', 'Dragon', 'dragon', 'Draconic',
                'draconic']

  DWARF = ['Dwarf', 'dwarf', 'Dwarven', 'dwarven', 'Dwarfen', 'dwarfen',
           'Duergar', 'duergar', 'gray dwarf', 'Gray Dwarf', 'Grey Dwarf',
           'grey dwarf', 'Hill Dwarf', 'hill dwarf', 'Gold Dwarf', 'gold dwarf',
           'Mountain Dwarf', 'mountain dwarf', 'Shield Dwarf', 'shield dwarf']

  ELF = ['Elf', 'elf', 'Elven', 'elven', 'Elfin', 'elfin', 'Elfen', 'elfen',
         'High Elf', 'high elf', 'Wood Elf', 'wood elf', 'Drow', 'drow',
         'Dark Elf', 'dark elf', 'Aquatic Elf', 'aquatic elf', 'Avariel',
         'avariel', 'Eladrin', 'eladrin', 'Sea Elf', 'sea elf', 'Grugach',
         'grugach', 'Shadar-kai', 'shadar-kai']

  FIRBOLG = ['Firbolg', 'firbolg']

  FEY = ['Fey', 'fey', 'Feyborn', 'feyborn', 'feytouched', 'Feytouched',
         'Fey-Born', 'fey-born', 'Fey-Touched', 'fey-touched']

  GENSAI = ['Gensai', 'gensai', 'Air', 'air', 'Earth', 'earth', 'Fire', 'fire',
            'water', 'Water']

  GNOME = ['Gnome', 'gnome', 'Forest Gnome', 'forest gnome', 'Rock Gnome',
           'rock gnome', 'Deep Gnome', 'deep gnome', 'Svirfneblin',
           'svirfneblin']

  GOBLIN = ['Goblin', 'goblin', 'Goblinoid', 'goblinoid', 'Hobgoblin',
            'hobgoblin']

  TROLL = ['Troll', 'troll']

  GOLIATH = ['Goliath', 'goliath']

  HALFELF = ['Half-Elf', 'half-elf', 'Half-Elven', 'half-elven', 'Half-Eflin',
             'half-elfin']

  HALFORC = ['Half-Orc', 'half-orc', 'Orc', 'orc']

  HALFLING = ['Halfling', 'halfling', 'Hobbit', 'hobbit', 'Ghostwise',
              'ghostwise', 'Lightfoot', 'lightfoot', 'Stout', 'stout']

  HUMAN = ['Human', 'human']

  KENKU = ['Kenku', 'kenku', 'Auran', 'auran', 'Avian', 'avian']

  KOBOLD = ['Kobold', 'kobold']

  LIZARDFOLK = ['Lizardfolk', 'lizardfolk', 'lizard', 'Lizard']

  TABAXI = ['Tabaxi', 'tabaxi']

  TIEFLING = ['Tiefling', 'tiefling']

  TORTLE = ['Tortle', 'tortle']

  TRITON = ['Triton', 'triton', 'Merfolk', 'merfolk']

  YUANTI = ['Yuan-Ti Pureblood', 'yuan-ti pureblood', 'Yuan-Ti', 'yuan-ti',
            'Yuan', 'yuan']

  GITH = ['Gith', 'gith', 'Githyanki', 'githyanki', 'Githzerai', 'githzerai']

end
