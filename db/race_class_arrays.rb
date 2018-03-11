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

  # ARTIFICER = RaceClassArrays.new.artificer_array
  # BARBARIAN = RaceClassArrays.new.barbarian_array
  # BARD = RaceClassArrays.new.bard_array
  # CLERIC = RaceClassArrays.new.cleric_array
  # DRUID = RaceClassArrays.new.druid_array
  # FIGHTER = RaceClassArrays.new.fighter_array
  # MONK = RaceClassArrays.new.monk_array
  # MYSTIC = RaceClassArrays.new.mystic_array
  # PALADIN = RaceClassArrays.new.paladin_array
  # RANGER = RaceClassArrays.new.ranger_array
  # ROGUE = RaceClassArrays.new.rogue_array
  # SORCERER = RaceClassArrays.new.sorcerer_array
  # WARLOCK = RaceClassArrays.new.warlock_array
  # WIZARD = RaceClassArrays.new.wizard_array
  #
  # def artificer_array
  #   @artificer_array = ['Artificer', 'artificer', 'Alchemist', 'alchemist',
  #                       'gunsmith', 'Gunsmith']
  # end
  #
  # def barbarian_array
  #   @barbarian_array = ['Barbarian', 'barbarian', 'berserker', 'Berserker',
  #                       'Totem Warrior', 'totem warrior', 'Ancestral Guardian',
  #                       'ancestral guardian', 'storm herald', 'Storm Herald',
  #                       'Zealot', 'zealot', 'Battlerager', 'battlerager']
  # end
  #
  # def bard_array
  #   @bard_array = ['Bard', 'bard', 'College', 'college']
  # end
  #
  # def cleric_array
  #   @cleric_array = ['Cleric', 'cleric', 'Arcana', 'arcana', 'Death', 'death',
  #                    'Forge', 'forge', 'Grave', 'grave', 'Knowledge',
  #                    'knowledge', 'Life', 'life', 'Light', 'light', 'Nature',
  #                    'nature', 'Tempest', 'tempest', 'trickery', 'Trickery',
  #                    'War', 'war']
  # end
  #
  # def druid_array
  #   @druid_array = ['Druid', 'druid', 'Circle', 'circle']
  # end
  #
  # def fighter_array
  #   @fighter_array = ['Fighter', 'fighter', 'Champion', 'champion',
  #                     'Battle Master', 'battle master', 'Eldritch Knight',
  #                     'eldritch knight', 'Arcane Archer', 'arcane archer',
  #                     'Cavalier', 'cavalier', 'Samurai', 'samurai',
  #                     'Monster Hunter', 'monster hunter', 'Sharpshooter',
  #                     'sharpshooter', 'brute', 'Brute']
  # end
  #
  # def monk_array
  #   @monk_array = ['Monk', 'monk']
  # end
  #
  # def mystic_array
  #   @mystic_array = ['Mystic', 'mystic', 'Order of', 'order of', 'Order',
  #                    'order']
  # end
  #
  # def paladin_array
  #   @paladin_array = ['Paladin', 'paladin']
  # end
  #
  # def ranger_array
  #   @ranger_array = ['Ranger', 'ranger', 'Hunter', 'hunter', 'Beast Master',
  #                    'beast master', 'gloom stalker', 'Gloom Stalker',
  #                    'Horizon Walker', 'horizon walker', 'monster slayer',
  #                    'Monster Slayer', 'Primeval Guardian', 'primeval guardian']
  # end
  #
  # def rogue_array
  #   @rogue_array = ['Rogue', 'rogue', 'thief', 'Thief', 'Assassin', 'assassin',
  #                   'arcane trickster', 'Arcane Trickster', 'Inquisitive',
  #                   'inquisitive', 'Mastermind', 'mastermind', 'Scout', 'scout',
  #                   'Swashbuckler', 'swashbuckler']
  # end
  #
  # def sorcerer_array
  #   @sorcerer_array = ['Sorcerer', 'sorcerer', 'Draconic', 'draconic', 'Wild',
  #                      'Wild', 'Divine Soul', 'divine soul', 'Shadow Magic',
  #                      'shadow magic', 'Storm Sorcery', 'storm sorcery',
  #                      'Phoenix Sorcery', 'phoenix sorcery', 'Sea Sorcery',
  #                      'sea sorcery', 'Stone Sorcery', 'stone sorcery']
  # end
  #
  # def warlock_array
  #   @warlock_array = ['Warlock', 'warlock', 'Archfey', 'archfey', 'Fey', 'fey',
  #                     'Celestial', 'celestial', 'Fiend', 'fiend',
  #                     'Great Old One', 'Hexblade', 'hexblade', 'Raven Queen',
  #                     'raven queen', 'Seeker', 'seeker', 'Undying', 'undying',
  #                     'Pact of', 'pact of']
  # end
  #
  # def wizard_array
  #   @wizard_array = ['Wizard', 'wizard', 'Abjurer', 'abjurer', 'abjuration',
  #                    'Abjuration', 'Bladesinger', 'Bladesinging', 'bladesinger',
  #                    'bladesinging', 'Conjuror', 'conjuror', 'Conjuration',
  #                    'conjuratoon', 'Diviner', 'diviner', 'Divination',
  #                    'divination', 'Enchanter', 'enchanter', 'Evocatator',
  #                    'evocatator', 'Evocateur', 'evocateur', 'Evocation',
  #                    'evocation', 'Illusionist', 'illusionist', 'Illusion',
  #                    'illusion', 'Lore Master', 'lore master', 'Necromancer',
  #                    'necromancer', 'necromancy', 'Necromancy', 'Technomancy',
  #                    'technomany', 'Technomancer', 'technomancer',
  #                    'theurgy', 'Theurgy', 'Theurgist', 'theurgist',
  #                    'Transmutation', 'transmutation', 'transmuter',
  #                    'Transmuter', 'transmutor', 'Transmutor',
  #                    'war magic', 'War Magic', 'Mage', 'mage', 'magician',
  #                    'Magician']
  # end

end
