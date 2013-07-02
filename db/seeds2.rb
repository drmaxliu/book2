#ruby encoding: utf-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# BookSeries: Canon from Protestants
protestant_canon = BookSeries.create(title: "基督教的聖經正典", 
		description: "基督教的舊約是根據希伯來聖經正典，在１６４８年確立。從書卷内容上，與希伯來聖經正典一樣。但在安排次序上不一樣。")

torah = protestant_canon.collections.create(title: "律法書", description: "")
	genesis = torah.books.create(name: "Genesis", title: "創世記", book_code: "Ge", chinese_code: "創",
		description: "")
	exodus = torah.books.create(name: "Exodus", title: "出埃及記", book_code: "Ex", chinese_code: "出",
		description: "")
	leviticus = torah.books.create(name: "Leviticus", title: "利未記", book_code: "Lev", chinese_code: "利",
		description: "")
	numbers = torah.books.create(name: "Numbers", title: "民數記", book_code: "Nu", chinese_code: "民",
		description: "")
	deuteronomy = torah.books.create(name: "Deuteronomy", title: "申命記", book_code: "Dt", chinese_code: "申",
		description: "")

isralite_history = protestant_canon.collections.create(title: "以色列歷史", description: "")
	joshua = isralite_history.books.create(name: "Joshua", title: "約書亞記", book_code: "Jos", chinese_code: "書",
		description: "")
	judges = isralite_history.books.create(name: "Judges", title: "士師記", book_code: "Jdg", chinese_code: "士",
		description: "")
	ruth = isralite_history.books.create(name: "Ruth", title: "路得記", book_code: "Ru", chinese_code: "得",
		description: "")
	samuel_1 = isralite_history.books.create(name: "1 Samuel", title: "撒母耳記上", book_code: "1Sa", chinese_code: "撒上",
		description: "")
	samuel_2 = isralite_history.books.create(name: "2 Samuel", title: "撒母耳記下", book_code: "2Sa", chinese_code: "撒下",
		description: "")
	kings_1 = isralite_history.books.create(name: "1 Kings", title: "列王記上", book_code: "1Ki", chinese_code: "王上",
		description: "")
	kings_2 = isralite_history.books.create(name: "2 Kings", title: "列王記下", book_code: "2Ki", chinese_code: "王下",
		description: "")
	chron_1 = isralite_history.books.create(name: "1 Chronicles", title: "歷代志上", book_code: "1Ch", chinese_code: "代上",
		description: "")
	chron_2 = isralite_history.books.create(name: "2 Chronicles", title: "歷代志下", book_code: "2Ch", chinese_code: "代下",
		description: "")
	ezra = isralite_history.books.create(name: "Ezra", title: "以斯拉記", book_code: "Ezr", chinese_code: "拉",
		description: "")
	nehemiah = isralite_history.books.create(name: "Nehemiah", title: "尼希米記", book_code: "Ne", chinese_code: "尼",
		description: "尼希米記")
	esther = isralite_history.books.create(name: "Esther", title: "以斯帖記", book_code: "Est", chinese_code: "斯",
		description: "")

poetry = protestant_canon.collections.create(title: "智慧和詩歌", description: "")
	job = poetry.books.create(name: "Job", title: "約伯記", book_code: "Job", chinese_code: "伯",
		description: "")
	psalms = poetry.books.create(name: "Psalms", title: "詩篇", book_code: "Ps", chinese_code: "詩",
		description: "")
	proverbs = poetry.books.create(name: "Proverbs", title: "箴言", book_code: "Pr", chinese_code: "箴",
		description: "")
	ecclesiastes = poetry.books.create(name: "Ecclesiastes", title: "傳道書", book_code: "Ecc", chinese_code: "傳",
		description: "")
	song = poetry.books.create(name: "Song of Songs", title: "雅歌", book_code: "SS", chinese_code: "歌",
		description: "")

