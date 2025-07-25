---@meta

---@alias TranslatorType
---|"MainFrame"
---|"ClassTalentFrame"
---|"SpellbookFrame"
---|"NameplateAndUnitFrame"
---|"SpellTooltip"
---|"UnitTooltip"
---|"Subtitles"
---|"NpcMessage"
---|"QuestFrame"

---@alias UIFrameType
---|"Spellbook"
---|"ClassTalent"
---|"Main"
---|"Quest"

---@alias ChangelogEntryColor
---|"purple"
---|"blue"
---|"red"
---|"green"
---|"legendary"

---@class (exact) PlayerData
---@field Name string @The name of the player character.
---@field Realm string @The realm of the player character.
---@field Race string @The race of the player character.
---@field Class string @The class of the player character.
---@field Gender number? @The gender (sex) of the player character.

---@class (exact) AddonData
---@field ReleaseDate number @The release date timestamp obtained from the add-on metadata.
---@field Version string @The version string obtained from the add-on metadata.
---@field VesionStr string @A formatted string representing the version and release date.

---@class WowUkrainizerInternals
---@field PlayerInfo PlayerData @Object containing information about the player character.
---@field AddonInfo AddonData @Object containing common data such as release date and version information.
---@field SettingsProvider SettingsProvider? @Instance of the SettingsProvider. To create instance call CreateSettingsProvider
---@field UntranslatedDataStorage UntranslatedDataStorage? @Singleton instance of the UntranslatedDataStorage. To create instance call CreateUntranslatedDataStorage
---@field IngameDataCacher IngameDataCacher? @Singleton instance of the IngameDataCacher. To create instance call CreateIngameDataCacher

---@class (exact) TranslatedQuestData
---@field ID number The unique identifier of the quest.
---@field Title string The translated title of the quest.
---@field Description string The translated description of the quest.
---@field ObjectivesText string The translated text describing the quest objectives.
---@field ContainsObjectives boolean Indicates whether the quest contains specific objectives.
---@field CompletionText string The translated text displayed upon quest completion.
---@field TargetName string The translated name of the quest target.
---@field TargetDescription string The translated description of the quest target.
---@field TargetCompletedName string The translated name of the quest target upon completion.
---@field TargetCompletedDescription string The translated description of the quest target upon completion.
---@field AreaDescription string The translated description of the quest area.
---@field RewardText string The translated text describing the quest rewards.
---@field ProgressText string The translated text describing quest progress.
---@field IsMtData boolean True if any translated text generated by AI; otherwise false

---@class (exact) TranslatedItemData
---@field Title string The translated title of the item.
---@field Description string The translated description of the item.

--- Changelog entry containing details of each change.
---@class (exact) ChangelogEntry
---@field version string -- The version the change was made in
---@field date string -- The date the change was made
---@field color ChangelogEntryColor -- Color code for UI display
---@field type string -- The type of change
---@field author string -- The author who made the change
---@field title string? -- The title summarizing the change
---@field description string -- Full description of the change

---@class (exact) WowUkrainizerDatabase
---@field Changelogs ChangelogEntry[] Array of changelog entries, newest first
---@field Quests table<integer, string[]>
---@field QuestObjectives table<integer, table<integer, string>>
---@field MTQuests table<integer, string[]>
---@field MTQuestObjectives table<integer, table<integer, string>>
---@field UnitTypes table<integer, string>
---@field UnitRanks table<integer, string>
---@field CommonSpellAttributes table<integer, string>
---@field Specializations table<integer, string>
---@field Classes table<integer, string[]>
---@field Races table<integer, string[]>
---@field ShortRaces table<string, string>
---@field Attributes table<integer, string>
---@field Roles table<integer, string>
---@field SpecializationNotes table<integer, string>
---@field DialogTexts table<integer, string>
---@field AdditionalSpellTips table<integer, string>
---@field GossipTitles table<integer, string>
---@field GossipOptions table<integer, string>
---@field SpellNames table<integer, string>
---@field SpellDescriptions table<integer, string>
---@field MovieSubtitles table<integer, string>
---@field UnitNames table<integer, string|table<string[]>>
---@field UnitSubnames table<integer, string>
---@field ZoneTexts table<integer, string>
---@field GlobalStrings table<integer, string>
---@field Factions table<integer, string>
---@field ItemAttributes table<integer, string>
---@field Items table<integer, string[]>
---@field Waypoints table<integer, string>
-- TODO: @field Voiceover
