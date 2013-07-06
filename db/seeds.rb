#ruby encoding: utf-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clear the BookSeries

# BookSeries: Canon from Protestants
protestant_canon = BookSeries.create(title: "基督教的聖經正典", 
	description: "基督教的聖經正典分爲舊約聖經與新約聖經。舊約的書卷是根據希伯來聖經正典，雖然内容與希伯來聖經正典一樣，
	但有些書卷分成兩本，如撒母耳記，列王記，歷代志等。另外，在書卷的安排上也有不同，將原來的律法書，先知書，文集，分成了五大類。PP
	基督教的新約正典是公元367年由亞他拿修主教擬定，共廿七卷書，就是今日的新約全書。
	公元397年東西方教會在迦太基大公會議一致接納這廿七本卷為新約正典。新約正典一般也分成五部分。")

torah = protestant_canon.collections.create(title: "律法書", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "fish 1.jpg")
	genesis = torah.books.create(name: "Genesis", title: "創世記", book_code: "Ge", chinese_code: "創",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。PP
		第二部分記載了神救贖計劃的開始，就是揀選亞伯拉罕，與他立約，要從他的身上興起屬神民族就是以色列。
		以色列將成爲神祭祀的囯，向全世界的萬民作見證，帶領萬民歸向神。",
		logo: "flower 2.jpg")
		gen1 = genesis.chapters.create(chapter_no: 1)
			gen1.verses.create(verse_no: 0,
				content_kjv: "",
				content_cuvs: "神六天的创造",
				content_cuvt: "神六天的創造",
				content_revs: "",
				content_revt: "") 
			gen1.verses.create(verse_no: 1,
				content_kjv: "",
				content_cuvs: "起初　神创造天地。",
				content_cuvt: "",
				content_revs: "起初　神创造天地。",
				content_revt: "") 
			gen1.verses.create(verse_no: 2,
				content_kjv: "",
				content_cuvs: "地是空虚混沌．渊面黑暗．　神的灵运行在水面上。",
				content_cuvt: "",
				content_revs: "地是空虛<font color=\"#FF0000\">無形．被黑暗完全遮蓋</font>．　神的灵运行在水面上。",
				content_revt: "")
			gen1.verses.create(verse_no: 3,
				content_kjv: "",
				content_cuvs: " 神说、要有光、就有了光。",
				content_cuvt: "",
				content_revs: " 神说、要有光、就有了光。",
				content_revt: "")
			gen1.verses.create(verse_no: 4,
				content_kjv: "",
				content_cuvs: " 神看光是好的、就把光暗分开了。",
				content_cuvt: "",
				content_revs: " 神看光是好的、就把光暗分开了。",
				content_revt: "")
			gen1.verses.create(verse_no: 5,
				content_kjv: "",
				content_cuvs: " 神称光为昼、称暗为夜．有晚上、有早晨、这是头一日。",
				content_cuvt: "",
				content_revs: " 神称光为昼、称暗为夜．有晚上、有早晨、这是头一日。",
				content_revt: "")
			gen1.verses.create(verse_no: 6,
				content_kjv: "",
				content_cuvs: " 神说、诸水之间要有空气、将水分为上下。",
				content_cuvt: "",
				content_revs: " 神说、诸水之间要有空气、将水分为上下。",
				content_revt: "")
			gen1.verses.create(verse_no: 7,
				content_kjv: "",
				content_cuvs: " 神就造出空气、将空气以下的水、空气以上的水分开了．事就这样成了。",
				content_cuvt: "",
				content_revs: " 神就造出空气、将空气以下的水、空气以上的水分开了．事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 8,
				content_kjv: "",
				content_cuvs: " 神称空气为天．有晚上、有早晨、是第二日。",
				content_cuvt: "",
				content_revs: " 神称空气为天．有晚上、有早晨、是第二日。",
				content_revt: "")
			gen1.verses.create(verse_no: 9,
				content_kjv: "",
				content_cuvs: " 神说、天下的水要聚在一处、使旱地露出来．事就这样成了。",
				content_cuvt: "",
				content_revs: " 神说、天下的水要聚在一处、使旱地露出来．事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 10,
				content_kjv: "",
				content_cuvs: " 神称旱地为地、称水的聚处为海．　神看着是好的。",
				content_cuvt: "",
				content_revs: " 神称旱地为地、称水的聚处为海．　神看着是好的。",
				content_revt: "")
			gen1.verses.create(verse_no: 11,
				content_kjv: "",
				content_cuvs: "　神说、地要发生青草、和结种子的菜蔬、并结果子的树木、各从其类、果子都包着核．事就这样成了。",
				content_cuvt: "",
				content_revs: "　神说、地要发生青草、和结种子的菜蔬、并结果子的树木、各从其类、果子都包着核．事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 12,
				content_kjv: "",
				content_cuvs: "于是地发生了青草、和结种子的菜蔬、各从其类、并结果子的树木、各从其类、果子都包着核。　神看着是好的。",
				content_cuvt: "",
				content_revs: "于是地发生了青草、和结种子的菜蔬、各从其类、并结果子的树木、各从其类、果子都包着核。　神看着是好的。",
				content_revt: "")
			gen1.verses.create(verse_no: 13,
				content_kjv: "",
				content_cuvs: "有晚上、有早晨、是第三日。",
				content_cuvt: "",
				content_revs: "有晚上、有早晨、是第三日。",
				content_revt: "")
			gen1.verses.create(verse_no: 14,
				content_kjv: "",
				content_cuvs: "　神说、天上要有光体、可以分昼夜、作记号、定节令、日子、年岁。",
				content_cuvt: "",
				content_revs: "　神说、天上要有光体、可以分昼夜、作记号、定节令、日子、年岁。",
				content_revt: "")
			gen1.verses.create(verse_no: 15,
				content_kjv: "",
				content_cuvs: "并要发光在天空、普照在地上．事就这样成了。",
				content_cuvt: "",
				content_revs: "并要发光在天空、普照在地上．事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 16,
				content_kjv: "",
				content_cuvs: "于是　神造了两个大光、大的管昼、小的管夜．又造众星。",
				content_cuvt: "",
				content_revs: "于是　神造了两个大光、大的管昼、小的管夜．又造众星。",
				content_revt: "")
			gen1.verses.create(verse_no: 17,
				content_kjv: "",
				content_cuvs: "就把这些光摆列在天空、普照在地上、",
				content_cuvt: "",
				content_revs: "就把这些光摆列在天空、普照在地上、",
				content_revt: "")
			gen1.verses.create(verse_no: 18,
				content_kjv: "",
				content_cuvs: "管理昼夜、分别明暗．　神看着是好的。",
				content_cuvt: "",
				content_revs: "管理昼夜、分别明暗．　神看着是好的。",
				content_revt: "")
			gen1.verses.create(verse_no: 19,
				content_kjv: "",
				content_cuvs: "有晚上、有早晨、是第四日。",
				content_cuvt: "",
				content_revs: "有晚上、有早晨、是第四日。",
				content_revt: "")
			gen1.verses.create(verse_no: 20,
				content_kjv: "",
				content_cuvs: "　神说、水要多多滋生有生命的物．要有雀鸟飞在地面以上、天空之中。",
				content_cuvt: "",
				content_revs: "　神说、水要多多滋生有生命的物．要有雀鸟飞在地面以上、天空之中。",
				content_revt: "")
			gen1.verses.create(verse_no: 21,
				content_kjv: "",
				content_cuvs: "　神就造出大鱼、和水中所滋生各样有生命的动物、各从其类．又造出各样飞鸟、各从其类．　神看着是好的。",
				content_cuvt: "",
				content_revs: "　神就造出大鱼、和水中所滋生各样有生命的动物、各从其类．又造出各样飞鸟、各从其类．　神看着是好的。",
				content_revt: "")
			gen1.verses.create(verse_no: 22,
				content_kjv: "",
				content_cuvs: "　神就赐福给这一切、说、滋生繁多、充满海中的水．雀鸟也要多生在地上。",
				content_cuvt: "",
				content_revs: "　神就赐福给这一切、说、滋生繁多、充满海中的水．雀鸟也要多生在地上。",
				content_revt: "")
			gen1.verses.create(verse_no: 23,
				content_kjv: "",
				content_cuvs: "有晚上、有早晨、是第五日。",
				content_cuvt: "",
				content_revs: "有晚上、有早晨、是第五日。",
				content_revt: "")
			gen1.verses.create(verse_no: 24,
				content_kjv: "",
				content_cuvs: "　神说、地要生出活物来、各从其类．牲畜、昆虫、野兽、各从其类．事就这样成了。",
				content_cuvt: "",
				content_revs: "　神说、地要生出活物来、各从其类．牲畜、昆虫、野兽、各从其类．事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 25,
				content_kjv: "",
				content_cuvs: "于是　神造出野兽、各从其类．牲畜、各从其类．地上一切昆虫、各从其类．　神看着是好的。",
				content_cuvt: "",
				content_revs: "于是　神造出野兽、各从其类．牲畜、各从其类．地上一切昆虫、各从其类．　神看着是好的。",
				content_revt: "")  
			gen1.verses.create(verse_no: 26,
				content_kjv: "",
				content_cuvs: "　神说、我们要照着我们的形像、按着我们的样式造人、使他们管理海里的鱼、空中的鸟、地上的牲畜、和全地、并地上所爬的一切昆虫。",
				content_cuvt: "",
				content_revs: "　神说、我们要照着我们的形像、按着我们的样式造人、使他们管理海里的鱼、空中的鸟、地上的牲畜、和全地、并地上所爬的一切昆虫。",
				content_revt: "")
			gen1.verses.create(verse_no: 27,
				content_kjv: "",
				content_cuvs: "　神就照着自己的形像造人、乃是照着他的形像造男造女。",
				content_cuvt: "",
				content_revs: "　神就照着自己的形像造人、乃是照着他的形像造男造女。",
				content_revt: "")
			gen1.verses.create(verse_no: 28,
				content_kjv: "",
				content_cuvs: "　神就赐福给他们、又对他们说、要生养众多、遍满地面、治理这地．也要管理海里的鱼、空中的鸟．和地上各样行动的活物。",
				content_cuvt: "",
				content_revs: "　神就赐福给他们、又对他们说、要生养众多、遍满地面、治理这地．也要管理海里的鱼、空中的鸟．和地上各样行动的活物。",
				content_revt: "")
			gen1.verses.create(verse_no: 29,
				content_kjv: "",
				content_cuvs: "　神说、看哪、我将遍地上一切结种子的菜蔬、和一切树上所结有核的果子、全赐给你们作食物。",
				content_cuvt: "",
				content_revs: "　神说、看哪、我将遍地上一切结种子的菜蔬、和一切树上所结有核的果子、全赐给你们作食物。",
				content_revt: "")
			gen1.verses.create(verse_no: 30,
				content_kjv: "",
				content_cuvs: "至于地上的走兽、和空中的飞鸟、并各样爬在地上有生命的物、我将青草赐给他们作食物．事就这样成了。",
				content_cuvt: "",
				content_revs: "至于地上的走兽、和空中的飞鸟、并各样爬在地上有生命的物、我将青草赐给他们作食物．事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 31,
				content_kjv: "",
				content_cuvs: "　神看着一切所造的都甚好．有晚上、有早晨、是第六日。",
				content_cuvt: "",
				content_revs: "　神看着一切所造的都甚好．有晚上、有早晨、是第六日。",
				content_revt: "")
		gen2 = genesis.chapters.create(chapter_no: 2)
			gen2.verses.create(verse_no: 0,
				content_kjv: "",
				content_cuvs: "第七天定为安息日",
				content_cuvt: "第七天定為安息日",
				content_revs: "",
				content_revt: "")
			gen2.verses.create(verse_no: 1,
				content_kjv: "",
				content_cuvs: "天地万物都造齐了。",
				content_cuvt: "",
				content_revs: "天地万物都造齐了。",
				content_revt: "")
			gen2.verses.create(verse_no: 2,
				content_kjv: "",
				content_cuvs: "到第七日、　神造物的工已经完毕、就在第七日歇了他一切的工、安息了。",
				content_cuvt: "",
				content_revs: "到第七日、　神造物的工已经完毕、就在第七日歇了他一切的工、安息了。",
				content_revt: "")
			gen2.verses.create(verse_no: 3,
				content_kjv: "",
				content_cuvs: "　神赐福给第七日、定为圣日、因为在这日　神歇了他一切创造的工、就安息了。",
				content_cuvt: "",
				content_revs: "　神赐福给第七日、定为圣日、因为在这日　神歇了他一切创造的工、就安息了。",
				content_revt: "")
			gen2.verses.create(verse_no: 4,
				content_kjv: "",
				content_cuvs: "创造天地的来历、在耶和华　神造天地的日子、乃是这样：",
				content_cuvt: "",
				content_revs: "创造天地的来历、在耶和华　神造天地的日子、乃是这样:",
				content_revt: "")
			gen2.verses.create(verse_no: 5,
				content_cuvs: "野地还没有草木、田间的菜蔬还没有长起来、因为耶和华　神还没有降雨在地上、也没有人耕地。",
				content_cuvt: "",
				content_revs: "野地还没有草木、田间的菜蔬还没有长起来、因为耶和华　神还没有降雨在地上、也没有人耕地。",
				content_revt: "")
		gen_3 = genesis.chapters.create(chapter_no: 3)
		gen_4 = genesis.chapters.create(chapter_no: 4)
		gen_5 = genesis.chapters.create(chapter_no: 5)
		gen_6 = genesis.chapters.create(chapter_no: 6)
		gen_7 = genesis.chapters.create(chapter_no: 7)
		gen_8 = genesis.chapters.create(chapter_no: 8)
		gen_9 = genesis.chapters.create(chapter_no: 9)
		gen_10 = genesis.chapters.create(chapter_no: 10)
		gen_11 = genesis.chapters.create(chapter_no: 11)
		gen_12 = genesis.chapters.create(chapter_no: 12)
		gen_13 = genesis.chapters.create(chapter_no: 13)
		gen_14 = genesis.chapters.create(chapter_no: 14)
		gen_15 = genesis.chapters.create(chapter_no: 15)
		gen_16 = genesis.chapters.create(chapter_no: 16)
		gen_17 = genesis.chapters.create(chapter_no: 17)
		gen_18 = genesis.chapters.create(chapter_no: 18)
		gen_19 = genesis.chapters.create(chapter_no: 19)
		gen_20 = genesis.chapters.create(chapter_no: 20)
		gen_21 = genesis.chapters.create(chapter_no: 21)
		gen_22 = genesis.chapters.create(chapter_no: 22)
		gen_23 = genesis.chapters.create(chapter_no: 23)
		gen_24 = genesis.chapters.create(chapter_no: 24)
		gen_25 = genesis.chapters.create(chapter_no: 25)
		gen_26 = genesis.chapters.create(chapter_no: 26)
		gen_27 = genesis.chapters.create(chapter_no: 27)
		gen_28 = genesis.chapters.create(chapter_no: 28)
		gen_29 = genesis.chapters.create(chapter_no: 29)
		gen_30 = genesis.chapters.create(chapter_no: 30)
		gen_31 = genesis.chapters.create(chapter_no: 31)
		gen_32 = genesis.chapters.create(chapter_no: 32)
		gen_33 = genesis.chapters.create(chapter_no: 33)
		gen_34 = genesis.chapters.create(chapter_no: 34)
		gen_35 = genesis.chapters.create(chapter_no: 35)
		gen_36 = genesis.chapters.create(chapter_no: 36)
		gen_37 = genesis.chapters.create(chapter_no: 37)
		gen_38 = genesis.chapters.create(chapter_no: 38)
		gen_39 = genesis.chapters.create(chapter_no: 39)
		gen_40 = genesis.chapters.create(chapter_no: 40)
		gen_41 = genesis.chapters.create(chapter_no: 41)
		gen_42 = genesis.chapters.create(chapter_no: 42)
		gen_43 = genesis.chapters.create(chapter_no: 43)
		gen_44 = genesis.chapters.create(chapter_no: 44)
		gen_45 = genesis.chapters.create(chapter_no: 45)
		gen_46 = genesis.chapters.create(chapter_no: 46)
		gen_47 = genesis.chapters.create(chapter_no: 47)
		gen_48 = genesis.chapters.create(chapter_no: 48)
		gen_49 = genesis.chapters.create(chapter_no: 49)
		gen_50 = genesis.chapters.create(chapter_no: 50)

	exodus = torah.books.create(name: "Exodus", title: "出埃及記", book_code: "Ex", chinese_code: "出",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。",
		logo: "flower 3.jpg")
		exo1 = exodus.chapters.create(chapter_no: 1)
			exo1.verses.create(verse_no: 0,
				content_kjv: "",
				content_cuvs: "以色列人在埃及为奴",
				content_cuvt: "以色列人在埃及為奴",
				content_revs: "",
				content_revt: "")
			exo1.verses.create(verse_no: 1,
				content_kjv: "",
				content_cuvs: "以色列的众子、各带家眷和雅各一同来到埃及、他们的名字记在下面。",
				content_cuvt: "",
				content_revs: "以色列的众子、各带家眷和雅各一同来到埃及、他们的名字记在下面。",
				content_revt: "")
			exo1.verses.create(verse_no: 2,
				content_kjv: "",
				content_cuvs: "有流便、西缅、利未、犹大、",
				content_cuvt: "",
				content_revs: "有流便、西缅、利未、犹大、",
				content_revt: "")
		exo2 = exodus.chapters.create(chapter_no: 2)
			exo2.verses.create(verse_no: 0,
				content_kjv: "",
				content_cuvs: "摩西诞生",
				content_cuvt: "摩西誕生",
				content_revs: "",
				content_revt: "")
			exo2.verses.create(verse_no: 1,
				content_kjv: "",
				content_cuvs: "有一个利未家的人、娶了一个利未女子为妻。 ",
				content_cuvt: "",
				content_revs: "有一个利未家的人、娶了一个利未女子为妻。 ",
				content_revt: "")
			exo2.verses.create(verse_no: 2,
				content_kjv: "",
				content_cuvs: "那女人怀孕、生一个儿子、见他俊美就藏了他三个月。",
				content_cuvt: "",
				content_revs: "那女人怀孕、生一个儿子、见他俊美就藏了他三个月。",
				content_revt: "")
		exo3 = exodus.chapters.create(chapter_no: 3)
			exo3.verses.create(verse_no: 0,
				content_kjv: "",
				content_cuvs: "摩西蒙召",
				content_cuvt: "摩西蒙召",
				content_revs: "",
				content_revt: "")
			exo3.verses.create(verse_no: 1,
				content_kjv: "",
				content_cuvs: "摩西牧养他岳父米甸祭司叶忒罗的羊群、一日领羊群往野外去、到了　神的山、就是何烈山。",
				content_cuvt: "",
				content_revs: "摩西牧养他岳父米甸祭司叶忒罗的羊群、一日领羊群往野外去、到了　神的山、就是何烈山。",
				content_revt: "")
			exo3.verses.create(verse_no: 2,
				content_kjv: "",
				content_cuvs: "耶和华的使者从荆棘里火焰中向摩西显现．摩西观看、不料、荆棘被火烧着、却没有烧毁。",
				content_cuvt: "",
				content_revs: "耶和华的使者从荆棘里火焰中向摩西显现．摩西观看、不料、荆棘被火烧着、却没有烧毁。",
				content_revt: "")
	leviticus = torah.books.create(name: "Leviticus", title: "利未記", book_code: "Lev", chinese_code: "利",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。",
		logo: "flower 6.jpg")
	numbers = torah.books.create(name: "Numbers", title: "民數記", book_code: "Nu", chinese_code: "民",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。",
		logo: "flower 4.jpg")
	deuteronomy = torah.books.create(name: "Deuteronomy", title: "申命記", book_code: "Dt", chinese_code: "申",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。",
		logo: "flower 5.jpg")

isralite_history = protestant_canon.collections.create(title: "以色列歷史", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "flower 1.jpg")
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
		description: "")
	esther = isralite_history.books.create(name: "Esther", title: "以斯帖記", book_code: "Est", chinese_code: "斯",
		description: "")

