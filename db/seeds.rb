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
		logo: "flower 2.jpg", static_link: "book_cover_1")

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
				content_cuvs: "地是空虚混沌．渊面黑暗。　神的灵运行在水面上。",
				content_cuvt: "",
				content_revs: "地<font color=\"#FF0000\">还没成形，空无一物．被黑暗完全遮蓋</font>。 神的灵运行在水面上。",
				content_revt: "")
			gen1.verses.create(verse_no: -1,
				content_kjv: "",
				content_cuvs: "头一日",
				content_cuvt: "頭一日",
				content_revs: "",
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
			gen1.verses.create(verse_no: -1,
				content_kjv: "",
				content_cuvs: "第二日",
				content_cuvt: "第二日",
				content_revs: "",
				content_revt: "")
			gen1.verses.create(verse_no: 6,
				content_kjv: "",
				content_cuvs: " 神说、诸水之间要有空气、将水分为上下。",
				content_cuvt: "",
				content_revs: " 神说、诸水之间要有<font color=\"#FF0000\">穹苍</font>、将水分为上下。",
				content_revt: "")
			gen1.verses.create(verse_no: 7,
				content_kjv: "",
				content_cuvs: " 神就造出空气、将空气以下的水、空气以上的水分开了．事就这样成了。",
				content_cuvt: "",
				content_revs: " 神就造出空气、将<font color=\"#FF0000\">穹苍</font>以下的水、
					<font color=\"#FF0000\">穹苍</font>以上的水分开了．事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 8,
				content_kjv: "",
				content_cuvs: " 神称空气为天。有晚上、有早晨、是第二日。",
				content_cuvt: "",
				content_revs: " 神称<font color=\"#FF0000\">穹苍</font>为天。有晚上、有早晨、是第二日。",
				content_revt: "")
			gen1.verses.create(verse_no: -1,
				content_kjv: "",
				content_cuvs: "第三日",
				content_cuvt: "第三日",
				content_revs: "",
				content_revt: "")
			gen1.verses.create(verse_no: 9,
				content_kjv: "",
				content_cuvs: " 神说、天下的水要聚在一处、使旱地露出来。事就这样成了。",
				content_cuvt: "",
				content_revs: " 神说、天下的水要聚在一处、使旱地露出来。事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 10,
				content_kjv: "",
				content_cuvs: " 神称旱地为地、称水的聚处为海。　神看着是好的。",
				content_cuvt: "",
				content_revs: " 神称旱地为<font color=\"#FF0000\">陆</font>为地、称水的聚处为海。　神看着是好的。",
				content_revt: "")
			gen1.verses.create(verse_no: 11,
				content_kjv: "",
				content_cuvs: "　神说、地要发生青草、和结种子的菜蔬、并结果子的树木、各从其类、果子都包着核。事就这样成了。",
				content_cuvt: "",
				content_revs: "　神说、地要发生青草、结种子的菜蔬、并结果子的树木、<font color=\"#FF0000\">果子里要有种子。
					这些种子又会产生结出它们的菜蔬和果树</font>。事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 12,
				content_kjv: "",
				content_cuvs: "于是地发生了青草、和结种子的菜蔬、各从其类、并结果子的树木、各从其类、果子都包着核。　神看着是好的。",
				content_cuvt: "",
				content_revs: "于是地发生了青草、结种子的菜蔬、<font color=\"#FF0000\">并结果子的树木，果子里有种子。
					这些种子又长出菜蔬和果树、和原来结出这些种子的菜蔬果树一样</font>。　神看着是好的。",
				content_revt: "")
			gen1.verses.create(verse_no: 13,
				content_kjv: "",
				content_cuvs: "有晚上、有早晨、是第三日。",
				content_cuvt: "",
				content_revs: "有晚上、有早晨、是第三日。",
				content_revt: "")
			gen1.verses.create(verse_no: -1,
				content_kjv: "",
				content_cuvs: "第四日",
				content_cuvt: "第四日",
				content_revs: "",
				content_revt: "")
			gen1.verses.create(verse_no: 14,
				content_kjv: "",
				content_cuvs: "　神说、天上要有光体、可以分昼夜、作记号、定节令、日子、年岁。",
				content_cuvt: "",
				content_revs: "　神说、<font color=\"#FF0000\">穹苍之上</font>要有光体、可以分昼夜、作记号、定节令、日子、年岁。",
				content_revt: "")
			gen1.verses.create(verse_no: 15,
				content_kjv: "",
				content_cuvs: "并要发光在天空、普照在地上。事就这样成了。",
				content_cuvt: "",
				content_revs: "并要发光在天空、普照在地上。事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 16,
				content_kjv: "",
				content_cuvs: "于是　神造了两个大光、大的管昼、小的管夜，又造众星。",
				content_cuvt: "",
				content_revs: "于是　神造了两个大光、<font color=\"#FF0000\">较</font>大的管昼、
					<font color=\"#FF0000\">较</font>小的管夜，又造众星。",
				content_revt: "")
			gen1.verses.create(verse_no: 17,
				content_kjv: "",
				content_cuvs: "就把这些光摆列在天空、普照在地上、",
				content_cuvt: "",
				content_revs: "就把这些光摆列在天空、普照在地上、",
				content_revt: "")
			gen1.verses.create(verse_no: 18,
				content_kjv: "",
				content_cuvs: "管理昼夜、分别明暗。神看着是好的。",
				content_cuvt: "",
				content_revs: "管理昼夜、分别明暗。神看着是好的。",
				content_revt: "")
			gen1.verses.create(verse_no: 19,
				content_kjv: "",
				content_cuvs: "有晚上、有早晨、是第四日。",
				content_cuvt: "",
				content_revs: "有晚上、有早晨、是第四日。",
				content_revt: "")
			gen1.verses.create(verse_no: -1,
				content_kjv: "",
				content_cuvs: "第五日",
				content_cuvt: "第五日",
				content_revs: "",
				content_revt: "")
			gen1.verses.create(verse_no: 20,
				content_kjv: "",
				content_cuvs: "　神说、水要多多滋生有生命的物．要有雀鸟飞在地面以上、天空之中。",
				content_cuvt: "",
				content_revs: "　神说、水要多多滋生<font color=\"#FF0000\">各样</font>有生命的物．要有雀鸟飞在地面以上、天空之中。",
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
				content_revs: "　神就赐福给这一切、说、滋生繁多、充满海中的水．
					雀鸟也要<font color=\"#FF0000\">繁多</font>在地上。",
				content_revt: "")
			gen1.verses.create(verse_no: 23,
				content_kjv: "",
				content_cuvs: "有晚上、有早晨、是第五日。",
				content_cuvt: "",
				content_revs: "有晚上、有早晨、是第五日。",
				content_revt: "")
			gen1.verses.create(verse_no: -1,
				content_kjv: "",
				content_cuvs: "第六日",
				content_cuvt: "第六日",
				content_revs: "",
				content_revt: "")
			gen1.verses.create(verse_no: 24,
				content_kjv: "",
				content_cuvs: "　神说、地要生出活物来、各从其类．牲畜、昆虫、野兽、各从其类．事就这样成了。",
				content_cuvt: "",
				content_revs: "　神说、地要生出<font color=\"#FF0000\">各样</font>活物来,
					<font color=\"#FF0000\">他们又能产生与自己相同的下一代-</font>
					牲畜、<font color=\"#FF0000\">地上爬的</font>、野兽
					<font color=\"#FF0000\">等，各从其类</font>。事就这样成了。",
				content_revt: "")
			gen1.verses.create(verse_no: 25,
				content_kjv: "",
				content_cuvs: "于是　神造出野兽、各从其类。牲畜、各从其类。地上一切昆虫、各从其类。　神看着是好的。",
				content_cuvt: "",
				content_revs: "于是　神造出野兽、各从其类。牲畜、各从其类。地上一切<font color=\"#FF0000\">爬的</font>、、各从其类。　神看着是好的。",
				content_revt: "")  
			gen1.verses.create(verse_no: 26,
				content_kjv: "",
				content_cuvs: "　神说、我们要照着我们的形像、按着我们的样式造人、使他们管理海里的鱼、空中的鸟、地上的牲畜、和全地、并地上所爬的一切昆虫。",
				content_cuvt: "",
				content_revs: "　神说、我们要照着我们的形像、按着我们的样式造人、使他们管理海里的鱼、空中的鸟、地上的牲畜、和全地、并地上
					<font color=\"#FF0000\">一切所爬的</font>。",
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
				content_revs: "　神说、看哪、我将遍地上一切结种子的菜蔬、
					和一切<font color=\"#FF0000\">结果子并果子有种子的</font>树、全赐给你们作食物。",
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

			gen1.bible_notes.create(verse_from: 1, verse_to: 2, usage: 0,
				note: "圣经记载世界的开始是出于神。用比喻说就是有一位设计和建筑师，按着他的理念有了世界。
				在描述接下来六天创造的过程之前，虽然还没有光，圣经记载已经有地和水，只是出于混乱的状态。
				这样的情况或许接近科学大爆炸的理论，在没有大爆炸或有光之前，已经有一个大黑洞。")
			gen1.bible_notes.create(verse_from: 5, verse_to: 5, usage: 0,
				note: "一般在读圣经，理解圣经时，应从字面意思来理解。但在这节经文中，说有早晨有晚上是违反因果关系的。
				因为在第四日 神造两个大光来定白天晚上之前，是没有所谓的白天晚上的。
				我们知道圣经有不同的文体，解释圣经时要根据文体来。例如诗篇是感情的发抒，就不能用字面意义直接解释。
				所以创世记第一章在记载每一阶段的创造时，用了\"有晚上，有早晨\"来做结束，是一种文体，用来表达创造的阶段性，
				在这里的每一日不能用我们现在所认知的一天来解释。
				英王钦定本（KJV）在创2:4用了一个英文字generations来说明第一章创造的过程，
				就是同样认为第一章所说的每一天是创造阶段的意思。好像我们现在的无线电话有2G, 3G, 4G, 5G, 
				或说下一代的无线电话通信（next generation celluar phone）, 这些数字都是代表新一代的通信技术。")
			gen1.bible_notes.create(verse_from: 16, verse_to: 16, usage: 0,
				note: "既然说两个大光，就不能后来又说小。只能说两个大光中有一个较大的，有一个较小的，在翻译上精准些。")

			gen1.verse_blocks.create(book_code: "Jn", chapter_no: 1, verse_from: 1, verse_to: 14,
				title: "萬物是藉著基督造的")
			gen1.verse_blocks.create(book_code: "Ro", chapter_no: 1, verse_from: 20, verse_to: 20,
				title: "藉著所造之物可以知道神")
			gen1.verse_blocks.create(book_code: "Col", chapter_no: 1, verse_from: 15, verse_to: 17,
				title: "萬物也是為基督而造")
			gen1.verse_blocks.create(book_code: "Ps", chapter_no: 19, verse_from: 1, verse_to: 6,
				title: "諸天述説神創造的榮耀")

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
				content_kjv: "",
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
		exo4 = exodus.chapters.create(chapter_no: 4)
		exo5 = exodus.chapters.create(chapter_no: 5)
		exo6 = exodus.chapters.create(chapter_no: 6)
		exo7 = exodus.chapters.create(chapter_no: 7)
		exo8 = exodus.chapters.create(chapter_no: 8)
		exo9 = exodus.chapters.create(chapter_no: 9)

		exo10 = exodus.chapters.create(chapter_no: 10)
		exo14 = exodus.chapters.create(chapter_no: 14)
		exo15 = exodus.chapters.create(chapter_no: 15)
		exo16 = exodus.chapters.create(chapter_no: 16)
		exo17 = exodus.chapters.create(chapter_no: 17)
		exo18 = exodus.chapters.create(chapter_no: 18)
		exo19 = exodus.chapters.create(chapter_no: 19)
		exo20 = exodus.chapters.create(chapter_no: 20)

		exo21 = exodus.chapters.create(chapter_no: 21)
		exo22 = exodus.chapters.create(chapter_no: 22)
		exo23 = exodus.chapters.create(chapter_no: 23)
		exo24 = exodus.chapters.create(chapter_no: 24)
		exo25 = exodus.chapters.create(chapter_no: 25)
		exo26 = exodus.chapters.create(chapter_no: 26)
		exo27 = exodus.chapters.create(chapter_no: 27)
		exo28 = exodus.chapters.create(chapter_no: 28)
		exo29 = exodus.chapters.create(chapter_no: 29)
		exo30 = exodus.chapters.create(chapter_no: 30)

		exo31 = exodus.chapters.create(chapter_no: 31)
		exo32 = exodus.chapters.create(chapter_no: 32)
		exo33 = exodus.chapters.create(chapter_no: 33)
		exo34 = exodus.chapters.create(chapter_no: 34)
		exo35 = exodus.chapters.create(chapter_no: 35)
		exo36 = exodus.chapters.create(chapter_no: 36)
		exo37 = exodus.chapters.create(chapter_no: 37)
		exo38 = exodus.chapters.create(chapter_no: 38)
		exo39 = exodus.chapters.create(chapter_no: 39)
		exo40 = exodus.chapters.create(chapter_no: 40)

	leviticus = torah.books.create(name: "Leviticus", title: "利未記", book_code: "Lev", chinese_code: "利",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。",
		logo: "flower 6.jpg")

		lev1 = leviticus.chapters.create(chapter_no: 1)
		lev2 = leviticus.chapters.create(chapter_no: 2)
		lev3 = leviticus.chapters.create(chapter_no: 3)
		lev4 = leviticus.chapters.create(chapter_no: 4)
		lev5 = leviticus.chapters.create(chapter_no: 5)
		lev6 = leviticus.chapters.create(chapter_no: 6)
		lev7 = leviticus.chapters.create(chapter_no: 7)
		lev8 = leviticus.chapters.create(chapter_no: 8)
		lev9 = leviticus.chapters.create(chapter_no: 9)
		lev10 = leviticus.chapters.create(chapter_no: 10)

		lev11 = leviticus.chapters.create(chapter_no: 11)
		lev12 = leviticus.chapters.create(chapter_no: 12)
		lev13 = leviticus.chapters.create(chapter_no: 13)
		lev14 = leviticus.chapters.create(chapter_no: 14)
		lev15 = leviticus.chapters.create(chapter_no: 15)
		lev16 = leviticus.chapters.create(chapter_no: 16)
		lev17 = leviticus.chapters.create(chapter_no: 17)
		lev18 = leviticus.chapters.create(chapter_no: 18)
		lev19 = leviticus.chapters.create(chapter_no: 19)
		lev20 = leviticus.chapters.create(chapter_no: 20)

		lev21 = leviticus.chapters.create(chapter_no: 21)
		lev22 = leviticus.chapters.create(chapter_no: 22)
		lev23 = leviticus.chapters.create(chapter_no: 23)
		lev24 = leviticus.chapters.create(chapter_no: 24)
		lev25 = leviticus.chapters.create(chapter_no: 25)
		lev26 = leviticus.chapters.create(chapter_no: 26)
		lev27 = leviticus.chapters.create(chapter_no: 27)


	numbers = torah.books.create(name: "Numbers", title: "民數記", book_code: "Nu", chinese_code: "民",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。",
		logo: "flower 4.jpg")

		num1 = numbers.chapters.create(chapter_no: 1)
		num2 = numbers.chapters.create(chapter_no: 2)
		num3 = numbers.chapters.create(chapter_no: 3)
		num4 = numbers.chapters.create(chapter_no: 4)
		num5 = numbers.chapters.create(chapter_no: 5)
		num6 = numbers.chapters.create(chapter_no: 6)
		num7 = numbers.chapters.create(chapter_no: 7)
		num8 = numbers.chapters.create(chapter_no: 8)
		num9 = numbers.chapters.create(chapter_no: 9)
		num10 = numbers.chapters.create(chapter_no: 10)

		num11 = numbers.chapters.create(chapter_no: 11)
		num12 = numbers.chapters.create(chapter_no: 12)
		num13 = numbers.chapters.create(chapter_no: 13)
		num14 = numbers.chapters.create(chapter_no: 14)
		num15 = numbers.chapters.create(chapter_no: 15)
		num16 = numbers.chapters.create(chapter_no: 16)
		num17 = numbers.chapters.create(chapter_no: 17)
		num18 = numbers.chapters.create(chapter_no: 18)
		num19 = numbers.chapters.create(chapter_no: 19)
		num20 = numbers.chapters.create(chapter_no: 20)

		num21 = numbers.chapters.create(chapter_no: 21)
		num22 = numbers.chapters.create(chapter_no: 22)
		num23 = numbers.chapters.create(chapter_no: 23)
		num24 = numbers.chapters.create(chapter_no: 24)
		num25 = numbers.chapters.create(chapter_no: 25)
		num26 = numbers.chapters.create(chapter_no: 26)
		num27 = numbers.chapters.create(chapter_no: 27)
		num28 = numbers.chapters.create(chapter_no: 28)
		num29 = numbers.chapters.create(chapter_no: 29)
		num30 = numbers.chapters.create(chapter_no: 30)

		num31 = numbers.chapters.create(chapter_no: 31)
		num32 = numbers.chapters.create(chapter_no: 32)
		num33 = numbers.chapters.create(chapter_no: 33)
		num34 = numbers.chapters.create(chapter_no: 34)
		num35 = numbers.chapters.create(chapter_no: 35)
		num36 = numbers.chapters.create(chapter_no: 36)


	deuteronomy = torah.books.create(name: "Deuteronomy", title: "申命記", book_code: "Dt", chinese_code: "申",
		description: "聖經的第一卷書。主要的内容，以神揀選以色列人的先祖亞伯拉罕的時間點之前和之后，分成兩大部分。PP
		第一部分記載了4個主要事件：神的創造，人的犯罪，全球洪水，和巴別塔。這四個事件分別啓示了天國的世界觀，人類世界一切問題的根源，
		神與人所立的彩虹之約，和人類各族的起源和有不同語言的原因。",
		logo: "flower 5.jpg")

		deut1 = deuteronomy.chapters.create(chapter_no: 1)
		deut2 = deuteronomy.chapters.create(chapter_no: 2)
		deut3 = deuteronomy.chapters.create(chapter_no: 3)
		deut4 = deuteronomy.chapters.create(chapter_no: 4)
		deut5 = deuteronomy.chapters.create(chapter_no: 5)
		deut6 = deuteronomy.chapters.create(chapter_no: 6)
		deut7 = deuteronomy.chapters.create(chapter_no: 7)
		deut8 = deuteronomy.chapters.create(chapter_no: 8)
		deut9 = deuteronomy.chapters.create(chapter_no: 9)
		deut10 = deuteronomy.chapters.create(chapter_no: 10)

		deut11 = deuteronomy.chapters.create(chapter_no: 11)
		deut12 = deuteronomy.chapters.create(chapter_no: 12)
		deut13 = deuteronomy.chapters.create(chapter_no: 13)
		deut14 = deuteronomy.chapters.create(chapter_no: 14)
		deut15 = deuteronomy.chapters.create(chapter_no: 15)
		deut16 = deuteronomy.chapters.create(chapter_no: 16)
		deut17 = deuteronomy.chapters.create(chapter_no: 17)
		deut18 = deuteronomy.chapters.create(chapter_no: 18)
		deut19 = deuteronomy.chapters.create(chapter_no: 19)
		deut20 = deuteronomy.chapters.create(chapter_no: 20)

		deut21 = deuteronomy.chapters.create(chapter_no: 21)
		deut22 = deuteronomy.chapters.create(chapter_no: 22)
		deut23 = deuteronomy.chapters.create(chapter_no: 23)
		deut24 = deuteronomy.chapters.create(chapter_no: 24)
		deut25 = deuteronomy.chapters.create(chapter_no: 25)
		deut26 = deuteronomy.chapters.create(chapter_no: 26)
		deut27 = deuteronomy.chapters.create(chapter_no: 27)
		deut28 = deuteronomy.chapters.create(chapter_no: 28)
		deut29 = deuteronomy.chapters.create(chapter_no: 29)
		deut30 = deuteronomy.chapters.create(chapter_no: 30)

		deut31 = deuteronomy.chapters.create(chapter_no: 31)
		deut32 = deuteronomy.chapters.create(chapter_no: 32)
		deut33 = deuteronomy.chapters.create(chapter_no: 33)
		deut34 = deuteronomy.chapters.create(chapter_no: 34)


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

		josh1 = joshua.chapters.create(chapter_no: 1)
		josh2 = joshua.chapters.create(chapter_no: 2)
		josh3 = joshua.chapters.create(chapter_no: 3)
		josh4 = joshua.chapters.create(chapter_no: 4)
		josh5 = joshua.chapters.create(chapter_no: 5)
		josh6 = joshua.chapters.create(chapter_no: 6)
		josh7 = joshua.chapters.create(chapter_no: 7)
		josh8 = joshua.chapters.create(chapter_no: 8)
		josh9 = joshua.chapters.create(chapter_no: 9)
		josh10 = joshua.chapters.create(chapter_no: 10)

		josh11 = joshua.chapters.create(chapter_no: 11)
		josh12 = joshua.chapters.create(chapter_no: 12)
		josh13 = joshua.chapters.create(chapter_no: 13)
		josh14 = joshua.chapters.create(chapter_no: 14)
		josh15 = joshua.chapters.create(chapter_no: 15)
		josh16 = joshua.chapters.create(chapter_no: 16)
		josh17 = joshua.chapters.create(chapter_no: 17)
		josh18 = joshua.chapters.create(chapter_no: 18)
		josh19 = joshua.chapters.create(chapter_no: 19)
		josh20 = joshua.chapters.create(chapter_no: 20)

		josh21 = joshua.chapters.create(chapter_no: 21)
		josh22 = joshua.chapters.create(chapter_no: 22)
		josh23 = joshua.chapters.create(chapter_no: 23)
		josh24 = joshua.chapters.create(chapter_no: 24)


	judges = isralite_history.books.create(name: "Judges", title: "士師記", book_code: "Jdg", chinese_code: "士",
		description: "")

		judge1 = judges.chapters.create(chapter_no: 1)
		judge2 = judges.chapters.create(chapter_no: 2)
		judge3 = judges.chapters.create(chapter_no: 3)
		judge4 = judges.chapters.create(chapter_no: 4)
		judge5 = judges.chapters.create(chapter_no: 5)
		judge6 = judges.chapters.create(chapter_no: 6)
		judge7 = judges.chapters.create(chapter_no: 7)
		judge8 = judges.chapters.create(chapter_no: 8)
		judge9 = judges.chapters.create(chapter_no: 9)
		judge10 = judges.chapters.create(chapter_no: 10)

		judge11 = judges.chapters.create(chapter_no: 11)
		judge12 = judges.chapters.create(chapter_no: 12)
		judge13 = judges.chapters.create(chapter_no: 13)
		judge14 = judges.chapters.create(chapter_no: 14)
		judge15 = judges.chapters.create(chapter_no: 15)
		judge16 = judges.chapters.create(chapter_no: 16)
		judge17 = judges.chapters.create(chapter_no: 17)
		judge18 = judges.chapters.create(chapter_no: 18)
		judge19 = judges.chapters.create(chapter_no: 19)
		judge20 = judges.chapters.create(chapter_no: 20)

		judge21 = judges.chapters.create(chapter_no: 21)

	ruth = isralite_history.books.create(name: "Ruth", title: "路得記", book_code: "Ru", chinese_code: "得",
		description: "")
		ruth1 = ruth.chapters.create(chapter_no: 1)
		ruth2 = ruth.chapters.create(chapter_no: 2)
		ruth3 = ruth.chapters.create(chapter_no: 3)
		ruth4 = ruth.chapters.create(chapter_no: 4)

	samuel_1 = isralite_history.books.create(name: "1 Samuel", title: "撒母耳記上", book_code: "1Sa", chinese_code: "撒上",
		description: "")
		samuel1_1 = samuel_1.chapters.create(chapter_no: 1)
		samuel1_2 = samuel_1.chapters.create(chapter_no: 2)
		samuel1_3 = samuel_1.chapters.create(chapter_no: 3)
		samuel1_4 = samuel_1.chapters.create(chapter_no: 4)
		samuel1_5 = samuel_1.chapters.create(chapter_no: 5)
		samuel1_6 = samuel_1.chapters.create(chapter_no: 6)
		samuel1_7 = samuel_1.chapters.create(chapter_no: 7)
		samuel1_8 = samuel_1.chapters.create(chapter_no: 8)
		samuel1_9 = samuel_1.chapters.create(chapter_no: 9)
		samuel1_10 = samuel_1.chapters.create(chapter_no: 10)

		samuel1_11 = samuel_1.chapters.create(chapter_no: 11)
		samuel1_12 = samuel_1.chapters.create(chapter_no: 12)
		samuel1_13 = samuel_1.chapters.create(chapter_no: 13)
		samuel1_14 = samuel_1.chapters.create(chapter_no: 14)
		samuel1_15 = samuel_1.chapters.create(chapter_no: 15)
		samuel1_16 = samuel_1.chapters.create(chapter_no: 16)
		samuel1_17 = samuel_1.chapters.create(chapter_no: 17)
		samuel1_18 = samuel_1.chapters.create(chapter_no: 18)
		samuel1_19 = samuel_1.chapters.create(chapter_no: 19)
		samuel1_20 = samuel_1.chapters.create(chapter_no: 20)

		samuel1_21 = samuel_1.chapters.create(chapter_no: 21)
		samuel1_22 = samuel_1.chapters.create(chapter_no: 22)
		samuel1_23 = samuel_1.chapters.create(chapter_no: 23)
		samuel1_24 = samuel_1.chapters.create(chapter_no: 24)
		samuel1_25 = samuel_1.chapters.create(chapter_no: 25)
		samuel1_26 = samuel_1.chapters.create(chapter_no: 26)
		samuel1_27 = samuel_1.chapters.create(chapter_no: 27)
		samuel1_28 = samuel_1.chapters.create(chapter_no: 28)
		samuel1_29 = samuel_1.chapters.create(chapter_no: 29)
		samuel1_30 = samuel_1.chapters.create(chapter_no: 30)

		samuel1_31 = samuel_1.chapters.create(chapter_no: 31)


	samuel_2 = isralite_history.books.create(name: "2 Samuel", title: "撒母耳記下", book_code: "2Sa", chinese_code: "撒下",
		description: "")
		samuel2_1 = samuel_2.chapters.create(chapter_no: 1)
		samuel2_2 = samuel_2.chapters.create(chapter_no: 2)
		samuel2_3 = samuel_2.chapters.create(chapter_no: 3)
		samuel2_4 = samuel_2.chapters.create(chapter_no: 4)
		samuel2_5 = samuel_2.chapters.create(chapter_no: 5)
		samuel2_6 = samuel_2.chapters.create(chapter_no: 6)
		samuel2_7 = samuel_2.chapters.create(chapter_no: 7)
		samuel2_8 = samuel_2.chapters.create(chapter_no: 8)
		samuel2_9 = samuel_2.chapters.create(chapter_no: 9)
		samuel2_10 = samuel_2.chapters.create(chapter_no: 10)

		samuel2_11 = samuel_2.chapters.create(chapter_no: 11)
		samuel2_12 = samuel_2.chapters.create(chapter_no: 12)
		samuel2_13 = samuel_2.chapters.create(chapter_no: 13)
		samuel2_14 = samuel_2.chapters.create(chapter_no: 14)
		samuel2_15 = samuel_2.chapters.create(chapter_no: 15)
		samuel2_16 = samuel_2.chapters.create(chapter_no: 16)
		samuel2_17 = samuel_2.chapters.create(chapter_no: 17)
		samuel2_18 = samuel_2.chapters.create(chapter_no: 18)
		samuel2_19 = samuel_2.chapters.create(chapter_no: 19)
		samuel2_20 = samuel_2.chapters.create(chapter_no: 20)

		samuel2_21 = samuel_2.chapters.create(chapter_no: 21)
		samuel2_22 = samuel_2.chapters.create(chapter_no: 22)
		samuel2_23 = samuel_2.chapters.create(chapter_no: 23)
		samuel2_24 = samuel_2.chapters.create(chapter_no: 24)

	kings_1 = isralite_history.books.create(name: "1 Kings", title: "列王記上", book_code: "1Ki", chinese_code: "王上",
		description: "")
		kings1_1 = kings_1.chapters.create(chapter_no: 1)
		kings1_2 = kings_1.chapters.create(chapter_no: 2)
		kings1_3 = kings_1.chapters.create(chapter_no: 3)
		kings1_4 = kings_1.chapters.create(chapter_no: 4)
		kings1_5 = kings_1.chapters.create(chapter_no: 5)
		kings1_6 = kings_1.chapters.create(chapter_no: 6)
		kings1_7 = kings_1.chapters.create(chapter_no: 7)
		kings1_8 = kings_1.chapters.create(chapter_no: 8)
		kings1_9 = kings_1.chapters.create(chapter_no: 9)
		kings1_10 = kings_1.chapters.create(chapter_no: 10)

		kings1_11 = kings_1.chapters.create(chapter_no: 11)
		kings1_12 = kings_1.chapters.create(chapter_no: 12)
		kings1_13 = kings_1.chapters.create(chapter_no: 13)
		kings1_14 = kings_1.chapters.create(chapter_no: 14)
		kings1_15 = kings_1.chapters.create(chapter_no: 15)
		kings1_16 = kings_1.chapters.create(chapter_no: 16)
		kings1_17 = kings_1.chapters.create(chapter_no: 17)
		kings1_18 = kings_1.chapters.create(chapter_no: 18)
		kings1_19 = kings_1.chapters.create(chapter_no: 19)
		kings1_20 = kings_1.chapters.create(chapter_no: 20)

		kings1_21 = kings_1.chapters.create(chapter_no: 21)
		kings1_22 = kings_1.chapters.create(chapter_no: 22)

	kings_2 = isralite_history.books.create(name: "2 Kings", title: "列王記下", book_code: "2Ki", chinese_code: "王下",
		description: "")
		kings2_1 = kings_2.chapters.create(chapter_no: 1)
		kings2_2 = kings_2.chapters.create(chapter_no: 2)
		kings2_3 = kings_2.chapters.create(chapter_no: 3)
		kings2_4 = kings_2.chapters.create(chapter_no: 4)
		kings2_5 = kings_2.chapters.create(chapter_no: 5)
		kings2_6 = kings_2.chapters.create(chapter_no: 6)
		kings2_7 = kings_2.chapters.create(chapter_no: 7)
		kings2_8 = kings_2.chapters.create(chapter_no: 8)
		kings2_9 = kings_2.chapters.create(chapter_no: 9)
		kings2_10 = kings_2.chapters.create(chapter_no: 10)

		kings2_11 = kings_2.chapters.create(chapter_no: 11)
		kings2_12 = kings_2.chapters.create(chapter_no: 12)
		kings2_13 = kings_2.chapters.create(chapter_no: 13)
		kings2_14 = kings_2.chapters.create(chapter_no: 14)
		kings2_15 = kings_2.chapters.create(chapter_no: 15)
		kings2_16 = kings_2.chapters.create(chapter_no: 16)
		kings2_17 = kings_2.chapters.create(chapter_no: 17)
		kings2_18 = kings_2.chapters.create(chapter_no: 18)
		kings2_19 = kings_2.chapters.create(chapter_no: 19)
		kings2_20 = kings_2.chapters.create(chapter_no: 20)

		kings2_21 = kings_2.chapters.create(chapter_no: 21)
		kings2_22 = kings_2.chapters.create(chapter_no: 22)
		kings2_23 = kings_2.chapters.create(chapter_no: 23)
		kings2_24 = kings_2.chapters.create(chapter_no: 24)
		kings2_25 = kings_2.chapters.create(chapter_no: 25)

	chron_1 = isralite_history.books.create(name: "1 Chronicles", title: "歷代志上", book_code: "1Ch", chinese_code: "代上",
		description: "")
		chron1_1 = chron_1.chapters.create(chapter_no: 1)
		chron1_2 = chron_1.chapters.create(chapter_no: 2)
		chron1_3 = chron_1.chapters.create(chapter_no: 3)
		chron1_4 = chron_1.chapters.create(chapter_no: 4)
		chron1_5 = chron_1.chapters.create(chapter_no: 5)
		chron1_6 = chron_1.chapters.create(chapter_no: 6)
		chron1_7 = chron_1.chapters.create(chapter_no: 7)
		chron1_8 = chron_1.chapters.create(chapter_no: 8)
		chron1_9 = chron_1.chapters.create(chapter_no: 9)
		chron1_10 = chron_1.chapters.create(chapter_no: 10)

		chron1_11 = chron_1.chapters.create(chapter_no: 11)
		chron1_12 = chron_1.chapters.create(chapter_no: 12)
		chron1_13 = chron_1.chapters.create(chapter_no: 13)
		chron1_14 = chron_1.chapters.create(chapter_no: 14)
		chron1_15 = chron_1.chapters.create(chapter_no: 15)
		chron1_16 = chron_1.chapters.create(chapter_no: 16)
		chron1_17 = chron_1.chapters.create(chapter_no: 17)
		chron1_18 = chron_1.chapters.create(chapter_no: 18)
		chron1_19 = chron_1.chapters.create(chapter_no: 19)
		chron1_20 = chron_1.chapters.create(chapter_no: 20)

		chron1_21 = chron_1.chapters.create(chapter_no: 21)
		chron1_22 = chron_1.chapters.create(chapter_no: 22)
		chron1_23 = chron_1.chapters.create(chapter_no: 23)
		chron1_24 = chron_1.chapters.create(chapter_no: 24)
		chron1_25 = chron_1.chapters.create(chapter_no: 25)
		chron1_26 = chron_1.chapters.create(chapter_no: 26)
		chron1_27 = chron_1.chapters.create(chapter_no: 27)
		chron1_28 = chron_1.chapters.create(chapter_no: 28)
		chron1_29 = chron_1.chapters.create(chapter_no: 29)


	chron_2 = isralite_history.books.create(name: "2 Chronicles", title: "歷代志下", book_code: "2Ch", chinese_code: "代下",
		description: "")
		chron2_1 = chron_2.chapters.create(chapter_no: 1)
		chron2_2 = chron_2.chapters.create(chapter_no: 2)
		chron2_3 = chron_2.chapters.create(chapter_no: 3)
		chron2_4 = chron_2.chapters.create(chapter_no: 4)
		chron2_5 = chron_2.chapters.create(chapter_no: 5)
		chron2_6 = chron_2.chapters.create(chapter_no: 6)
		chron2_7 = chron_2.chapters.create(chapter_no: 7)
		chron2_8 = chron_2.chapters.create(chapter_no: 8)
		chron2_9 = chron_2.chapters.create(chapter_no: 9)
		chron2_10 = chron_2.chapters.create(chapter_no: 10)

		chron2_11 = chron_2.chapters.create(chapter_no: 11)
		chron2_12 = chron_2.chapters.create(chapter_no: 12)
		chron2_13 = chron_2.chapters.create(chapter_no: 13)
		chron2_14 = chron_2.chapters.create(chapter_no: 14)
		chron2_15 = chron_2.chapters.create(chapter_no: 15)
		chron2_16 = chron_2.chapters.create(chapter_no: 16)
		chron2_17 = chron_2.chapters.create(chapter_no: 17)
		chron2_18 = chron_2.chapters.create(chapter_no: 18)
		chron2_19 = chron_2.chapters.create(chapter_no: 19)
		chron2_20 = chron_2.chapters.create(chapter_no: 20)

		chron2_31 = chron_2.chapters.create(chapter_no: 21)
		chron2_32 = chron_2.chapters.create(chapter_no: 22)
		chron2_33 = chron_2.chapters.create(chapter_no: 23)
		chron2_34 = chron_2.chapters.create(chapter_no: 24)
		chron2_35 = chron_2.chapters.create(chapter_no: 25)
		chron2_36 = chron_2.chapters.create(chapter_no: 26)
		chron2_37 = chron_2.chapters.create(chapter_no: 27)
		chron2_38 = chron_2.chapters.create(chapter_no: 28)
		chron2_39 = chron_2.chapters.create(chapter_no: 29)
		chron2_30 = chron_2.chapters.create(chapter_no: 30)

		chron2_31 = chron_2.chapters.create(chapter_no: 31)
		chron2_32 = chron_2.chapters.create(chapter_no: 32)
		chron2_33 = chron_2.chapters.create(chapter_no: 33)
		chron2_34 = chron_2.chapters.create(chapter_no: 34)
		chron2_35 = chron_2.chapters.create(chapter_no: 35)
		chron2_36 = chron_2.chapters.create(chapter_no: 36)


	ezra = isralite_history.books.create(name: "Ezra", title: "以斯拉記", book_code: "Ezr", chinese_code: "拉",
		description: "")
		ezra1 = ezra.chapters.create(chapter_no: 1)
		ezra2 = ezra.chapters.create(chapter_no: 2)
		ezra3 = ezra.chapters.create(chapter_no: 3)
		ezra4 = ezra.chapters.create(chapter_no: 4)
		ezra5 = ezra.chapters.create(chapter_no: 5)
		ezra6 = ezra.chapters.create(chapter_no: 6)
		ezra7 = ezra.chapters.create(chapter_no: 7)
		ezra8 = ezra.chapters.create(chapter_no: 8)
		ezra9 = ezra.chapters.create(chapter_no: 9)
		ezra10 = ezra.chapters.create(chapter_no: 10)

	nehemiah = isralite_history.books.create(name: "Nehemiah", title: "尼希米記", book_code: "Ne", chinese_code: "尼",
		description: "")
		nehem1 = nehemiah.chapters.create(chapter_no: 1)
		nehem2 = nehemiah.chapters.create(chapter_no: 2)
		nehem3 = nehemiah.chapters.create(chapter_no: 3)
		nehem4 = nehemiah.chapters.create(chapter_no: 4)
		nehem5 = nehemiah.chapters.create(chapter_no: 5)
		nehem6 = nehemiah.chapters.create(chapter_no: 6)
		nehem7 = nehemiah.chapters.create(chapter_no: 7)
		nehem8 = nehemiah.chapters.create(chapter_no: 8)
		nehem9 = nehemiah.chapters.create(chapter_no: 9)
		nehem10 = nehemiah.chapters.create(chapter_no: 10)

		nehem11 = nehemiah.chapters.create(chapter_no: 11)
		nehem12 = nehemiah.chapters.create(chapter_no: 12)
		nehem13 = nehemiah.chapters.create(chapter_no: 13)

	esther = isralite_history.books.create(name: "Esther", title: "以斯帖記", book_code: "Est", chinese_code: "斯",
		description: "")
		esther1 = esther.chapters.create(chapter_no: 1)
		esther2 = esther.chapters.create(chapter_no: 2)
		esther3 = esther.chapters.create(chapter_no: 3)
		esther4 = esther.chapters.create(chapter_no: 4)
		esther5 = esther.chapters.create(chapter_no: 5)
		esther6 = esther.chapters.create(chapter_no: 6)
		esther7 = esther.chapters.create(chapter_no: 7)
		esther8 = esther.chapters.create(chapter_no: 8)
		esther9 = esther.chapters.create(chapter_no: 9)
		esther10 = esther.chapters.create(chapter_no: 10)

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
		job1 = job.chapters.create(chapter_no: 1)
		job2 = job.chapters.create(chapter_no: 2)
		job3 = job.chapters.create(chapter_no: 3)
		job4 = job.chapters.create(chapter_no: 4)
		job5 = job.chapters.create(chapter_no: 5)
		job6 = job.chapters.create(chapter_no: 6)
		job7 = job.chapters.create(chapter_no: 7)
		job8 = job.chapters.create(chapter_no: 8)
		job9 = job.chapters.create(chapter_no: 9)
		job10 = job.chapters.create(chapter_no: 10)

		job11 = job.chapters.create(chapter_no: 11)
		job12 = job.chapters.create(chapter_no: 12)
		job13 = job.chapters.create(chapter_no: 13)
		job14 = job.chapters.create(chapter_no: 14)
		job15 = job.chapters.create(chapter_no: 15)
		job16 = job.chapters.create(chapter_no: 16)
		job17 = job.chapters.create(chapter_no: 17)
		job18 = job.chapters.create(chapter_no: 18)
		job19 = job.chapters.create(chapter_no: 19)
		job20 = job.chapters.create(chapter_no: 20)

		job21 = job.chapters.create(chapter_no: 21)
		job22 = job.chapters.create(chapter_no: 22)
		job23 = job.chapters.create(chapter_no: 23)
		job24 = job.chapters.create(chapter_no: 24)
		job25 = job.chapters.create(chapter_no: 25)
		job26 = job.chapters.create(chapter_no: 26)
		job27 = job.chapters.create(chapter_no: 27)
		job28 = job.chapters.create(chapter_no: 28)
		job29 = job.chapters.create(chapter_no: 29)
		job30 = job.chapters.create(chapter_no: 30)

		job31 = job.chapters.create(chapter_no: 31)
		job32 = job.chapters.create(chapter_no: 32)
		job33 = job.chapters.create(chapter_no: 33)
		job34 = job.chapters.create(chapter_no: 34)
		job35 = job.chapters.create(chapter_no: 35)
		job36 = job.chapters.create(chapter_no: 36)
		job37 = job.chapters.create(chapter_no: 37)
		job38 = job.chapters.create(chapter_no: 38)
		job39 = job.chapters.create(chapter_no: 39)
		job40 = job.chapters.create(chapter_no: 40)

		job41 = job.chapters.create(chapter_no: 41)
		job42 = job.chapters.create(chapter_no: 42)


	psalms = poetry.books.create(name: "Psalms", title: "詩篇", book_code: "Ps", chinese_code: "詩",
		description: "")

		psalms1 = psalms.chapters.create(chapter_no: 1)
		psalms2 = psalms.chapters.create(chapter_no: 2)
		psalms3 = psalms.chapters.create(chapter_no: 3)
		psalms4 = psalms.chapters.create(chapter_no: 4)
		psalms5 = psalms.chapters.create(chapter_no: 5)
		psalms6 = psalms.chapters.create(chapter_no: 6)
		psalms7 = psalms.chapters.create(chapter_no: 7)
		psalms8 = psalms.chapters.create(chapter_no: 8)
		psalms9 = psalms.chapters.create(chapter_no: 9)
		psalms10 = psalms.chapters.create(chapter_no: 10)

		psalms11 = psalms.chapters.create(chapter_no: 11)
		psalms12 = psalms.chapters.create(chapter_no: 12)
		psalms13 = psalms.chapters.create(chapter_no: 13)
		psalms14 = psalms.chapters.create(chapter_no: 14)
		psalms15 = psalms.chapters.create(chapter_no: 15)
		psalms16 = psalms.chapters.create(chapter_no: 16)
		psalms17 = psalms.chapters.create(chapter_no: 17)
		psalms18 = psalms.chapters.create(chapter_no: 18)
		psalms19 = psalms.chapters.create(chapter_no: 19)
		psalms20 = psalms.chapters.create(chapter_no: 20)

		psalms21 = psalms.chapters.create(chapter_no: 21)
		psalms22 = psalms.chapters.create(chapter_no: 22)
		psalms23 = psalms.chapters.create(chapter_no: 23)
		psalms24 = psalms.chapters.create(chapter_no: 24)
		psalms25 = psalms.chapters.create(chapter_no: 25)
		psalms26 = psalms.chapters.create(chapter_no: 26)
		psalms27 = psalms.chapters.create(chapter_no: 27)
		psalms28 = psalms.chapters.create(chapter_no: 28)
		psalms29 = psalms.chapters.create(chapter_no: 29)
		psalms30 = psalms.chapters.create(chapter_no: 30)

		psalms31 = psalms.chapters.create(chapter_no: 31)
		psalms32 = psalms.chapters.create(chapter_no: 32)
		psalms33 = psalms.chapters.create(chapter_no: 33)
		psalms34 = psalms.chapters.create(chapter_no: 34)
		psalms35 = psalms.chapters.create(chapter_no: 35)
		psalms36 = psalms.chapters.create(chapter_no: 36)
		psalms37 = psalms.chapters.create(chapter_no: 37)
		psalms38 = psalms.chapters.create(chapter_no: 38)
		psalms39 = psalms.chapters.create(chapter_no: 39)
		psalms40 = psalms.chapters.create(chapter_no: 40)

		psalms41 = psalms.chapters.create(chapter_no: 41)
		psalms42 = psalms.chapters.create(chapter_no: 42)
		psalms43 = psalms.chapters.create(chapter_no: 43)
		psalms44 = psalms.chapters.create(chapter_no: 44)
		psalms45 = psalms.chapters.create(chapter_no: 45)
		psalms46 = psalms.chapters.create(chapter_no: 46)
		psalms47 = psalms.chapters.create(chapter_no: 47)
		psalms48 = psalms.chapters.create(chapter_no: 48)
		psalms49 = psalms.chapters.create(chapter_no: 49)
		psalms50 = psalms.chapters.create(chapter_no: 50)

		psalms51 = psalms.chapters.create(chapter_no: 51)
		psalms52 = psalms.chapters.create(chapter_no: 52)
		psalms53 = psalms.chapters.create(chapter_no: 53)
		psalms54 = psalms.chapters.create(chapter_no: 54)
		psalms55 = psalms.chapters.create(chapter_no: 55)
		psalms56 = psalms.chapters.create(chapter_no: 56)
		psalms57 = psalms.chapters.create(chapter_no: 57)
		psalms58 = psalms.chapters.create(chapter_no: 58)
		psalms59 = psalms.chapters.create(chapter_no: 59)
		psalms60 = psalms.chapters.create(chapter_no: 60)

		psalms61 = psalms.chapters.create(chapter_no: 61)
		psalms62 = psalms.chapters.create(chapter_no: 62)
		psalms63 = psalms.chapters.create(chapter_no: 63)
		psalms64 = psalms.chapters.create(chapter_no: 64)
		psalms65 = psalms.chapters.create(chapter_no: 65)
		psalms66 = psalms.chapters.create(chapter_no: 66)
		psalms67 = psalms.chapters.create(chapter_no: 67)
		psalms68 = psalms.chapters.create(chapter_no: 68)
		psalms69 = psalms.chapters.create(chapter_no: 69)
		psalms70 = psalms.chapters.create(chapter_no: 70)

		psalms71 = psalms.chapters.create(chapter_no: 71)
		psalms72 = psalms.chapters.create(chapter_no: 72)
		psalms73 = psalms.chapters.create(chapter_no: 73)
		psalms74 = psalms.chapters.create(chapter_no: 74)
		psalms75 = psalms.chapters.create(chapter_no: 75)
		psalms76 = psalms.chapters.create(chapter_no: 76)
		psalms77 = psalms.chapters.create(chapter_no: 77)
		psalms78 = psalms.chapters.create(chapter_no: 78)
		psalms79 = psalms.chapters.create(chapter_no: 79)
		psalms80 = psalms.chapters.create(chapter_no: 80)

		psalms81 = psalms.chapters.create(chapter_no: 81)
		psalms82 = psalms.chapters.create(chapter_no: 82)
		psalms83 = psalms.chapters.create(chapter_no: 83)
		psalms84 = psalms.chapters.create(chapter_no: 84)
		psalms85 = psalms.chapters.create(chapter_no: 85)
		psalms86 = psalms.chapters.create(chapter_no: 86)
		psalms87 = psalms.chapters.create(chapter_no: 87)
		psalms88 = psalms.chapters.create(chapter_no: 88)
		psalms89 = psalms.chapters.create(chapter_no: 89)
		psalms90 = psalms.chapters.create(chapter_no: 90)

		psalms91 = psalms.chapters.create(chapter_no: 91)
		psalms92 = psalms.chapters.create(chapter_no: 92)
		psalms93 = psalms.chapters.create(chapter_no: 93)
		psalms94 = psalms.chapters.create(chapter_no: 94)
		psalms95 = psalms.chapters.create(chapter_no: 95)
		psalms96 = psalms.chapters.create(chapter_no: 96)
		psalms97 = psalms.chapters.create(chapter_no: 97)
		psalms98 = psalms.chapters.create(chapter_no: 98)
		psalms99 = psalms.chapters.create(chapter_no: 99)
		psalms100 = psalms.chapters.create(chapter_no: 100)

		psalms101 = psalms.chapters.create(chapter_no: 101)
		psalms102 = psalms.chapters.create(chapter_no: 102)
		psalms103 = psalms.chapters.create(chapter_no: 103)
		psalms104 = psalms.chapters.create(chapter_no: 104)
		psalms105 = psalms.chapters.create(chapter_no: 105)
		psalms106 = psalms.chapters.create(chapter_no: 106)
		psalms107 = psalms.chapters.create(chapter_no: 107)
		psalms108 = psalms.chapters.create(chapter_no: 108)
		psalms109 = psalms.chapters.create(chapter_no: 109)
		psalms110 = psalms.chapters.create(chapter_no: 110)

		psalms111 = psalms.chapters.create(chapter_no: 111)
		psalms112 = psalms.chapters.create(chapter_no: 112)
		psalms113 = psalms.chapters.create(chapter_no: 113)
		psalms114 = psalms.chapters.create(chapter_no: 114)
		psalms115 = psalms.chapters.create(chapter_no: 115)
		psalms116 = psalms.chapters.create(chapter_no: 116)
		psalms117 = psalms.chapters.create(chapter_no: 117)
		psalms118 = psalms.chapters.create(chapter_no: 118)
		psalms119 = psalms.chapters.create(chapter_no: 119)
		psalms120 = psalms.chapters.create(chapter_no: 120)

		psalms121 = psalms.chapters.create(chapter_no: 121)
		psalms122 = psalms.chapters.create(chapter_no: 122)
		psalms123 = psalms.chapters.create(chapter_no: 123)
		psalms124 = psalms.chapters.create(chapter_no: 124)
		psalms125 = psalms.chapters.create(chapter_no: 125)
		psalms126 = psalms.chapters.create(chapter_no: 126)
		psalms127 = psalms.chapters.create(chapter_no: 127)
		psalms128 = psalms.chapters.create(chapter_no: 128)
		psalms129 = psalms.chapters.create(chapter_no: 129)
		psalms130 = psalms.chapters.create(chapter_no: 130)

		psalms131 = psalms.chapters.create(chapter_no: 131)
		psalms132 = psalms.chapters.create(chapter_no: 132)
		psalms133 = psalms.chapters.create(chapter_no: 133)
		psalms134 = psalms.chapters.create(chapter_no: 134)
		psalms135 = psalms.chapters.create(chapter_no: 135)
		psalms136 = psalms.chapters.create(chapter_no: 136)
		psalms137 = psalms.chapters.create(chapter_no: 137)
		psalms138 = psalms.chapters.create(chapter_no: 138)
		psalms139 = psalms.chapters.create(chapter_no: 139)
		psalms140 = psalms.chapters.create(chapter_no: 140)

		psalms141 = psalms.chapters.create(chapter_no: 141)
		psalms142 = psalms.chapters.create(chapter_no: 142)
		psalms143 = psalms.chapters.create(chapter_no: 143)
		psalms144 = psalms.chapters.create(chapter_no: 144)
		psalms145 = psalms.chapters.create(chapter_no: 145)
		psalms146 = psalms.chapters.create(chapter_no: 146)
		psalms147 = psalms.chapters.create(chapter_no: 147)
		psalms148 = psalms.chapters.create(chapter_no: 148)
		psalms149 = psalms.chapters.create(chapter_no: 149)
		psalms150 = psalms.chapters.create(chapter_no: 150)


	proverbs = poetry.books.create(name: "Proverbs", title: "箴言", book_code: "Pr", chinese_code: "箴",
		description: "")
		proverb1 = proverbs.chapters.create(chapter_no: 1)
		proverb2 = proverbs.chapters.create(chapter_no: 2)
		proverb3 = proverbs.chapters.create(chapter_no: 3)
		proverb4 = proverbs.chapters.create(chapter_no: 4)
		proverb5 = proverbs.chapters.create(chapter_no: 5)
		proverb6 = proverbs.chapters.create(chapter_no: 6)
		proverb7 = proverbs.chapters.create(chapter_no: 7)
		proverb8 = proverbs.chapters.create(chapter_no: 8)
		proverb9 = proverbs.chapters.create(chapter_no: 9)
		proverb10 = proverbs.chapters.create(chapter_no: 10)

		proverb11 = proverbs.chapters.create(chapter_no: 11)
		proverb12 = proverbs.chapters.create(chapter_no: 12)
		proverb13 = proverbs.chapters.create(chapter_no: 13)
		proverb14 = proverbs.chapters.create(chapter_no: 14)
		proverb15 = proverbs.chapters.create(chapter_no: 15)
		proverb16 = proverbs.chapters.create(chapter_no: 16)
		proverb17 = proverbs.chapters.create(chapter_no: 17)
		proverb18 = proverbs.chapters.create(chapter_no: 18)
		proverb19 = proverbs.chapters.create(chapter_no: 19)
		proverb20 = proverbs.chapters.create(chapter_no: 20)

		proverb21 = proverbs.chapters.create(chapter_no: 21)
		proverb22 = proverbs.chapters.create(chapter_no: 22)
		proverb23 = proverbs.chapters.create(chapter_no: 23)
		proverb24 = proverbs.chapters.create(chapter_no: 24)
		proverb25 = proverbs.chapters.create(chapter_no: 25)
		proverb26 = proverbs.chapters.create(chapter_no: 26)
		proverb27 = proverbs.chapters.create(chapter_no: 27)
		proverb28 = proverbs.chapters.create(chapter_no: 28)
		proverb29 = proverbs.chapters.create(chapter_no: 29)
		proverb30 = proverbs.chapters.create(chapter_no: 30)

		proverb31 = proverbs.chapters.create(chapter_no: 31)

	ecclesiastes = poetry.books.create(name: "Ecclesiastes", title: "傳道書", book_code: "Ecc", chinese_code: "傳",
		description: "")
		eccles1 = ecclesiastes.chapters.create(chapter_no: 1)
		eccles2 = ecclesiastes.chapters.create(chapter_no: 2)
		eccles3 = ecclesiastes.chapters.create(chapter_no: 3)
		eccles4 = ecclesiastes.chapters.create(chapter_no: 4)
		eccles5 = ecclesiastes.chapters.create(chapter_no: 5)
		eccles6 = ecclesiastes.chapters.create(chapter_no: 6)
		eccles7 = ecclesiastes.chapters.create(chapter_no: 7)
		eccles8 = ecclesiastes.chapters.create(chapter_no: 8)
		eccles9 = ecclesiastes.chapters.create(chapter_no: 9)
		eccles10 = ecclesiastes.chapters.create(chapter_no: 10)

		eccles11 = ecclesiastes.chapters.create(chapter_no: 11)
		eccles12 = ecclesiastes.chapters.create(chapter_no: 12)

	song = poetry.books.create(name: "Song of Songs", title: "雅歌", book_code: "SS", chinese_code: "歌",
		description: "")
		song1 = song.chapters.create(chapter_no: 1)
		song2 = song.chapters.create(chapter_no: 2)
		song3 = song.chapters.create(chapter_no: 3)
		song4 = song.chapters.create(chapter_no: 4)
		song5 = song.chapters.create(chapter_no: 5)
		song6 = song.chapters.create(chapter_no: 6)
		song7 = song.chapters.create(chapter_no: 7)
		song8 = song.chapters.create(chapter_no: 8)

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
		isaiah1 = isaiah.chapters.create(chapter_no: 1)
		isaiah2 = isaiah.chapters.create(chapter_no: 2)
		isaiah3 = isaiah.chapters.create(chapter_no: 3)
		isaiah4 = isaiah.chapters.create(chapter_no: 4)
		isaiah5 = isaiah.chapters.create(chapter_no: 5)
		isaiah6 = isaiah.chapters.create(chapter_no: 6)
		isaiah7 = isaiah.chapters.create(chapter_no: 7)
		isaiah8 = isaiah.chapters.create(chapter_no: 8)
		isaiah9 = isaiah.chapters.create(chapter_no: 9)
		isaiah10 = isaiah.chapters.create(chapter_no: 10)

		isaiah11 = isaiah.chapters.create(chapter_no: 11)
		isaiah12 = isaiah.chapters.create(chapter_no: 12)
		isaiah13 = isaiah.chapters.create(chapter_no: 13)
		isaiah14 = isaiah.chapters.create(chapter_no: 14)
		isaiah15 = isaiah.chapters.create(chapter_no: 15)
		isaiah16 = isaiah.chapters.create(chapter_no: 16)
		isaiah17 = isaiah.chapters.create(chapter_no: 17)
		isaiah18 = isaiah.chapters.create(chapter_no: 18)
		isaiah19 = isaiah.chapters.create(chapter_no: 19)
		isaiah20 = isaiah.chapters.create(chapter_no: 20)

		isaiah21 = isaiah.chapters.create(chapter_no: 21)
		isaiah22 = isaiah.chapters.create(chapter_no: 22)
		isaiah23 = isaiah.chapters.create(chapter_no: 23)
		isaiah24 = isaiah.chapters.create(chapter_no: 24)
		isaiah25 = isaiah.chapters.create(chapter_no: 25)
		isaiah26 = isaiah.chapters.create(chapter_no: 26)
		isaiah27 = isaiah.chapters.create(chapter_no: 27)
		isaiah28 = isaiah.chapters.create(chapter_no: 28)
		isaiah29 = isaiah.chapters.create(chapter_no: 29)
		isaiah30 = isaiah.chapters.create(chapter_no: 30)

		isaiah31 = isaiah.chapters.create(chapter_no: 31)
		isaiah32 = isaiah.chapters.create(chapter_no: 32)
		isaiah33 = isaiah.chapters.create(chapter_no: 33)
		isaiah34 = isaiah.chapters.create(chapter_no: 34)
		isaiah35 = isaiah.chapters.create(chapter_no: 35)
		isaiah36 = isaiah.chapters.create(chapter_no: 36)
		isaiah37 = isaiah.chapters.create(chapter_no: 37)
		isaiah38 = isaiah.chapters.create(chapter_no: 38)
		isaiah39 = isaiah.chapters.create(chapter_no: 39)
		isaiah40 = isaiah.chapters.create(chapter_no: 40)

		isaiah41 = isaiah.chapters.create(chapter_no: 41)
		isaiah42 = isaiah.chapters.create(chapter_no: 42)
		isaiah43 = isaiah.chapters.create(chapter_no: 43)
		isaiah44 = isaiah.chapters.create(chapter_no: 44)
		isaiah45 = isaiah.chapters.create(chapter_no: 45)
		isaiah46 = isaiah.chapters.create(chapter_no: 46)
		isaiah47 = isaiah.chapters.create(chapter_no: 47)
		isaiah48 = isaiah.chapters.create(chapter_no: 48)
		isaiah49 = isaiah.chapters.create(chapter_no: 49)
		isaiah50 = isaiah.chapters.create(chapter_no: 50)

		isaiah51 = isaiah.chapters.create(chapter_no: 51)
		isaiah52 = isaiah.chapters.create(chapter_no: 52)
		isaiah53 = isaiah.chapters.create(chapter_no: 53)
		isaiah54 = isaiah.chapters.create(chapter_no: 54)
		isaiah55 = isaiah.chapters.create(chapter_no: 55)
		isaiah56 = isaiah.chapters.create(chapter_no: 56)
		isaiah57 = isaiah.chapters.create(chapter_no: 57)
		isaiah58 = isaiah.chapters.create(chapter_no: 58)
		isaiah59 = isaiah.chapters.create(chapter_no: 59)
		isaiah60 = isaiah.chapters.create(chapter_no: 60)

		isaiah61 = isaiah.chapters.create(chapter_no: 61)
		isaiah62 = isaiah.chapters.create(chapter_no: 62)
		isaiah63 = isaiah.chapters.create(chapter_no: 63)
		isaiah64 = isaiah.chapters.create(chapter_no: 64)
		isaiah65 = isaiah.chapters.create(chapter_no: 65)
		isaiah66 = isaiah.chapters.create(chapter_no: 66)

	jerimiah = major_prophets.books.create(name: "Jerimiah", title: "耶利米書", book_code: "Jer", chinese_code: "耶",
		description: "")
		jerimiah1 = jerimiah.chapters.create(chapter_no: 1)
		jerimiah2 = jerimiah.chapters.create(chapter_no: 2)
		jerimiah3 = jerimiah.chapters.create(chapter_no: 3)
		jerimiah4 = jerimiah.chapters.create(chapter_no: 4)
		jerimiah5 = jerimiah.chapters.create(chapter_no: 5)
		jerimiah6 = jerimiah.chapters.create(chapter_no: 6)
		jerimiah7 = jerimiah.chapters.create(chapter_no: 7)
		jerimiah8 = jerimiah.chapters.create(chapter_no: 8)
		jerimiah9 = jerimiah.chapters.create(chapter_no: 9)
		jerimiah10 = jerimiah.chapters.create(chapter_no: 10)

		jerimiah11 = jerimiah.chapters.create(chapter_no: 11)
		jerimiah12 = jerimiah.chapters.create(chapter_no: 12)
		jerimiah13 = jerimiah.chapters.create(chapter_no: 13)
		jerimiah14 = jerimiah.chapters.create(chapter_no: 14)
		jerimiah15 = jerimiah.chapters.create(chapter_no: 15)
		jerimiah16 = jerimiah.chapters.create(chapter_no: 16)
		jerimiah17 = jerimiah.chapters.create(chapter_no: 17)
		jerimiah18 = jerimiah.chapters.create(chapter_no: 18)
		jerimiah19 = jerimiah.chapters.create(chapter_no: 19)
		jerimiah20 = jerimiah.chapters.create(chapter_no: 20)

		jerimiah21 = jerimiah.chapters.create(chapter_no: 21)
		jerimiah22 = jerimiah.chapters.create(chapter_no: 22)
		jerimiah23 = jerimiah.chapters.create(chapter_no: 23)
		jerimiah24 = jerimiah.chapters.create(chapter_no: 24)
		jerimiah25 = jerimiah.chapters.create(chapter_no: 25)
		jerimiah26 = jerimiah.chapters.create(chapter_no: 26)
		jerimiah27 = jerimiah.chapters.create(chapter_no: 27)
		jerimiah28 = jerimiah.chapters.create(chapter_no: 28)
		jerimiah29 = jerimiah.chapters.create(chapter_no: 29)
		jerimiah30 = jerimiah.chapters.create(chapter_no: 30)

		jerimiah31 = jerimiah.chapters.create(chapter_no: 31)
		jerimiah32 = jerimiah.chapters.create(chapter_no: 32)
		jerimiah33 = jerimiah.chapters.create(chapter_no: 33)
		jerimiah34 = jerimiah.chapters.create(chapter_no: 34)
		jerimiah35 = jerimiah.chapters.create(chapter_no: 35)
		jerimiah36 = jerimiah.chapters.create(chapter_no: 36)
		jerimiah37 = jerimiah.chapters.create(chapter_no: 37)
		jerimiah38 = jerimiah.chapters.create(chapter_no: 38)
		jerimiah39 = jerimiah.chapters.create(chapter_no: 39)
		jerimiah40 = jerimiah.chapters.create(chapter_no: 40)

		jerimiah41 = jerimiah.chapters.create(chapter_no: 41)
		jerimiah42 = jerimiah.chapters.create(chapter_no: 42)
		jerimiah43 = jerimiah.chapters.create(chapter_no: 43)
		jerimiah44 = jerimiah.chapters.create(chapter_no: 44)
		jerimiah45 = jerimiah.chapters.create(chapter_no: 45)
		jerimiah46 = jerimiah.chapters.create(chapter_no: 46)
		jerimiah47 = jerimiah.chapters.create(chapter_no: 47)
		jerimiah48 = jerimiah.chapters.create(chapter_no: 48)
		jerimiah49 = jerimiah.chapters.create(chapter_no: 49)
		jerimiah50 = jerimiah.chapters.create(chapter_no: 50)

		jerimiah51 = jerimiah.chapters.create(chapter_no: 51)
		jerimiah52 = jerimiah.chapters.create(chapter_no: 52)


	lament = major_prophets.books.create(name: "Lamentations", title: "耶利米哀歌", book_code: "La", chinese_code: "哀",
		description: "")
		lament1 = lament.chapters.create(chapter_no: 1)
		lament2 = lament.chapters.create(chapter_no: 2)
		lament3 = lament.chapters.create(chapter_no: 3)
		lament4 = lament.chapters.create(chapter_no: 4)
		lament5 = lament.chapters.create(chapter_no: 5)

	ezekiel = major_prophets.books.create(name: "Ezekiel", title: "以西結書", book_code: "Eze", chinese_code: "結",
		description: "")
		ezekiel1 = ezekiel.chapters.create(chapter_no: 1)
		ezekiel2 = ezekiel.chapters.create(chapter_no: 2)
		ezekiel3 = ezekiel.chapters.create(chapter_no: 3)
		ezekiel4 = ezekiel.chapters.create(chapter_no: 4)
		ezekiel5 = ezekiel.chapters.create(chapter_no: 5)
		ezekiel6 = ezekiel.chapters.create(chapter_no: 6)
		ezekiel7 = ezekiel.chapters.create(chapter_no: 7)
		ezekiel8 = ezekiel.chapters.create(chapter_no: 8)
		ezekiel9 = ezekiel.chapters.create(chapter_no: 9)
		ezekiel10 = ezekiel.chapters.create(chapter_no: 10)

		ezekiel11 = ezekiel.chapters.create(chapter_no: 11)
		ezekiel12 = ezekiel.chapters.create(chapter_no: 12)
		ezekiel13 = ezekiel.chapters.create(chapter_no: 13)
		ezekiel14 = ezekiel.chapters.create(chapter_no: 14)
		ezekiel15 = ezekiel.chapters.create(chapter_no: 15)
		ezekiel16 = ezekiel.chapters.create(chapter_no: 16)
		ezekiel17 = ezekiel.chapters.create(chapter_no: 17)
		ezekiel18 = ezekiel.chapters.create(chapter_no: 18)
		ezekiel19 = ezekiel.chapters.create(chapter_no: 19)
		ezekiel20 = ezekiel.chapters.create(chapter_no: 20)

		ezekiel21 = ezekiel.chapters.create(chapter_no: 21)
		ezekiel22 = ezekiel.chapters.create(chapter_no: 22)
		ezekiel23 = ezekiel.chapters.create(chapter_no: 23)
		ezekiel24 = ezekiel.chapters.create(chapter_no: 24)
		ezekiel25 = ezekiel.chapters.create(chapter_no: 25)
		ezekiel26 = ezekiel.chapters.create(chapter_no: 26)
		ezekiel27 = ezekiel.chapters.create(chapter_no: 27)
		ezekiel28 = ezekiel.chapters.create(chapter_no: 28)
		ezekiel29 = ezekiel.chapters.create(chapter_no: 29)
		ezekiel30 = ezekiel.chapters.create(chapter_no: 30)

		ezekiel31 = ezekiel.chapters.create(chapter_no: 31)
		ezekiel32 = ezekiel.chapters.create(chapter_no: 32)
		ezekiel33 = ezekiel.chapters.create(chapter_no: 33)
		ezekiel34 = ezekiel.chapters.create(chapter_no: 34)
		ezekiel35 = ezekiel.chapters.create(chapter_no: 35)
		ezekiel36 = ezekiel.chapters.create(chapter_no: 36)
		ezekiel37 = ezekiel.chapters.create(chapter_no: 37)
		ezekiel38 = ezekiel.chapters.create(chapter_no: 38)
		ezekiel39 = ezekiel.chapters.create(chapter_no: 39)
		ezekiel40 = ezekiel.chapters.create(chapter_no: 40)

		ezekiel41 = ezekiel.chapters.create(chapter_no: 41)
		ezekiel42 = ezekiel.chapters.create(chapter_no: 42)
		ezekiel43 = ezekiel.chapters.create(chapter_no: 43)
		ezekiel44 = ezekiel.chapters.create(chapter_no: 44)
		ezekiel45 = ezekiel.chapters.create(chapter_no: 45)
		ezekiel46 = ezekiel.chapters.create(chapter_no: 46)
		ezekiel47 = ezekiel.chapters.create(chapter_no: 47)
		ezekiel48 = ezekiel.chapters.create(chapter_no: 48)

	daniel = major_prophets.books.create(name: "Daniel", title: "但以理書", book_code: "Da", chinese_code: "但",
		description: "")
		daniel1 = daniel.chapters.create(chapter_no: 1)
		daniel2 = daniel.chapters.create(chapter_no: 2)
		daniel3 = daniel.chapters.create(chapter_no: 3)
		daniel4 = daniel.chapters.create(chapter_no: 4)
		daniel5 = daniel.chapters.create(chapter_no: 5)
		daniel6 = daniel.chapters.create(chapter_no: 6)
		daniel7 = daniel.chapters.create(chapter_no: 7)
		daniel8 = daniel.chapters.create(chapter_no: 8)
		daniel9 = daniel.chapters.create(chapter_no: 9)
		daniel10 = daniel.chapters.create(chapter_no: 10)

		daniel11 = daniel.chapters.create(chapter_no: 11)
		daniel12 = daniel.chapters.create(chapter_no: 12)

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
		hosea1 = hosea.chapters.create(chapter_no: 1)
		hosea2 = hosea.chapters.create(chapter_no: 2)
		hosea3 = hosea.chapters.create(chapter_no: 3)
		hosea4 = hosea.chapters.create(chapter_no: 4)
		hosea5 = hosea.chapters.create(chapter_no: 5)
		hosea6 = hosea.chapters.create(chapter_no: 6)
		hosea7 = hosea.chapters.create(chapter_no: 7)
		hosea8 = hosea.chapters.create(chapter_no: 8)
		hosea9 = hosea.chapters.create(chapter_no: 9)
		hosea10 = hosea.chapters.create(chapter_no: 10)

		hosea11 = hosea.chapters.create(chapter_no: 11)
		hosea12 = hosea.chapters.create(chapter_no: 12)
		hosea13 = hosea.chapters.create(chapter_no: 13)
		hosea14 = hosea.chapters.create(chapter_no: 14)

	joel = minor_prophets.books.create(name: "Joel", title: "約珥書", book_code: "Joel", chinese_code: "珥",
		description: "")
		joel1 = joel.chapters.create(chapter_no: 1)
		joel2 = joel.chapters.create(chapter_no: 2)
		joel3 = joel.chapters.create(chapter_no: 3)

	amos = minor_prophets.books.create(name: "Amos", title: "阿摩司書", book_code: "Am", chinese_code: "摩",
		description: "")
		amos1 = amos.chapters.create(chapter_no: 1)
		amos2 = amos.chapters.create(chapter_no: 2)
		amos3 = amos.chapters.create(chapter_no: 3)
		amos4 = amos.chapters.create(chapter_no: 4)
		amos5 = amos.chapters.create(chapter_no: 5)
		amos6 = amos.chapters.create(chapter_no: 6)
		amos7 = amos.chapters.create(chapter_no: 7)
		amos8 = amos.chapters.create(chapter_no: 8)
		amos9 = amos.chapters.create(chapter_no: 9)

	obadiah = minor_prophets.books.create(name: "Obadiah", title: "俄巴底亞書", book_code: "Ob", chinese_code: "俄",
		description: "")
		obadiah1 = obadiah.chapters.create(chapter_no: 1)

	jonah = minor_prophets.books.create(name: "Jonah", title: "約拿書", book_code: "Jnh", chinese_code: "拿",
		description: "")
		jonah1 = jonah.chapters.create(chapter_no: 1)
		jonah2 = jonah.chapters.create(chapter_no: 2)
		jonah3 = jonah.chapters.create(chapter_no: 3)
		jonah4 = jonah.chapters.create(chapter_no: 4)

	micah = minor_prophets.books.create(name: "Micah", title: "彌迦書", book_code: "Mic", chinese_code: "彌",
		description: "")
		micah1 = micah.chapters.create(chapter_no: 1)
		micah2 = micah.chapters.create(chapter_no: 2)
		micah3 = micah.chapters.create(chapter_no: 3)
		micah4 = micah.chapters.create(chapter_no: 4)
		micah5 = micah.chapters.create(chapter_no: 5)
		micah6 = micah.chapters.create(chapter_no: 6)
		micah7 = micah.chapters.create(chapter_no: 7)

	nahum = minor_prophets.books.create(name: "Nahum", title: "那鴻書", book_code: "Na", chinese_code: "鴻",
		description: "")
		nahum1 = nahum.chapters.create(chapter_no: 1)
		nahum2 = nahum.chapters.create(chapter_no: 2)
		nahum3 = nahum.chapters.create(chapter_no: 3)

	habakkuk = minor_prophets.books.create(name: "Habakkuk", title: "哈巴谷書", book_code: "Hab", chinese_code: "哈",
		description: "")
		habakkuk1 = habakkuk.chapters.create(chapter_no: 1)
		habakkuk2 = habakkuk.chapters.create(chapter_no: 2)
		habakkuk3 = habakkuk.chapters.create(chapter_no: 3)

	zephaniah = minor_prophets.books.create(name: "Zephaniah", title: "西番亞書", book_code: "Zep", chinese_code: "番",
		description: "")
		zephaniah1 = zephaniah.chapters.create(chapter_no: 1)
		zephaniah2 = zephaniah.chapters.create(chapter_no: 2)
		zephaniah3 = zephaniah.chapters.create(chapter_no: 3)

	haggai = minor_prophets.books.create(name: "Haggai", title: "哈該書", book_code: "Hag", chinese_code: "該",
		description: "")
		haggai1 = haggai.chapters.create(chapter_no: 1)
		haggai2 = haggai.chapters.create(chapter_no: 2)

	zechariah = minor_prophets.books.create(name: "Zechariah", title: "撒迦利亞書", book_code: "Zec", chinese_code: "亞",
		description: "")
		zechariah1 = zechariah.chapters.create(chapter_no: 1)
		zechariah2 = zechariah.chapters.create(chapter_no: 2)
		zechariah3 = zechariah.chapters.create(chapter_no: 3)
		zechariah4 = zechariah.chapters.create(chapter_no: 4)
		zechariah5 = zechariah.chapters.create(chapter_no: 5)
		zechariah6 = zechariah.chapters.create(chapter_no: 6)
		zechariah7 = zechariah.chapters.create(chapter_no: 7)
		zechariah8 = zechariah.chapters.create(chapter_no: 8)
		zechariah9 = zechariah.chapters.create(chapter_no: 9)
		zechariah10 = zechariah.chapters.create(chapter_no: 10)

		zechariah11 = zechariah.chapters.create(chapter_no: 11)
		zechariah12 = zechariah.chapters.create(chapter_no: 12)
		zechariah13 = zechariah.chapters.create(chapter_no: 13)
		zechariah14 = zechariah.chapters.create(chapter_no: 14)

	melachi = minor_prophets.books.create(name: "Melachi", title: "瑪拉基書", book_code: "Mal", chinese_code: "瑪",
		description: "")
		melachi1 = melachi.chapters.create(chapter_no: 1)
		melachi2 = melachi.chapters.create(chapter_no: 2)
		melachi3 = melachi.chapters.create(chapter_no: 3)
		melachi4 = melachi.chapters.create(chapter_no: 4)

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
		matthew_1 = matthew.chapters.create(chapter_no: 1)
		matthew_2 = matthew.chapters.create(chapter_no: 2)
		matthew_3 = matthew.chapters.create(chapter_no: 3)
		matthew_4 = matthew.chapters.create(chapter_no: 4)
		matthew_5 = matthew.chapters.create(chapter_no: 5)
		matthew_6 = matthew.chapters.create(chapter_no: 6)
		matthew_7 = matthew.chapters.create(chapter_no: 7)
		matthew_8 = matthew.chapters.create(chapter_no: 8)
		matthew_9 = matthew.chapters.create(chapter_no: 9)
		matthew_10 = matthew.chapters.create(chapter_no: 10)

		matthew_11 = matthew.chapters.create(chapter_no: 11)
		matthew_12 = matthew.chapters.create(chapter_no: 12)
		matthew_13 = matthew.chapters.create(chapter_no: 13)
		matthew_14 = matthew.chapters.create(chapter_no: 14)
		matthew_15 = matthew.chapters.create(chapter_no: 15)
		matthew_16 = matthew.chapters.create(chapter_no: 16)
		matthew_17 = matthew.chapters.create(chapter_no: 17)
		matthew_18 = matthew.chapters.create(chapter_no: 18)
		matthew_19 = matthew.chapters.create(chapter_no: 19)
		matthew_20 = matthew.chapters.create(chapter_no: 20)

		matthew_21 = matthew.chapters.create(chapter_no: 21)
		matthew_22 = matthew.chapters.create(chapter_no: 22)
		matthew_23 = matthew.chapters.create(chapter_no: 23)
		matthew_24 = matthew.chapters.create(chapter_no: 24)
		matthew_25 = matthew.chapters.create(chapter_no: 25)
		matthew_26 = matthew.chapters.create(chapter_no: 26)
		matthew_27 = matthew.chapters.create(chapter_no: 27)
		matthew_28 = matthew.chapters.create(chapter_no: 28)

	mark = gospels.books.create(name: "Mark", title: "馬可福音", book_code: "Mk", chinese_code: "可",
		description: "")
		mark_1 = mark.chapters.create(chapter_no: 1)
		mark_2 = mark.chapters.create(chapter_no: 2)
		mark_3 = mark.chapters.create(chapter_no: 3)
		mark_4 = mark.chapters.create(chapter_no: 4)
		mark_5 = mark.chapters.create(chapter_no: 5)
		mark_6 = mark.chapters.create(chapter_no: 6)
		mark_7 = mark.chapters.create(chapter_no: 7)
		mark_8 = mark.chapters.create(chapter_no: 8)
		mark_9 = mark.chapters.create(chapter_no: 9)
		mark_10 = mark.chapters.create(chapter_no: 10)

		mark_11 = mark.chapters.create(chapter_no: 11)
		mark_12 = mark.chapters.create(chapter_no: 12)
		mark_13 = mark.chapters.create(chapter_no: 13)
		mark_14 = mark.chapters.create(chapter_no: 14)
		mark_15 = mark.chapters.create(chapter_no: 15)
		mark_16 = mark.chapters.create(chapter_no: 16)

	luke = gospels.books.create(name: "Luke", title: "路加福音", book_code: "Lk", chinese_code: "路",
		description: "")
		luke_1 = luke.chapters.create(chapter_no: 1)
		luke_2 = luke.chapters.create(chapter_no: 2)
		luke_3 = luke.chapters.create(chapter_no: 3)
		luke_4 = luke.chapters.create(chapter_no: 4)
		luke_5 = luke.chapters.create(chapter_no: 5)
		luke_6 = luke.chapters.create(chapter_no: 6)
		luke_7 = luke.chapters.create(chapter_no: 7)
		luke_8 = luke.chapters.create(chapter_no: 8)
		luke_9 = luke.chapters.create(chapter_no: 9)
		luke_10 = luke.chapters.create(chapter_no: 10)

		luke_11 = luke.chapters.create(chapter_no: 11)
		luke_12 = luke.chapters.create(chapter_no: 12)
		luke_13 = luke.chapters.create(chapter_no: 13)
		luke_14 = luke.chapters.create(chapter_no: 14)
		luke_15 = luke.chapters.create(chapter_no: 15)
		luke_16 = luke.chapters.create(chapter_no: 16)
		luke_17 = luke.chapters.create(chapter_no: 17)
		luke_18 = luke.chapters.create(chapter_no: 18)
		luke_19 = luke.chapters.create(chapter_no: 19)
		luke_20 = luke.chapters.create(chapter_no: 20)

		luke_21 = luke.chapters.create(chapter_no: 21)
		luke_22 = luke.chapters.create(chapter_no: 22)
		luke_23 = luke.chapters.create(chapter_no: 23)
		luke_24 = luke.chapters.create(chapter_no: 24)


	john = gospels.books.create(name: "John", title: "約翰福音", book_code: "Jn", chinese_code: "約",
		description: "")

		john_1 = john.chapters.create(chapter_no: 1)
		john_2 = john.chapters.create(chapter_no: 2)
		john_3 = john.chapters.create(chapter_no: 3)
		john_4 = john.chapters.create(chapter_no: 4)
		john_5 = john.chapters.create(chapter_no: 5)
		john_6 = john.chapters.create(chapter_no: 6)
		john_7 = john.chapters.create(chapter_no: 7)
		john_8 = john.chapters.create(chapter_no: 8)
		john_9 = john.chapters.create(chapter_no: 9)
		john_10 = john.chapters.create(chapter_no: 10)

		john_11 = john.chapters.create(chapter_no: 11)
		john_12 = john.chapters.create(chapter_no: 12)
		john_13 = john.chapters.create(chapter_no: 13)
		john_14 = john.chapters.create(chapter_no: 14)
		john_15 = john.chapters.create(chapter_no: 15)
		john_16 = john.chapters.create(chapter_no: 16)
		john_17 = john.chapters.create(chapter_no: 17)
		john_18 = john.chapters.create(chapter_no: 18)
		john_19 = john.chapters.create(chapter_no: 19)
		john_20 = john.chapters.create(chapter_no: 20)

		john_21 = john.chapters.create(chapter_no: 21)


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
		acts1 = acts.chapters.create(chapter_no: 1)
		acts2 = acts.chapters.create(chapter_no: 2)
		acts3 = acts.chapters.create(chapter_no: 3)
		acts4 = acts.chapters.create(chapter_no: 4)
		acts5 = acts.chapters.create(chapter_no: 5)
		acts6 = acts.chapters.create(chapter_no: 6)
		acts7 = acts.chapters.create(chapter_no: 7)
		acts8 = acts.chapters.create(chapter_no: 8)
		acts9 = acts.chapters.create(chapter_no: 9)
		acts10 = acts.chapters.create(chapter_no: 10)

		acts11 = acts.chapters.create(chapter_no: 11)
		acts12 = acts.chapters.create(chapter_no: 12)
		acts13 = acts.chapters.create(chapter_no: 13)
		acts14 = acts.chapters.create(chapter_no: 14)
		acts15 = acts.chapters.create(chapter_no: 15)
		acts16 = acts.chapters.create(chapter_no: 16)
		acts17 = acts.chapters.create(chapter_no: 17)
		acts18 = acts.chapters.create(chapter_no: 18)
		acts19 = acts.chapters.create(chapter_no: 19)
		acts20 = acts.chapters.create(chapter_no: 20)

		acts21 = acts.chapters.create(chapter_no: 21)
		acts22 = acts.chapters.create(chapter_no: 22)
		acts23 = acts.chapters.create(chapter_no: 23)
		acts24 = acts.chapters.create(chapter_no: 24)
		acts25 = acts.chapters.create(chapter_no: 25)
		acts26 = acts.chapters.create(chapter_no: 26)
		acts27 = acts.chapters.create(chapter_no: 27)
		acts28 = acts.chapters.create(chapter_no: 28)


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

		romans1 = romans.chapters.create(chapter_no: 1)
		romans2 = romans.chapters.create(chapter_no: 2)
		romans3 = romans.chapters.create(chapter_no: 3)
		romans4 = romans.chapters.create(chapter_no: 4)
		romans5 = romans.chapters.create(chapter_no: 5)
		romans6 = romans.chapters.create(chapter_no: 6)
		romans7 = romans.chapters.create(chapter_no: 7)
		romans8 = romans.chapters.create(chapter_no: 8)
		romans9 = romans.chapters.create(chapter_no: 9)
		romans10 = romans.chapters.create(chapter_no: 10)
		romans11 = romans.chapters.create(chapter_no: 11)
		romans12 = romans.chapters.create(chapter_no: 12)
		romans13 = romans.chapters.create(chapter_no: 13)
		romans14 = romans.chapters.create(chapter_no: 14)
		romans15 = romans.chapters.create(chapter_no: 15)
		romans16 = romans.chapters.create(chapter_no: 16)

	corith_1 = paul_letters.books.create(name: "1 Corithians", title: "哥林多前書", book_code: "1Co", chinese_code: "林前",
		description: "")
		corith1_1 = corith_1.chapters.create(chapter_no: 1)
		corith1_2 = corith_1.chapters.create(chapter_no: 2)
		corith1_3 = corith_1.chapters.create(chapter_no: 3)
		corith1_4 = corith_1.chapters.create(chapter_no: 4)
		corith1_5 = corith_1.chapters.create(chapter_no: 5)
		corith1_6 = corith_1.chapters.create(chapter_no: 6)
		corith1_7 = corith_1.chapters.create(chapter_no: 7)
		corith1_8 = corith_1.chapters.create(chapter_no: 8)
		corith1_9 = corith_1.chapters.create(chapter_no: 9)
		corith1_10 = corith_1.chapters.create(chapter_no: 10)
		corith1_11 = corith_1.chapters.create(chapter_no: 11)
		corith1_12 = corith_1.chapters.create(chapter_no: 12)
		corith1_13 = corith_1.chapters.create(chapter_no: 13)
		corith1_14 = corith_1.chapters.create(chapter_no: 14)
		corith1_15 = corith_1.chapters.create(chapter_no: 15)
		corith1_16 = corith_1.chapters.create(chapter_no: 16)

	corith_2 = paul_letters.books.create(name: "2 Corithians", title: "哥林多后書", book_code: "2C", chinese_code: "林后",
		description: "")
		corith2_1 = corith_2.chapters.create(chapter_no: 1)
		corith2_2 = corith_2.chapters.create(chapter_no: 2)
		corith2_3 = corith_2.chapters.create(chapter_no: 3)
		corith2_4 = corith_2.chapters.create(chapter_no: 4)
		corith2_5 = corith_2.chapters.create(chapter_no: 5)
		corith2_6 = corith_2.chapters.create(chapter_no: 6)
		corith2_7 = corith_2.chapters.create(chapter_no: 7)
		corith2_8 = corith_2.chapters.create(chapter_no: 8)
		corith2_9 = corith_2.chapters.create(chapter_no: 9)
		corith2_10 = corith_2.chapters.create(chapter_no: 10)
		corith2_11 = corith_2.chapters.create(chapter_no: 11)
		corith2_12 = corith_2.chapters.create(chapter_no: 12)
		corith2_13 = corith_2.chapters.create(chapter_no: 13)

	galatians = paul_letters.books.create(name: "Galatians", title: "加拉太書", book_code: "Gal", chinese_code: "加",
		description: "")
		gala_1 = galatians.chapters.create(chapter_no: 1)
		gala_2 = galatians.chapters.create(chapter_no: 2)
		gala_3 = galatians.chapters.create(chapter_no: 3)
		gala_4 = galatians.chapters.create(chapter_no: 4)
		gala_5 = galatians.chapters.create(chapter_no: 5)
		gala_6 = galatians.chapters.create(chapter_no: 6)

	ephesians = paul_letters.books.create(name: "Ephesians", title: "以弗所書", book_code: "Eph", chinese_code: "弗",
		description: "")
		ephes_1 = ephesians.chapters.create(chapter_no: 1)
		ephes_2 = ephesians.chapters.create(chapter_no: 2)
		ephes_3 = ephesians.chapters.create(chapter_no: 3)
		ephes_4 = ephesians.chapters.create(chapter_no: 4)
		ephes_5 = ephesians.chapters.create(chapter_no: 5)
		ephes_6 = ephesians.chapters.create(chapter_no: 6)

	phillippians = paul_letters.books.create(name: "Phillippians", title: "腓立比書", book_code: "Php", chinese_code: "腓",
		description: "")
		phil_1 = phillippians.chapters.create(chapter_no: 1)
		phil_2 = phillippians.chapters.create(chapter_no: 2)
		phil_3 = phillippians.chapters.create(chapter_no: 3)
		phil_4 = phillippians.chapters.create(chapter_no: 4)

	colossians = paul_letters.books.create(name: "Colossians", title: "歌羅西書", book_code: "Col", chinese_code: "西",
		description: "")
		col_1 = colossians.chapters.create(chapter_no: 1)
		col_2 = colossians.chapters.create(chapter_no: 2)
		col_3 = colossians.chapters.create(chapter_no: 3)
		col_4 = colossians.chapters.create(chapter_no: 4)
		
	thess_1 = paul_letters.books.create(name: "1 Thessalonians", title: "帖撒羅尼迦前書", book_code: "1Th", chinese_code: "帖前",
		description: "")
		thess1_1 = thess_1.chapters.create(chapter_no: 1)
		thess1_2 = thess_1.chapters.create(chapter_no: 2)
		thess1_3 = thess_1.chapters.create(chapter_no: 3)
		thess1_4 = thess_1.chapters.create(chapter_no: 4)
		thess1_5 = thess_1.chapters.create(chapter_no: 5)


	thess_2 = paul_letters.books.create(name: "2 Thessalonians", title: "帖撒羅尼迦后書", book_code: "2Th", chinese_code: "帖后",
		description: "")
		thess2_1 = thess_2.chapters.create(chapter_no: 1)
		thess2_2 = thess_2.chapters.create(chapter_no: 2)
		thess2_3 = thess_2.chapters.create(chapter_no: 3)


	tim_1 = paul_letters.books.create(name: "1 Timothy", title: "提摩太前書", book_code: "1Ti", chinese_code: "提前",
		description: "")
		tim1_1 = tim_1.chapters.create(chapter_no: 1)
		tim1_2 = tim_1.chapters.create(chapter_no: 2)
		tim1_3 = tim_1.chapters.create(chapter_no: 3)
		tim1_4 = tim_1.chapters.create(chapter_no: 4)
		tim1_5 = tim_1.chapters.create(chapter_no: 5)
		tim1_6 = tim_1.chapters.create(chapter_no: 6)

	tim_2 = paul_letters.books.create(name: "2 Timothy", title: "提摩太后書", book_code: "2Ti", chinese_code: "提后",
		description: "")
		tim2_1 = tim_2.chapters.create(chapter_no: 1)
		tim2_2 = tim_2.chapters.create(chapter_no: 2)
		tim2_3 = tim_2.chapters.create(chapter_no: 3)
		tim2_4 = tim_2.chapters.create(chapter_no: 4)

	titus = paul_letters.books.create(name: "Titus", title: "提多書", book_code: "Tit", chinese_code: "多",
		description: "")
		titus1 = titus.chapters.create(chapter_no: 1)
		titus2 = titus.chapters.create(chapter_no: 2)
		titus3 = titus.chapters.create(chapter_no: 3)

	philemon = paul_letters.books.create(name: "Philemon", title: "腓利門書", book_code: "Phm", chinese_code: "門",
		description: "")
		philemon1 = philemon.chapters.create(chapter_no: 1)
	
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
		hebrews1 = hebrews.chapters.create(chapter_no: 1)
		hebrews2 = hebrews.chapters.create(chapter_no: 2)
		hebrews3 = hebrews.chapters.create(chapter_no: 3)
		hebrews4 = hebrews.chapters.create(chapter_no: 4)
		hebrews5 = hebrews.chapters.create(chapter_no: 5)
		hebrews6 = hebrews.chapters.create(chapter_no: 6)
		hebrews7 = hebrews.chapters.create(chapter_no: 7)
		hebrews8 = hebrews.chapters.create(chapter_no: 8)
		hebrews9 = hebrews.chapters.create(chapter_no: 9)
		hebrews10 = hebrews.chapters.create(chapter_no: 10)
		hebrews11 = hebrews.chapters.create(chapter_no: 11)
		hebrews12 = hebrews.chapters.create(chapter_no: 12)
		hebrews13 = hebrews.chapters.create(chapter_no: 13)

	james = other_letters.books.create(name: "James", title: "雅各書", book_code: "Jas", chinese_code: "",
		description: "")
		james1 = james.chapters.create(chapter_no: 1)
		james2 = james.chapters.create(chapter_no: 2)
		james3 = james.chapters.create(chapter_no: 3)
		james4 = james.chapters.create(chapter_no: 4)
		james5 = james.chapters.create(chapter_no: 5)

	peter_1 = other_letters.books.create(name: "1 Peter", title: "彼得前書", book_code: "1Pe", chinese_code: "",
		description: "")
		peter1_1 = peter_1.chapters.create(chapter_no: 1)
		peter1_2 = peter_1.chapters.create(chapter_no: 2)
		peter1_3 = peter_1.chapters.create(chapter_no: 3)
		peter1_4 = peter_1.chapters.create(chapter_no: 4)
		peter1_5 = peter_1.chapters.create(chapter_no: 5)

	peter_2 = other_letters.books.create(name: "2 Peter", title: "彼得后書", book_code: "2Pe", chinese_code: "",
		description: "")
		peter2_1 = peter_2.chapters.create(chapter_no: 1)
		peter2_2 = peter_2.chapters.create(chapter_no: 2)
		peter2_3 = peter_2.chapters.create(chapter_no: 3)

	john_1 = other_letters.books.create(name: "1 John", title: "約翰１書", book_code: "1Jn", chinese_code: "",
		description: "")
		john1_1 = john_1.chapters.create(chapter_no: 1)
		john1_2 = john_1.chapters.create(chapter_no: 2)
		john1_3 = john_1.chapters.create(chapter_no: 3)
		john1_4 = john_1.chapters.create(chapter_no: 4)
		john1_5 = john_1.chapters.create(chapter_no: 5)

	john_2 = other_letters.books.create(name: "2 John", title: "約翰２書", book_code: "2Jn", chinese_code: "",
		description: "")
		john2_1 = john_2.chapters.create(chapter_no: 1)

	john_3 = other_letters.books.create(name: "3 John", title: "約翰３書", book_code: "3Jn", chinese_code: "",
		description: "")
		john3_1 = john_3.chapters.create(chapter_no: 1)

	jude = other_letters.books.create(name: "Jude", title: "猶大書", book_code: "Jude", chinese_code: "",
		description: "")
		jude1 = jude.chapters.create(chapter_no: 1)

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
		rev1 = revelation.chapters.create(chapter_no: 1)
		rev2 = revelation.chapters.create(chapter_no: 2)
		rev3 = revelation.chapters.create(chapter_no: 3)
		rev4 = revelation.chapters.create(chapter_no: 4)
		rev5 = revelation.chapters.create(chapter_no: 5)
		rev6 = revelation.chapters.create(chapter_no: 6)
		rev7 = revelation.chapters.create(chapter_no: 7)
		rev8 = revelation.chapters.create(chapter_no: 8)
		rev9 = revelation.chapters.create(chapter_no: 9)
		rev10 = revelation.chapters.create(chapter_no: 10)

		rev11 = revelation.chapters.create(chapter_no: 11)
		rev12 = revelation.chapters.create(chapter_no: 12)
		rev13 = revelation.chapters.create(chapter_no: 13)
		rev14 = revelation.chapters.create(chapter_no: 14)
		rev15 = revelation.chapters.create(chapter_no: 15)
		rev16 = revelation.chapters.create(chapter_no: 16)
		rev17 = revelation.chapters.create(chapter_no: 17)
		rev18 = revelation.chapters.create(chapter_no: 18)
		rev19 = revelation.chapters.create(chapter_no: 19)
		rev20 = revelation.chapters.create(chapter_no: 20)

		rev21 = revelation.chapters.create(chapter_no: 21)
		rev22 = revelation.chapters.create(chapter_no: 22)


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

