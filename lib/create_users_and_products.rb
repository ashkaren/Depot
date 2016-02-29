User.transaction do
User.create( :name => 'dave', 
             :password =>'dave', 
             :password_confirmation => 'dave')

dave_id = (User.find_by(name: 'dave')).id
Product.create!(title: 'The last wild',
  description: 
    %{<p>
        In a world where animals are slowly fading into extinction, twelve-year-old Kester Jaynes feels as if he hardly exists either. He’s been locked away in a home for troubled children and is unable to speak a word. Then one night, a flock of talking pigeons and a bossy cockroach come to help him escape, and he discovers that he can speak—to them. And the animals need him. Only Kester, with the aid of a stubborn, curious girl named Polly, can help them survive.
      </p>},
  image_url: open('app/assets/images/download.jpg'),    
  price: 72.00, 
  user_id: dave_id)
# . . .
Product.create!(title: 'The iceberg',
  description:
    %{<p>
        Following the widely acclaimed and bestselling The Summer Book, here is a Winter Book collection of some of Tove Jansson’s best loved and most famous stories. Drawn from youth and older age, and spanning most of the twentieth century, this newly translated selection provides a thrilling showcase of the great Finnish writer’s prose, scattered with insights and home truths. It has been selected and is introduced by Ali Smith, and there are afterwords by Philip Pullman, Esther Freud and Frank Cottrell Boyce.
      </p>},
  image_url: open('app/assets/images/iceberg.jpg'),
  price: 60.00,
  user_id: dave_id)

User.create( :name => 'mary', 
             :password =>'mary', 
             :password_confirmation => 'mary')

mary_id = (User.find_by(name: 'mary')).id
Product.create!(title: 'The Hobbit',
  description: 
    %{<p>
        If you care for journeys there and back, out of the comfortable Western world, over the edge of the Wild, and home again, and can take an interest in a humble hero (blessed with a little wisdom and a little courage and considerable good luck), here is a record of such a journey and such a traveler. The period is the ancient time between the age of Faerie and the dominion of men, when the famous forest of Mirkwood was still standing, and the mountains were full of danger. In following the path of this humble adventurer, you will learn by the way (as he did) -- if you do not already know all about these things -- much about trolls, goblins, dwarves, and elves, and get some glimpses into the history and politics of a neglected but important period. For Mr. Bilbo Baggins visited various notable persons; conversed with the dragon, Smaug the Magnificent; and was present, rather unwillingly, at the Battle of the Five Armies. This is all the more remarkable, since he was a hobbit. Hobbits have hitherto been passed over in history and legend, perhaps because they as a rule preferred comfort to excitement. But this account, based on his personal memoirs, of the one exciting year in the otherwise quiet life of Mr. Baggins will give you a fair idea of the estimable people now (it is said) becoming rather rare. They do not like noise.
      </p>},
  image_url: open('app/assets/images/hobbit.jpg'),    
  price: 100.00, 
  user_id: mary_id)
# . . .
Product.create!(title: 'The Lord of The Rings',
  description:
    %{<p>
        Thousands of years before the events of the novel, the Dark Lord Sauron had forged the One Ring to rule the other Rings of Power and corrupt those who wear them: the leaders of Men, Elves and Dwarves. He was later vanquished in battle by an alliance of Elves and Men led by Elendil and Gil-galad. Isildur, a ruler of Men, cut the One Ring from Sauron's finger, claiming it as an heirloom for his line, and Sauron lost his physical form. When Isildur was later ambushed and killed by Orcs, the Ring was lost in the River Anduin at Gladden Fields.

Over two thousand years later, the Ring was found by one of the river-folk called Déagol. His friend Sméagol immediately fell under the Ring's influence and strangled Déagol to acquire it. Sméagol was banished and hid under the Misty Mountains, where the Ring extended his lifespan and transformed him over the course of hundreds of years into a twisted, corrupted creature called Gollum. He lost the Ring, his "precious", and, as recounted in The Hobbit, Bilbo Baggins found it. Meanwhile, Sauron re-assumed physical form and took back his old realm of Mordor. Gollum set out in search of the Ring, but was captured by Sauron, who learnt from him that "Baggins" in the Shire had taken it. Gollum was set loose, and Sauron, who needed the Ring to regain his full power, sent forth his powerful servants, the Nazgûl, to seize it.
      </p>},
  image_url: open('app/assets/images/lotr.jpg'),
  price: 160.00,
  user_id: mary_id)
end