major_prophets = protestant_canon.collections.create(title: "大先知書", description: "")
	isaiah = major_prophets.books.create(name: "Isaiah", title: "以賽亞書", book_code: "Isa", chinese_code: "賽",
		description: "")
	jerimiah = major_prophets.books.create(name: "Jerimiah", title: "耶利米書", book_code: "Jer", chinese_code: "耶",
		description: "")
	lament = major_prophets.books.create(name: "Lamentations", title: "耶利米哀歌", book_code: "La", chinese_code: "哀",
		description: "")
	ezekiel = major_prophets.books.create(name: "Ezekiel", title: "以西結書", book_code: "Eze", chinese_code: "結",
		description: "")
	daniel = major_prophets.books.create(name: "Daniel", title: "但以理書", book_code: "Da", chinese_code: "但",
		description: "")

minor_prophets = protestant_canon.collections.create(title: "小先知書", description: "")
	hosea = minor_prophets.books.create(name: "Hosea", title: "何西阿書", book_code: "Hos", chinese_code: "何",
		description: "")
	joel = minor_prophets.books.create(name: "Joel", title: "約珥書", book_code: "Joel", chinese_code: "珥",
		description: "")
	amos = minor_prophets.books.create(name: "Amos", title: "阿摩司書", book_code: "Am", chinese_code: "摩",
		description: "")
	obadiah = minor_prophets.books.create(name: "Obadiah", title: "俄巴底亞書", book_code: "Ob", chinese_code: "俄",
		description: "")
	jonah = minor_prophets.books.create(name: "Jonah", title: "約拿書", book_code: "Jnh", chinese_code: "拿",
		description: "")
	micah = minor_prophets.books.create(name: "Micah", title: "彌迦書", book_code: "Mic", chinese_code: "彌",
		description: "")
	nahum = minor_prophets.books.create(name: "Nahum", title: "那鴻書", book_code: "Na", chinese_code: "鴻",
		description: "")
	habakkuk = minor_prophets.books.create(name: "Habakkuk", title: "哈巴谷書", book_code: "Hab", chinese_code: "哈",
		description: "")
	zephaniah = minor_prophets.books.create(name: "Zephaniah", title: "西番亞書", book_code: "Zep", chinese_code: "番",
		description: "")
	haggai = minor_prophets.books.create(name: "Haggai", title: "哈該書", book_code: "Hag", chinese_code: "該",
		description: "")
	zechariah = minor_prophets.books.create(name: "Zechariah", title: "撒迦利亞書", book_code: "Zec", chinese_code: "亞",
		description: "")
	melachi = minor_prophets.books.create(name: "Melachi", title: "瑪拉基書", book_code: "Mal", chinese_code: "瑪",
		description: "")

gospels = protestant_canon.collections.create(title: "四福音書", description: "")
	matthew = gospels.books.create(name: "Matthew", title: "馬太福音", book_code: "Mt", chinese_code: "太",
		description: "")
	mark = gospels.books.create(name: "Mark", title: "馬可福音", book_code: "Mk", chinese_code: "可",
		description: "")
	luke = gospels.books.create(name: "Luke", title: "路加福音", book_code: "Lk", chinese_code: "路",
		description: "")
	john = gospels.books.create(name: "John", title: "約翰福音", book_code: "Jn", chinese_code: "約",
		description: "")

church_history = protestant_canon.collections.create(title: "教會歷史", description: "")
	acts = church_history.books.create(name: "Acts", title: "", book_code: "Ac", chinese_code: "",
		description: "")

