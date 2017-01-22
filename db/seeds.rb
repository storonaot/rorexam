Image.delete_all
Image.reset_pk_sequence
Image.create([
  { name: 'Рыбка Поньо на утесе (2008)', file: 'gake_no_ue_no_ponyo.jpg', theme_id: 2 },
  { name: 'Ходячий замок (2004)', file: 'hauru_no_ugoku_shiro.jpg', theme_id: 2 },
  { name: 'Порко Россо (1992)', file: 'porco_rosso.jpg', theme_id: 2 },
  { name: 'Унесенные призраками (2001)', file: 'sen_to_chihiro_no_kamikakushi.jpg', theme_id: 2 },
  { name: 'Ветер крепчает (2013)', file: 'kaze_tachinu.jpg', theme_id: 2 },
  { name: 'Принцесса Мононоке (1997)', file: 'mononoke_hime.jpg', theme_id: 2 },
  { name: 'Ведьмина служба доставки (1989)', file: 'majo_no_takkyubin.jpg', theme_id: 2 },
  { name: 'Мой сосед Тоторо (1988)', file: 'tonari_no_totoro.jpg', theme_id: 2 },
  { name: 'Навсикая из долины ветров (1984)', file: 'kaze_no_tani_no_naushika.jpg', theme_id: 2 },
  { name: 'Небесный замок Лапута (1986)', file: 'tenku_no_shiro_rapyuta.jpg', theme_id: 2 },
  { name: 'Пережить свою жизнь (2010)', file: 'prezit_svuj_zivot.jpg', theme_id: 3 },
  { name: 'Безумие (2005)', file: 'sileni.jpg', theme_id: 3 },
  { name: 'Полено (2000)', file: 'otesanek.jpg', theme_id: 3 },
  { name: 'Конспираторы наслаждений (1996)', file: 'spiklenci_slasti.jpg', theme_id: 3 },
  { name: 'Урок Фауста (1994)', file: 'faust.jpg', theme_id: 3 },
  { name: 'Алиса (1987)', file: 'neco_z_alenky.jpg', theme_id: 3 },
  { name: 'Симпсоны', file: 'the_simpsons.jpg', theme_id: 4 },
  { name: 'Футурама', file: 'futurama.jpg', theme_id: 4 },
  { name: 'Гравити Фолз', file: 'gravity_falls.jpg', theme_id: 4 },
  { name: 'Рик и Морти', file: 'rick_and_morty.png', theme_id: 4 },
  { name: 'По ту сторону изгороди', file: 'over_the_garden_wall.jpg', theme_id: 4 },
  { name: 'Время приключений', file: 'adventure_time_with_finn&jake.jpg', theme_id: 4 },
  { name: 'Тюряга', file: 'superjail.jpg', theme_id: 4 },
  { name: 'Гадкие американцы', file: 'ugly_americans.jpg', theme_id: 4 },
  { name: 'Мистер Пиклз', file: 'mr_pickles.jpg', theme_id: 4 },
  { name: 'Бриклберри', file: 'brickleberry.jpg', theme_id: 4 },
  { name: 'Американский папаша', file: 'american_dad.jpg', theme_id: 4 },
  { name: 'Южный Парк', file: 'south_park.jpg', theme_id: 4 },
  { name: 'Храбрейшие воины', file: 'bravest_warriors.jpg', theme_id: 4 },
  { name: 'Удивительные злоключения Флэпджека', file: 'the_marvelous_misadventures_of_flapjack.jpg', theme_id: 4 },
  { name: 'Губка Боб квадратные штаны', file: 'spongebob_squarepants.jpg', theme_id: 4 },
  { name: 'Удивительный мир Гамбола', file: 'the_amazing_world_of_gumball.jpg', theme_id: 4 },
  { name: 'Вселенная Стивена', file: 'steven_universe.jpg', theme_id: 4 },
  { name: 'Обычное шоу', file: 'regular_show.jpg', theme_id: 4 },
  { name: 'Шоу Рики Джервэйса', file: 'the_ricky_gervais_show.jpg', theme_id: 4 },
  { name: 'Король Звёздный король', file: 'king_star_king.jpg', theme_id: 4 }
])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
  {name: "-----"},                         # 1
  {name: "Лучший фильм Хаяо Миядзаки"},    # 2
  {name: "Лучший фильм Яна Шванкмайера"},  # 3
  {name: "Лучший анимационный сериал"},    # 4
])