poetry = protestant_canon.collections.create(title: "智慧和詩歌", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "flower 2.jpg")
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

major_prophets = protestant_canon.collections.create(title: "大先知書", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "flower 3.jpg")
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

minor_prophets = protestant_canon.collections.create(title: "小先知書", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "flower 4.jpg")
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

gospels = protestant_canon.collections.create(title: "四福音書", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "light 1.jpg")
	matthew = gospels.books.create(name: "Matthew", title: "馬太福音", book_code: "Mt", chinese_code: "太",
		description: "")
	mark = gospels.books.create(name: "Mark", title: "馬可福音", book_code: "Mk", chinese_code: "可",
		description: "")
	luke = gospels.books.create(name: "Luke", title: "路加福音", book_code: "Lk", chinese_code: "路",
		description: "")
	john = gospels.books.create(name: "John", title: "約翰福音", book_code: "Jn", chinese_code: "約",
		description: "")

church_history = protestant_canon.collections.create(title: "教會歷史", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "light 2.jpg")
	acts = church_history.books.create(name: "Acts", title: "使徒行傳", book_code: "Ac", chinese_code: "",
		description: "")

paul_letters = protestant_canon.collections.create(title: "保羅書信", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "light 3.jpg")
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
	thess_2 = paul_letters.books.create(name: "2 Thessalonians", title: "帖撒羅尼迦后書", book_code: "2Th", chinese_code: "帖后",
		description: "")
	tim_1 = paul_letters.books.create(name: "1 Timothy", title: "提摩太前書", book_code: "1Ti", chinese_code: "提前",
		description: "")
	tim_2 = paul_letters.books.create(name: "2 Timothy", title: "提摩太后書", book_code: "2Ti", chinese_code: "提后",
		description: "")
	titus = paul_letters.books.create(name: "Titus", title: "提多書", book_code: "Tit", chinese_code: "多",
		description: "")
	philemon = paul_letters.books.create(name: "Philemon", title: "腓利門書", book_code: "Phm", chinese_code: "門",
		description: "")
	