paul_letters = protestant_canon.collections.create(title: "保羅書信", description: "")
	romans = paul_letters.books.create(name: "Romans", title: "羅馬書", book_code: "Ro", chinese_code: "羅",
		description: "")
	corith_1 = paul_letters.books.create(name: "1 Corithians", title: "哥林多前書", book_code: "1Co", chinese_code: "林前",
		description: "")
	corith_2 = paul_letters.books.create(name: "2 Corithians", title: "哥林多后書", book_code: "2C", chinese_code: "林后",
		description: "")
	galatians = paul_letters.books.create(name: "Galatians", title: "加拉太書", book_code: "Gal", chinese_code: "加",
		description: "")
	ephesians = paul_letters.books.create(name: "Ephesians", title: "以弗所書", book_code: "Eph", chinese_code: "弗",
		description: "")
	phillippians = paul_letters.books.create(name: "Phillippians", title: "腓立比書", book_code: "Php", chinese_code: "腓",
		description: "")
	colossians = paul_letters.books.create(name: "Colossians", title: "歌羅西書", book_code: "Col", chinese_code: "西",
		description: "")
	thess_1 = paul_letters.books.create(name: "1 Thessalonians", title: "帖撒羅尼迦前書", book_code: "1Th", chinese_code: "帖前",
		description: "")
	thess_2 = paul_letters.books.create(name: "2 Thessalonians", title: "帖撒羅尼迦前書", book_code: "2Th", chinese_code: "帖后",
		description: "")
	tim_1 = paul_letters.books.create(name: "1 Timothy", title: "提摩太前書", book_code: "1Ti", chinese_code: "提前",
		description: "")
	tim_2 = paul_letters.books.create(name: "2 Timothy", title: "提摩太后書", book_code: "2Ti", chinese_code: "提后",
		description: "")
	titus = paul_letters.books.create(name: "Titus", title: "提多書", book_code: "Tit", chinese_code: "多",
		description: "")
	philemon = paul_letters.books.create(name: "Philemon", title: "腓利門書", book_code: "Phm", chinese_code: "門",
		description: "")
	
other_letters = protestant_canon.collections.create(title: "一般書信", description: "")
	hebrews = other_letters.books.create(name: "Hebrews", title: "希伯來書", book_code: "Heb", chinese_code: "",
		description: "")
	james = other_letters.books.create(name: "James", title: "雅各書", book_code: "Jas", chinese_code: "",
		description: "")
	peter_1 = other_letters.books.create(name: "1 Peter", title: "彼得前書", book_code: "1Pe", chinese_code: "",
		description: "")
	peter_2 = other_letters.books.create(name: "2 Peter", title: "彼得后書", book_code: "2Pe", chinese_code: "",
		description: "")
	john_1 = other_letters.books.create(name: "1 John", title: "約翰１書", book_code: "1Jn", chinese_code: "",
		description: "")
	john_2 = other_letters.books.create(name: "2 John", title: "約翰２書", book_code: "2Jn", chinese_code: "",
		description: "")
	john_3 = other_letters.books.create(name: "3 John", title: "約翰３書", book_code: "3Jn", chinese_code: "",
		description: "")
	jude = other_letters.books.create(name: "Jude", title: "猶大書", book_code: "Jude", chinese_code: "",
		description: "")

end_prophecy = protestant_canon.collections.create(title: "新約先知書", description: "")
	revelation = end_prophecy.books.create(name: "Revelation", title: "啓示錄", book_code: "Rev", chinese_code: "",
		description: "")

