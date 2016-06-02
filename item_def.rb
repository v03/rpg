module ItemCollection

	def prefix
		return {

			"Attack Rating" => {
				"Bronze" => [10..20],
				"Iron" => [21..40],
				"Steel" => [41..60],
				"Silver" => [61..80],
				"Gold" => [81..100],
				"Platinum" => [101..120],
				"Meteoric" => [121..150],
				"Strange" => [151..300],
				"Weird" => [301..450]
			},

			"Damage" => {
				"Jagged" => [10..20],
				"Deadly" => [21..30],
				"Vicious" => [31..40],
				"Brutal" => [41..50],
				"Massive" => [51..65],
				"Savage" => [66..80],
				"Merciless" => [81..100],
				"Ferocious" => [101..200],
				"Cruel" => [201..300]
			},

			"Cold Damage" => {
				"Snowy" => [6..9],
				"Shivering" => [10..15],
				"Boreal" => [16..23],
				"Hibernal" => [25..45]
			},

			"Fire Damage" => {
				"Fiery" => [16..25],
				"Smoldering" => [26..50],
				"Smoking" => [51..80],
				"Flaming" => [81..120],
				"Condensing" => [121..170]
			},


			"Lightning Damage" => {
				"Static" => [1..120],
				"Glowing" => [1..180],
				"Buzzing" => [1..260],
				"Arcing" => [1..360],
				"Shocking" => [1..480]
			},

			"Poison Damage" => {
				"Septic" => [6..6],
				"Foul" => [12..12],
				"Corrosive" => [80..80],
				"Toxic" => [150..150],
				"Pestilent" => [275..275]
			},

			"Defense" => {
				"Sturdy" => [10..30],
				"Strong" => [31..40],
				"Glorious" => [41..50],
				"Blessed" => [51..65],
				"Saintly" => [66..80],
				"Holy" => [81..100],
				"Godly" => [101..200]
			},

			"Resist Fire" => {
				"Crimson" => [5..10],
				"Russet" => [11..20],
				"Garnet" => [21..30],
				"Ruby" => [31..40]
			},
			"Resist Cold" => {
				"Azure" => [5..10],
				"Lapis" => [11..20],
				"Cobalt" => [21..30],
				"Sapphire" => [31..40]
			},

			"Resist Lightning" => {
				"Tangerine" => [5..10],
				"Ocher" => [11..20],
				"Coral" => [21..30],
				"Amber" => [31..40]
			},

			"Resist Poison" => {
				"Beryl" => [5..10],
				"Viridian" => [11..20],
				"Jade" => [21..30],
				"Emerald" => [31..40]
			},

		}
	end

	def suffix

	 	return {
			"Strength" => {
				"Strength" => [1..2],
				"Might" => [3..5],
				"Ox" => [6..9],
				"Giant" => [10..15],
				"Titan" => [16..20],
				"Atlas" => [21..30]
			},
			"Dexterity" => {
				"Dexterity" => [1..2],
				"Skill" => [3..5],
				"Accuracy" => [6..9],
				"Precision" => [10..15],
				"Perfection" => [16..20],
				"Nirvana" => [21..30]
			},
			"Energy" => {
				"Energy" => [1..2],
				"Mind" => [4..6],
				"Brilliance" => [7..10],
				"Sorcery" => [11..15],
				"Wizardry" => [16..20],
				"Enlightenment" => [21..30]
			},
			"Vitality" => {
				"Jackal" => [1..5],
				"Fox" => [6..10],
				"Wolf" => [11..20],
				"Tiger" => [21..30],
				"Mammoth" => [31..40],
				"Colossus" => [41..60],
				"Squid" => [60..80],
				"Whale" => [81..100]
			}
		}

	end

	def base
		return {
			"Helmet" => {
				"Cap" => {
					"Defense" => [3..5],
					"Min.Str" => [0..0]
				},
				"Skull Cap" => {
					"Defense" => [8..11],
					"Min.Str" => [15..15],
				},
				"Helm" => {
					"Defense" => [15..18],
					"Min.Str" => [26..26]
				},
				"Full Helm" => {
					"Defense" => [23..26],
					"Str.Req" => [41..41]
				},
				"Mask" => {
					"Defense" => [9..27],
					"Str.Req" => [23..23],
				},
				"Bone Helm" => {
					"Defense" => [23..36],
					"Str.Req" => [25..25]
				},
				"Great Helm" => {
					"Defense" => [30..35],
					"Str.Req" => [63..63]
				},
				"Crown" => {
					"Defense" => [25..45],
					"Str.Req" => [55..55]
				}
			},
			"Weapon" => {
				"Hand Axe" => {
					"Damage" => [3..6],
					"Dex.Req" => [0..0],
					"Str.Req" => [0..0]
				},
				"Axe" => {
					"Damage" => [4..11],
					"Dex.Req" => [0..0],
					"Str.Req" => [32..32]
				},
				"Double Axe" => {
					"Damage" => [5..13],
					"Str.Req" => [43..43],
					"Dex.Req" => [0..0]
				},
				"Military Pick" => {
					"Damage" => [7..11],
					"Str.Req" => [49..49],
					"Dex.Req" => [33..33]
				},
				"War Axe" => {
					"Damage" => [10..18],
					"Str.Req" => [67..67],
					"Dex.Req" => [10..10],
					"Lvl.Req" => [1..15]
				},
				"Short Sword" => {
					"Damage" => [2..7],
					"Str.Req" => [0..0]
				},
				"Scimitar" => {
					"Damage" => [2..6],
					"Dex.Req" => [21..21]
				},
				"Sabre" => {
					"Damage" => [3..8],
					"Str.Req" => [25..25],
					"Dex.Req" => [25..25],
					"Lvl.Req" => [1..5]
				},
				"Falchion" => {
					"Damage" => [9..17],
					"Str.Req" => [33..33],
					"Lvl.Req" => [2..10]
				},
				"Crystal Sword" => {
					"Damage" => [5..15],
					"Dex.Req" => [30..30],
					"Lvl.Req" => [1..5]
				},
				"Broad Sword" => {
					"Damage" => [7..14],
					"Str.Req" => [35..35],
					"Dex.Req" => [35..35],
					"Lvl.Req" => [2..10]
				},
				"Long Sword" => {
					"Damage" => [3..20],
					"Str.Req" => [55..55],
					"Dex.Req" => [40..40],
					"Lvl.Req" => [2..10]
				},
				"War Sword" => {
					"Damage" => [8..25],
					"Str.Req" => [45..45],
					"Lvl.Req" => [3..10]
				}
			},
			"Ring 1" => {
				"Ring" => {
					"Lvl.Req" => [2..8]
				}
			},
			"Ring 2" => {
				"Ring" => {
					"Lvl.Req" => [2..8]
				}
			},
			"Amulet" => {
				"Amulet" => {
					"Lvl.Req" => [2..15]
				}
			},
			"Shield" => {
				"Buckler" => {
					"Defense" => [4..6],
					"Str.Req" => [12..12],
				},
				"Small Shield" => {
					"Defense" => [8..10],
					"Str.Req" => [22..22]
				},
				"Large Shield" => {
					"Defense" => [12..14],
					"Str.Req" => [47..47]
				},
				"Kite Shield" => {
					"Defense" => [16..18],
					"Str.Req" => [47..47],
					"Lvl.Req" => [1..15]
				},
				"Spiked Shield" => {
					"Defense" => [15..25],
					"Damage" => [5..15],
					"Lvl.Req" => [2..15],
					"Str.Req" => [75..75]
				},
				"Tower Shield" => {
					"Defense" => [22..25],
					"Str.Req" => [75..75],
					"Lvl.Req" => [1..15]
				},
				"Bone Shield" => {
					"Defense" => [10..30],
					"Str.Req" => [25..25]
				},
				"Gothic Shield" => {
					"Defense" => [30..50],
					"Str.Req" => [60..60]
				}
			},
			"Charm 1" => {
				"Charm" => {
					"Lvl.Req" => [1..90]
				}
			},
			"Charm 2" => {
				"Charm" => {
					"Lvl.Req" => [1..90]
				}
			},
			"Charm 3" => {
				"Charm" => {
					"Lvl.Req" => [1..90]
				}
			},
			"Charm 4" => {
				"Charm" => {
					"Lvl.Req" => [1..90]
				}
			},
			"Charm 5" => {
				"Charm" => {
					"Lvl.Req" => [1..90]
				}
			},
			"Boots" => {
				"Boots" => {
					"Defense" => [2..3],
				},
				"Heavy Boots" => {
					"Defense" => [5..6],
					"Str.Req" => [15..18],
				},
				"Chain Boots" => {
					"Defense" => [8..9],
					"Str.Req" => [30..30],

				},
				"Light Plated Boots" => {
					"Defense" => [9..11],
					"Str.Req" => [50..50],
					"Lvl.Req" => [1..10]
				},
				"Greaves" => {
					"Defense" => [12..15],
					"Str.Req" => [50..70],
					"Lvl.Req" => [2..15],
					"Damage" => [1..5]
				}
			},
			"Gloves" => {
				"Leather Gloves" => {
					"Defense" => [2..3],
				},
				"Heavy Gloves" => {
					"Defense" => [5..6]
				},
				"Chain Gloves" => {
					"Defense" => [8..9],
					"Str.Req" => [25..25]
				},
				"Light Gauntlets" => {
					"Defense" => [9..11],
					"Str.Req" => [45..45],
					"Lvl.Req" => [1..5]
				},
				"Gauntlets" => {
					"Defense" => [12..16],
					"Damage" => [1..15],
					"Str.Req" => [60..60],
					"Lvl.Req" => [1..15]
				}
			},
			"Belt" => {
				"Sash" => {
					"Defense" => [2..3],
				},
				"Light Belt" => {
					"Defense" => [3..4]
				},
				"Belt" => {
					"Defense" => [5..6]
				},
				"Heavy Belt" => {
					"Defense" => [6..10],
					"Lvl.Req" => [1..5]
				},
				"Plated Belt" => {
					"Defense" => [11..15],
					"Lvl.Req" => [1..15]
				}
			},
			"Armor" => {
				"Quilted Armor" => {
					"Defense" => [8..11]
				},
				"Leather Armor" => {
					"Defense" => [14..17],
					"Str.Req" => [15..15]
				},
				"Hard Leather Armor" => {
					"Defense" => [21..24],
					"Str.Req" => [15..20],
					"Lvl.Req" => [1..5]
				},
				"Studded Leather" => {
					"Defense" => [32..35],
					"Str.Req" => [27..27],
					"Lvl.Req" => [1..10]
				},
				"Ring Mail" => {
					"Defense" => [45..50],
					"Str.Req" => [36..36],
					"Lvl.Req" => [2..10]
				},
				"Scale Mail" => {
					"Defense" => [57..60],
					"Str.Req" => [44..44],
					"Lvl.Req" => [5..15]
				},
				"Breast Plate" => {
					"Defense" => [65..65],
					"Str.Req" => [30..30],
					"Lvl.Req" => [5..10]
				},
				"Chain Mail" => {
					"Defense" => [72..75],
					"Str.Req" => [45..48],
					"Lvl.Req" => [5..15]
				},
				"Splint Mail" => {
					"Defense" => [90..95],
					"Damage" => [1..5],
					"Str.Req" => [51..55],
					"Lvl.Req" => [5..20]
				},
				"Light Plate" => {
					"Defense" => [90..107],
					"Str.Req" => [41..41],
					"Lvl.Req" => [5..20]
				},
				"Field Plate" => {
					"Defense" => [101..105],
					"Str.Req" => [55..55],
					"Lvl.Req" => [6..25]
				},
				"Plate Mail" => {
					"Defense" => [106..116],
					"Damage" => [5..10],
					"Str.Req" => [65..75],
					"Lvl.Req" => [8..30]
				},
				"Gothic Plate" => {
					"Defense" => [126..135],
					"Str.Req" => [70..70],
					"Lvl.Req" => [10..30]
				},
				"Full Plate Mail" => {
					"Defense" => [150..161],
					"Damage" => [10..30],
					"Str.Req" => [80..80],
					"Lvl.Req" => [10..35]
				},
				"Ancient Armor" => {
					"Defense" => [220..250],
					"Damage" => [0..100],
					"Str.Req" => [50..70],
					"Lvl.Req" => [15..30]
				}
			}
		}
	end
end