other_letters = protestant_canon.collections.create(title: "一般書信", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "flower 1.jpg")
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

end_prophecy = protestant_canon.collections.create(title: "末世預言", 
	description: "在舊約正典中，最有權威性，就是神藉著摩西所啓示給以色列民的五卷律法書，其完成的時間約在公元前1450年左右。
	律法書的希伯來文是：torah。意思是神對人說的話，使人得著喜樂和豐盛的生命。所以這五卷律法書的内涵不是來轄制人，限制人，
	而是人若敬畏神的誡命，遵行神的法則，就可以得生命，而且得的更豐盛。PP
	律法書是整本聖經的根基。律法書記載神起初創造的偉大以及爲人預備的美好
	但人受魔鬼的欺騙而悖逆神，使原來神讓人來管理的美好世界被魔鬼控制，人也成爲罪的奴隸。但神對人有無比的大愛，安排了救贖計劃。
	這個計劃在1500年后耶穌降生顯明出來。所以讀了舊約的律法書，就明白耶穌來到世界為人類死在十字架的原因。",
	logo: "flower 2.jpg")
	revelation = end_prophecy.books.create(name: "Revelation", title: "啓示錄", book_code: "Rev", chinese_code: "",
		description: "")

# BookSeries: Canon from Catholics
catholic_canon = BookSeries.create(title: "天主教的聖經正典", 
	description: "天主教的聖經正典比基督教的正典多7卷書。多出的的書卷都是在舊約，原因是其依據的版本為七十士譯本，而七十士譯本
	是希伯來聖經正典在公元前285年的希臘文翻譯，除了原來的書卷，當時譯者又加入在公元前400年后流行的一些書卷。
	然而猶太教的大公會議並不承認這些後來加入的書卷，基督教也不接受，稱其為次經。
	天主教的新約聖經正典則與基督教聖經正典一樣。PP
	天主教通用的新舊約聖經版本稱爲武大加譯本(Vulgate)，是拉丁文(當時的意大利語文)。
	德國的馬丁路德和英國的威克里夫曾經根據武大加版本將聖經翻譯成德文和英文。
	但直到在16世紀，英國的丁代爾（Tindel)才根據正典的希伯來文和希臘文翻譯成英文。")
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
		description: "")
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
	obadiah_c = prophets.books.create(name: "Obadiah", title: "俄巴底亞", book_code: "Ob", chinese_code: "俄",
		description: "")
	jonah_c = prophets.books.create(name: "Jonah", title: "約納", book_code: "Joh", chinese_code: "納",
		description: "")
	micah_c = prophets.books.create(name: "Micah", title: "米該亞", book_code: "Mi", chinese_code: "米",
		description: "")
	nahum_c = prophets.books.create(name: "Nahum", title: "納鴻", book_code: "Na", chinese_code: "鴻",
		description: "")
	habakkuk_c = prophets.books.create(name: "Habakkuk", title: "哈巴谷", book_code: "Hab", chinese_code: "哈",
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
	thess_2c = paul_letters_c.books.create(name: "2 Thessalonians", title: "得撒洛尼后書", book_code: "2Th", chinese_code: "得后",
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

end_prophecy_c = catholic_canon.collections.create(title: "末世預言", description: "")
	revelation_c = end_prophecy_c.books.create(name: "Revelation", title: "若望默示錄", book_code: "Rv", chinese_code: "",
		description: "")

jewish_canon = BookSeries.create(title: "希伯來聖經正典", 
	description: "希伯來聖經是猶太教的正典，共分成三部分：律法書，先知書，和文集。
	律法書的權威性在摩西時代就已經確立，是舊約聖經權威最高的。先知書在主前兩百多年前確定，又分爲前先知書(Former Prophets)，
	后先知書(Latter Prophets)。
	文集則是在公元90年由猶太拉比開大會確定，又分爲真理(Truth)和卷軸(Scrolls)。")

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

writings_truth = jewish_canon.collections.create(title: "文集：真理", description: "")
	psalms_j = writings_truth.books.create(name: "Psalms", title: "詩篇", book_code: "Ps", chinese_code: "詩",
		description: "")
	proverbs_j = writings_truth.books.create(name: "Proverbs", title: "箴言", book_code: "Pr", chinese_code: "箴",
		description: "")
	job_j = writings_truth.books.create(name: "Job", title: "約伯記", book_code: "Job", chinese_code: "伯",
		description: "")

writings_scrolls = jewish_canon.collections.create(title: "文集：卷軸", description: "")
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