# BookSeries: Canon from Catholics
catholic_canon = BookSeries.create(title: "天主教的聖經正典", 
	description: "天主教的聖經正典的舊約是根據七十士譯本，比希伯來聖經多了七本書，基督教稱為次經。
	在編排次序上與希伯來正典，基督教聖經正典也不一樣。")
torah_c = catholic_canon.collections.create(title: "律法書", description: "")
	genesis_c = torah_c.books.create(name: "Genesis", title: "創世紀", book_code: "Gn", chinese_code: "創",
		description: "")
	exodus_c = torah_c.books.create(name: "Exodus", title: "出谷紀", book_code: "Ex", chinese_code: "出",
		description: "")
	leviticus_c = torah_c.books.create(name: "Leviticus", title: "肋未紀", book_code: "Lv", chinese_code: "肋",
		description: "")
	numbers_c = torah_c.books.create(name: "Numbers", title: "戶籍紀", book_code: "Nb", chinese_code: "戶",
		description: "")
	deuteronomy_c = torah_c.books.create(name: "Deuteronomy", title: "申命紀", book_code: "Dt", chinese_code: "申",
		description: "")

isralite_history_c = catholic_canon.collections.create(title: "以色列歷史", description: "")
	joshua_c = isralite_history_c.books.create(name: "Josue", title: "若蘇厄書", book_code: "Jos", chinese_code: "蘇",
		description: "")
	judges_c = isralite_history_c.books.create(name: "Judges", title: "民長紀", book_code: "Jg", chinese_code: "士",
		description: "")
	ruth_c = isralite_history_c.books.create(name: "Ruth", title: "盧德傳", book_code: "Rt", chinese_code: "盧",
		description: "")
	samuel_1c = isralite_history_c.books.create(name: "1 Samuel", title: "撒慕爾紀上", book_code: "1S", chinese_code: "撒上",
		description: "")
	samuel_2c = isralite_history_c.books.create(name: "2 Samuel", title: "撒慕爾紀下", book_code: "2S", chinese_code: "撒下",
		description: "")
	kings_1c = isralite_history_c.books.create(name: "1 Kings", title: "列王紀上", book_code: "1K", chinese_code: "王上",
		description: "")
	kings_2c = isralite_history_c.books.create(name: "2 Kings", title: "列王紀下", book_code: "2K", chinese_code: "王下",
		description: "")
	chron_1c = isralite_history_c.books.create(name: "1 Paralipomenon", title: "編年紀上", book_code: "1Ch", chinese_code: "編上",
		description: "")
	chron_2c = isralite_history_c.books.create(name: "2 Paralipomenon", title: "編年紀下", book_code: "2Ch", chinese_code: "編下",
		description: "")
	ezra_c = isralite_history_c.books.create(name: "Ezra", title: "厄斯德拉上", book_code: "Ezr", chinese_code: "厄上",
		description: "")
	nehemiah_c = isralite_history_c.books.create(name: "Nehemiah", title: "厄斯德拉下", book_code: "Ne", chinese_code: "厄下",
		description: "尼希米記")
	tobias = isralite_history_c.books.create(name: "Tobias", title: "多俾亞傳", book_code: "Tb", chinese_code: "多",
		description: "")
	judith = isralite_history_c.books.create(name: "Judith", title: "友弟德傳", book_code: "Jdt", chinese_code: "友",
		description: "")
	esther_c = isralite_history_c.books.create(name: "Esther", title: "艾斯德爾傳", book_code: "Est", chinese_code: "艾",
		description: "")
	maccabees_1c = isralite_history_c.books.create(name: "1 Maccabees", title: "馬加伯上", book_code: "1Mc", chinese_code: "加上",
		description: "")
	maccabees_2c = isralite_history_c.books.create(name: "2 Maccabees", title: "馬加伯下", book_code: "2Mc", chinese_code: "加下",
		description: "")

writings = catholic_canon.collections.create(title: "智慧和詩歌", description: "")
	job_c = writings.books.create(name: "Job", title: "約伯傳", book_code: "Jb", chinese_code: "約",
		description: "")
	psalms_c = writings.books.create(name: "Psalms", title: "聖詠集", book_code: "Ps", chinese_code: "詠",
		description: "")
	proverbs_c = writings.books.create(name: "Proverbs", title: "箴言", book_code: "Pr", chinese_code: "箴",
		description: "")
	ecclesiastes_c = writings.books.create(name: "Ecclesiastes", title: "訓道篇", book_code: "Qo", chinese_code: "訓",
		description: "")
	song_c = writings.books.create(name: "Song of Solomon", title: "雅歌", book_code: "Sg", chinese_code: "歌",
		description: "")
	wisdom_c = writings.books.create(name: "Wisdom of Solomon", title: "智慧篇", book_code: "Ws", chinese_code: "智",
		description: "")
	ecclesiasticus_c = writings.books.create(name: "Ecclesiasticus", title: "德行篇", book_code: "Si", chinese_code: "德",
		description: "")

prophets = catholic_canon.collections.create(title: "先知書", description: "")
	isaiah_c = prophets.books.create(name: "Isaiah", title: "依撒依亞", book_code: "Is", chinese_code: "依",
		description: "")
	jerimiah_c = prophets.books.create(name: "Jerimiah", title: "耶肋米亞", book_code: "Jr", chinese_code: "耶",
		description: "")
	lament_c = prophets.books.create(name: "Lamentations", title: "耶肋米亞哀歌", book_code: "Lm", chinese_code: "哀",
		description: "")
	baruth_c = prophets.books.create(name: "Baruch", title: "巴路克", book_code: "Ba", chinese_code: "巴",
		description: "")
	ezekiel_c = prophets.books.create(name: "Ezekiel", title: "厄則克耳", book_code: "Ezk", chinese_code: "則",
		description: "")
	daniel_c = prophets.books.create(name: "Daniel", title: "達尼爾", book_code: "Dn", chinese_code: "達",
		description: "")
	hosea_c = prophets.books.create(name: "Hosea", title: "歐瑟亞", book_code: "Ho", chinese_code: "歐",
		description: "")
	joel_c = prophets.books.create(name: "Joel", title: "岳厄爾", book_code: "Jl", chinese_code: "岳",
		description: "")
	amos_c = prophets.books.create(name: "Amos", title: "亞毛斯", book_code: "Am", chinese_code: "亞",
		description: "")
	obadiah_c = prophets.books.create(name: "Obadiah", title: "俄巴底亞書", book_code: "Ob", chinese_code: "俄",
		description: "")
	jonah_c = prophets.books.create(name: "Jonah", title: "約納", book_code: "Joh", chinese_code: "納",
		description: "")
	micah_c = prophets.books.create(name: "Micah", title: "米該亞", book_code: "Mi", chinese_code: "米",
		description: "")
	nahum_c = prophets.books.create(name: "Nahum", title: "納鴻", book_code: "Na", chinese_code: "鴻",
		description: "")
	habakkuk_c = prophets.books.create(name: "Habakkuk", title: "哈巴谷書", book_code: "Hab", chinese_code: "哈",
		description: "")
	zephaniah_c = prophets.books.create(name: "Zephaniah", title: "索福尼亞", book_code: "Zp", chinese_code: "索",
		description: "")
	haggai_c = prophets.books.create(name: "Haggai", title: "哈該書", book_code: "Hg", chinese_code: "該",
		description: "")
	zechariah_c = prophets.books.create(name: "Zechariah", title: "匝加利亞", book_code: "Zc", chinese_code: "匝",
		description: "")
	melachi_c = prophets.books.create(name: "Melachi", title: "馬拉基亞", book_code: "Ml", chinese_code: "拉",
		description: "")

gospels_c = catholic_canon.collections.create(title: "四福音書", description: "")
	matthew_c = gospels_c.books.create(name: "Matthew", title: "瑪竇福音", book_code: "Mt", chinese_code: "瑪",
		description: "")
	mark_c = gospels_c.books.create(name: "Mark", title: "馬爾谷福音", book_code: "Mk", chinese_code: "谷",
		description: "")
	luke_c = gospels_c.books.create(name: "Luke", title: "路加福音", book_code: "Lk", chinese_code: "路",
		description: "")
	john_c = gospels_c.books.create(name: "John", title: "若望福音", book_code: "Jn", chinese_code: "若",
		description: "")

church_history_c = catholic_canon.collections.create(title: "教會歷史", description: "")
	acts_c = church_history_c.books.create(name: "Acts", title: "宗徒大事錄", book_code: "Ac", chinese_code: "宗",
		description: "")

paul_letters_c = catholic_canon.collections.create(title: "保羅書信", description: "")
	romans_c = paul_letters_c.books.create(name: "Romans", title: "羅馬書", book_code: "Ro", chinese_code: "羅",
		description: "")
	corith_1_c = paul_letters_c.books.create(name: "1 Corithians", title: "格林多前書", book_code: "1Co", chinese_code: "格前",
		description: "")
	corith_2_c = paul_letters_c.books.create(name: "2 Corithians", title: "格林多后書", book_code: "2Co", chinese_code: "格后",
		description: "")
	galatians_c = paul_letters_c.books.create(name: "Galatians", title: "迦拉達書", book_code: "Ga", chinese_code: "迦",
		description: "")
	ephesians_c = paul_letters_c.books.create(name: "Ephesians", title: "厄弗所書", book_code: "Ep", chinese_code: "弗",
		description: "")
	phillippians_c = paul_letters_c.books.create(name: "Phillippians", title: "斐理伯書", book_code: "Ph", chinese_code: "斐",
		description: "")
	colossians_c = paul_letters_c.books.create(name: "Colossians", title: "哥羅森書", book_code: "Col", chinese_code: "哥",
		description: "")
	thess_1c = paul_letters_c.books.create(name: "1 Thessalonians", title: "得撒洛尼前書", book_code: "1Th", chinese_code: "得前",
		description: "")
	thess_2c = paul_letters_c.books.create(name: "2 Thessalonians", title: "得撒洛尼前書", book_code: "2Th", chinese_code: "得后",
		description: "")
	tim_1c = paul_letters_c.books.create(name: "1 Timothy", title: "弟茂德前書", book_code: "1Ti", chinese_code: "弟前",
		description: "")
	tim_2c = paul_letters_c.books.create(name: "2 Timothy", title: "弟茂德后書", book_code: "2Ti", chinese_code: "弟后",
		description: "")
	titus_c = paul_letters_c.books.create(name: "Titus", title: "弟鐸書", book_code: "Tt", chinese_code: "鐸",
		description: "")
	philemon_c = paul_letters_c.books.create(name: "Philemon", title: "費肋孟書", book_code: "Phm", chinese_code: "費",
		description: "")

other_letters_c = catholic_canon.collections.create(title: "一般書信", description: "")
	hebrews_c = other_letters_c.books.create(name: "Hebrews", title: "希伯來書", book_code: "Heb", chinese_code: "希",
		description: "")
	james_c = other_letters_c.books.create(name: "James", title: "雅各伯書", book_code: "Jm", chinese_code: "雅",
		description: "")
	peter_1c = other_letters_c.books.create(name: "1 Peter", title: "伯多祿前書", book_code: "1P", chinese_code: "伯前",
		description: "")
	peter_2c = other_letters_c.books.create(name: "2 Peter", title: "伯多祿后書", book_code: "2P", chinese_code: "伯後",
		description: "")
	john_1c = other_letters_c.books.create(name: "1 John", title: "若望１書", book_code: "1Jn", chinese_code: "若一",
		description: "")
	john_2c = other_letters_c.books.create(name: "2 John", title: "若望２書", book_code: "2Jn", chinese_code: "若二",
		description: "")
	john_3c = other_letters_c.books.create(name: "3 John", title: "若望３書", book_code: "3Jn", chinese_code: "若三",
		description: "")
	jude_c = other_letters_c.books.create(name: "Jude", title: "猶達書", book_code: "Ju", chinese_code: "猶",
		description: "")

end_prophecy_c = catholic_canon.collections.create(title: "新約先知書", description: "")
	revelation_c = end_prophecy_c.books.create(name: "Revelation", title: "若望默示錄", book_code: "Rv", chinese_code: "",
		description: "")

jewish_canon = BookSeries.create(title: "希伯來聖經正典", 
	description: "希伯來聖經分成三部分：律法書，先知書，和文集。
	律法書的權威性在摩西時代就已經確立，是舊約聖經權威最高的。先知書在主前兩百多年前確定，又分爲前先知書(Former Prophets)，
	后先知書(Latter Prophets)。
	文集則是在公元９０年由猶太拉比開大會確定，又分爲真理(Truth)和一般文集(Scrolls)。")

torah_j = jewish_canon.collections.create(title: "律法書", description: "")
	genesis_j = torah_j.books.create(name: "Genesis", title: "創世記", book_code: "Ge", chinese_code: "創",
		description: "")
	exodus_j = torah_j.books.create(name: "Exodus", title: "出埃及記", book_code: "Ex", chinese_code: "出",
		description: "")
	leviticus_j = torah_j.books.create(name: "Leviticus", title: "利未記", book_code: "Lev", chinese_code: "利",
		description: "")
	numbers_j = torah_j.books.create(name: "Numbers", title: "民數記", book_code: "Nu", chinese_code: "民",
		description: "")
	deuteronomy_j = torah_j.books.create(name: "Deuteronomy", title: "申命記", book_code: "Dt", chinese_code: "申",
		description: "")

former_prophets = jewish_canon.collections.create(title: "前先知書", description: "")
	joshua_j = former_prophets.books.create(name: "Joshua", title: "約書亞記", book_code: "Jos", chinese_code: "書",
		description: "")
	judges_j = former_prophets.books.create(name: "Judges", title: "士師記", book_code: "Jdg", chinese_code: "士",
		description: "")
	samuel_12 = former_prophets.books.create(name: "Samuel", title: "撒母耳記", book_code: "Sa", chinese_code: "撒",
		description: "")
	kings_12 = former_prophets.books.create(name: "Kings", title: "列王記", book_code: "Ki", chinese_code: "王",
		description: "")

latter_prophets = jewish_canon.collections.create(title: "后先知書", description: "")
	isaiah_j = latter_prophets.books.create(name: "Isaiah", title: "以賽亞書", book_code: "Isa", chinese_code: "賽",
		description: "")
	jerimiah_j = latter_prophets.books.create(name: "Jerimiah", title: "耶利米書", book_code: "Jer", chinese_code: "耶",
		description: "")
	ezekiel_j = latter_prophets.books.create(name: "Ezekiel", title: "以西結書", book_code: "Eze", chinese_code: "結",
		description: "")
	the_twelve = latter_prophets.books.create(name: "The Twelve", title: "12先知書", book_code: "", chinese_code: "",
		description: "")

writings_truth = jewish_canon.collections.create(title: "真理", description: "")
	psalms_j = writings_truth.books.create(name: "Psalms", title: "詩篇", book_code: "Ps", chinese_code: "詩",
		description: "")
	proverbs_j = writings_truth.books.create(name: "Proverbs", title: "箴言", book_code: "Pr", chinese_code: "箴",
		description: "")
	job_j = writings_truth.books.create(name: "Job", title: "約伯記", book_code: "Job", chinese_code: "伯",
		description: "")

writings_scrolls = jewish_canon.collections.create(title: "一般文集", description: "")
	song_j = writings_scrolls.books.create(name: "Song of Solomon", title: "所羅門之歌", book_code: "SS", chinese_code: "歌",
		description: "")
	ruth_j = writings_scrolls.books.create(name: "Ruth", title: "路得記", book_code: "Ru", chinese_code: "得",
		description: "")
	lament = writings_scrolls.books.create(name: "Lamentations", title: "耶利米哀歌", book_code: "La", chinese_code: "哀",
		description: "")
	ecclesiastes_j = writings_scrolls.books.create(name: "Ecclesiastes", title: "傳道書", book_code: "Ecc", chinese_code: "傳",
		description: "")
	esther_j = writings_scrolls.books.create(name: "Esther", title: "以斯帖記", book_code: "Est", chinese_code: "斯",
		description: "")
	daniel_j = writings_scrolls.books.create(name: "Daniel", title: "但以理書", book_code: "Da", chinese_code: "但",
		description: "")
	ezra_nehe = writings_scrolls.books.create(name: "Ezra-Nehemiah", title: "以斯拉-尼西米記", book_code: "", chinese_code: "拉",
		description: "")
	chron_1２ = writings_scrolls.books.create(name: "Chronicles", title: "歷代志", book_code: "Ch", chinese_code: "代上",
		description: "")