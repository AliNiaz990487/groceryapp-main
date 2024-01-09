import 'package:flutter/material.dart';

double padding = 16;
double rightPadding = 15;
TextStyle mainText = const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);
TextStyle descriptionText =
    const TextStyle(fontSize: 14, color: Color.fromARGB(255, 95, 95, 95));
TextStyle upperCardDescription = const TextStyle(fontSize: 10, color: Colors.white);
TextStyle upperCardText = const TextStyle(fontSize: 15, color: Colors.white);

TextEditingController searchField = TextEditingController();
TextStyle productnameandprice =
    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);






//------------------------------------------FRUITS-------------------------------------------------------
List<List<dynamic>> fruits = [
  ["Apple", "Fresh Apples", "\$2.5", "Per kilo", "assets/images/fruits/apple.png", Colors.red],
  ["Orange", "Citrus Oranges", "\$1.0", "Per dozen", "assets/images/fruits/orange.png", Colors.orange],
  ["Mango", "Juicy Mangoes", "\$2.5", "Per piece", "assets/images/fruits/mango.png", Colors.orange],
  ["Banana", "Ripe Bananas", "\$1.0", "Per dozen", "assets/images/fruits/banana.png", const Color.fromARGB(255, 194, 178, 36)],
  ["Strawberry", "Sweet Strawberries", "\$3.2", "Per kilo", "assets/images/fruits/strawberry.png", Colors.red],
  ["Pineapple", "Tropical Pineapples", "\$3.5", "Per piece", "assets/images/fruits/pineapple.png", const Color.fromARGB(255, 194, 178, 36)],
  ["Peach", "Juicy Peaches", "\$2.7", "Per kilo", "assets/images/fruits/peach.png", Colors.orange],
  ["Avocado", "Creamy Avocados", "\$5.0", "Per piece", "assets/images/fruits/avocado.png", Colors.green],
  ["Grapes", "Sweet Grapes", "\$2.0", "Per kilo", "assets/images/fruits/grapes.png", Colors.purple],
  ["Watermelon", "Refreshing Watermelons", "\$6.0", "Per piece", "assets/images/fruits/watermelon.png", Colors.green],
  ["Cherry", "Sweet Cherries", "\$3.0", "Per kilo", "assets/images/fruits/cherry.png", Colors.red],
  ["Blackberry", "Plump Blackberries", "\$2.3", "Per kilo", "assets/images/fruits/blackberry.png", Colors.purple],
  ["Blueberry", "Juicy Blueberries", "\$2.0", "Per kilo", "assets/images/fruits/blueberry.png", Colors.blue],
  ["Melon", "Ripe Melons", "\$2.5", "Per piece", "assets/images/fruits/melon.png", Colors.green],
  ["Lemon", "Juicy Lemons", "\$1.8", "Per dozen", "assets/images/fruits/lemon.png", const Color.fromARGB(255, 194, 178, 36)],
  ["Papaya", "Ripe Papayas", "\$4.5", "Per kilo", "assets/images/fruits/papaya.png", Colors.orange],
  ["Raspberry", "Plump Raspberries", "\$2.0", "Per kilo", "assets/images/fruits/rasberry.png", Colors.pink],
  ["Lime", "Tangy Limes", "\$1.2", "Per dozen", "assets/images/fruits/lime.png", Colors.green],
  ["Fig", "Delicious Figs", "\$2.8", "Per dozen", "assets/images/fruits/fig.png", Colors.purple],
  ["Pear", "Sweet Pears", "\$2.0", "Per kilo", "assets/images/fruits/pear.png", Colors.green],
  ["Kiwi", "Tangy Kiwis", "\$1.5", "Per piece", "assets/images/fruits/kiwi.png", Colors.brown],
  ["Plum", "Sweet Plums", "\$2.2", "Per kilo", "assets/images/fruits/plum.png", Colors.purple],
  ["Coconut", "Tropical Coconuts", "\$3.5", "Per piece", "assets/images/fruits/coconut.png", Colors.brown],
];

  List<String> fruitDescriptions = [
    "Crisp and juicy, the apple is a classic fruit with a refreshing taste.",
    "Sweet and citrusy, oranges are packed with Vitamin C and make a perfect snack.",
    "Exotic and tropical, mangoes are known for their vibrant flavor and smooth texture.",
    "Naturally curved and creamy, bananas are a convenient and nutritious choice.",
    "Small and sweet, strawberries are bursting with flavor and are perfect for desserts or snacks.",
    "Tropical and prickly, pineapples offer a juicy and tangy taste.",
    "Soft and fuzzy, peaches are a summer fruit with a delicate and sweet flavor.",
    "Creamy and rich, avocados are a versatile fruit that can be used in both savory and sweet dishes.",
    "Small and bite-sized, grapes come in a variety of colors and offer a burst of sweetness.",
    "Refreshing and hydrating, watermelons are perfect for hot summer days.",
    "Tiny and vibrant, cherries are a sweet and tangy fruit that are perfect for snacking.",
    "Small and packed with flavor, blackberries offer a delightful balance of sweetness and tartness.",
    "Plump and juicy, blueberries are rich in antioxidants and have a sweet, yet tangy flavor.",
    "Juicy and aromatic, melons are a refreshing treat with a hint of sweetness.",
    "Tart and citrusy, lemons are often used for their zesty flavor in both cooking and beverages.",
    "Sweet and tropical, papayas offer a unique taste and are rich in vitamins.",
    "Tangy and vibrant, raspberries are packed with antioxidants and are a versatile fruit.",
    "Zesty and tangy, limes are commonly used in beverages and as a flavor enhancer in various dishes.",
    "Small and delicate, figs have a sweet and chewy texture with a subtle floral flavor.",
    "Juicy and sweet, pears are a versatile fruit that can be enjoyed fresh or used in various recipes.",
    "Tropical and tangy, kiwis are known for their bright green flesh and unique taste.",
    "Sweet and juicy, plums come in a variety of colors and have a deliciously sweet flavor.",
    "Tropical and refreshing, coconuts offer a unique flavor and are packed with nutrients."
  ];

//------------------------------------------VEGETABLES-------------------------------------------------------
List<List<dynamic>> vegetables = [
  ["Tomatoes", "Ripe Tomatoes", "\$2.5", "Per pound", "assets/images/vegetables/tomatoes.png", Colors.red],
  ["Onions", "Fresh Onions", "\$1.2", "Per pound", "assets/images/vegetables/onions.png", Colors.purple],
  ["Potatoes", "Farm Potatoes", "\$1.5", "Per pound", "assets/images/vegetables/potatoes.png", Colors.brown],
  ["Sweet Potatoes", "Sweet Potatoes", "\$2.2", "Per pound", "assets/images/vegetables/sweetpotatoes.png", Colors.orange],
  ["Bell Peppers", "Colorful Bell Peppers", "\$1.5", "Per piece", "assets/images/vegetables/bellpeppers.png", Colors.red],
  ["Carrots", "Juicy Carrots", "\$1.2", "Per pound", "assets/images/vegetables/carrots.png", Colors.orange],
  ["Cucumbers", "Crisp Cucumbers", "\$1.2", "Per pound", "assets/images/vegetables/cucumbers.png", Colors.green],
  ["Pumpkin", "Halloween Pumpkin", "\$3.0", "Per piece", "assets/images/vegetables/pumpkin.png", Colors.orange],
  ["Spinach", "Leafy Spinach", "\$2.0", "Per bunch", "assets/images/vegetables/spinach.png", Colors.green],
  ["Turnips", "Crunchy Turnips", "\$1.5", "Per bunch", "assets/images/vegetables/turnips.png", const Color.fromARGB(255, 155, 13, 138)],
  ["Cauliflower", "Crisp Cauliflower", "\$2.5", "Per head", "assets/images/vegetables/cauliflower.png", const Color.fromARGB(255, 17, 228, 17)],
  ["Eggplant", "Purple Eggplant", "\$1.8", "Per pound", "assets/images/vegetables/eggplant.png", Colors.purple],
  ["Broccoli", "Tender Broccoli", "\$2.0", "Per pound", "assets/images/vegetables/broccoli.png", Colors.green],
  ["Acorn Squash", "Sweet Acorn Squash", "\$2.0", "Per pound", "assets/images/vegetables/acornsquash.png", Colors.orange],
  ["Radishes", "Crisp Radishes", "\$1.8", "Per bunch", "assets/images/vegetables/radishes.png", Colors.red],
  ["Green Beans", "Fresh Green Beans", "\$1.5", "Per pound", "assets/images/vegetables/greenbeans.png", Colors.green],
  ["Butternut Squash", "Butternut Squash", "\$2.5", "Per pound", "assets/images/vegetables/butternutsquash.png", Colors.orange],
  ["Peas", "Sweet Peas", "\$2.5", "Per pound", "assets/images/vegetables/peas.png", Colors.green],
  ["Cabbage", "Fresh Cabbage", "\$1.5", "Per pound", "assets/images/vegetables/cabbage.png", Colors.green],
  ["Corn", "Sweet Corn", "\$0.8", "Per ear", "assets/images/vegetables/corn.png", Colors.yellow],
  ["Kale", "Nutritious Kale", "\$2.2", "Per bunch", "assets/images/vegetables/kale.png", Colors.green],
  ["Artichokes", "Tender Artichokes", "\$3.0", "Per piece", "assets/images/vegetables/artichokes.png", Colors.green],
  ["Lettuce", "Fresh Lettuce", "\$1.5", "Per head", "assets/images/vegetables/lettuce.png", Colors.green],
  ["Asparagus", "Tender Asparagus", "\$3.5", "Per pound", "assets/images/vegetables/asparagus.png", Colors.green],
  ["Mushrooms", "Fresh Mushrooms", "\$2.5", "Per pound", "assets/images/vegetables/mushrooms.png", Colors.brown],
  ["Beets", "Colorful Beets", "\$2.0", "Per bunch", "assets/images/vegetables/beets.png", Colors.red],
  ["Celery", "Crunchy Celery", "\$1.8", "Per bunch", "assets/images/vegetables/celery.png", Colors.green],
  ["Okra", "Fresh Okra", "\$2.5", "Per pound", "assets/images/vegetables/okra.png", Colors.green],
  ["Zucchini", "Fresh Zucchini", "\$1.5", "Per pound", "assets/images/vegetables/zucchini.png", Colors.green],
  ["Brussels Sprouts", "Tasty Brussels Sprouts", "\$2.5", "Per pound", "assets/images/vegetables/brusselssprouts.png", Colors.green],
];

  List<String> vegetableDescriptions = [
    "Juicy and versatile, tomatoes are a staple ingredient in many cuisines, perfect for salads, sauces, and more.",
    "Pungent and flavorful, onions are used as a base for many dishes, adding depth of flavor.",
    "Starchy and versatile, potatoes can be prepared in various ways, from mashed potatoes to crispy fries.",
    "Naturally sweet and nutritious, sweet potatoes are a delicious alternative to regular potatoes, perfect for fries, casseroles, and pies.",
    "Colorful and crunchy, bell peppers add a refreshing taste to salads, stir-fries, and stuffed dishes.",
    "Crunchy and vibrant, carrots are packed with nutrients and can be enjoyed raw or cooked in various dishes.",
    "Cool and hydrating, cucumbers are refreshing in salads, sandwiches, or as a healthy snack.",
    "Sweet and versatile, pumpkin can be used in both sweet and savory dishes, like soups, pies, and desserts.",
    "Nutrient-rich and versatile, spinach can be enjoyed fresh or cooked, adding a boost of vitamins to your meals.",
    "Root vegetables with a slightly sweet flavor, turnips can be roasted, mashed, or added to stews and soups.",
    "Versatile and nutritious, cauliflower can be used as a low-carb alternative to rice, mashed potatoes, or as a pizza crust.",
    "Distinctive and versatile, eggplant can be baked, grilled, or fried, offering a rich and meaty texture.",
    "Nutrient-packed and vibrant, broccoli is a cruciferous vegetable that can be steamed, roasted, or stir-fried.",
    "Sweet and nutty, acorn squash is often roasted and stuffed, making a hearty and delicious meal.",
    "Peppery and crisp, radishes add a refreshing crunch to salads, tacos, and vegetable platters.",
    "Crunchy and flavorful, green beans are a versatile vegetable that can be steamed, sautéed, or added to stir-fries.",
    "Sweet and creamy, butternut squash is perfect for roasting, soups, or as a healthy side dish.",
    "Small and sweet, peas are a popular vegetable used in a variety of dishes, from stir-fries to pasta salads.",
    "Crunchy and robust, cabbage can be used in salads, slaws, stir-fries, or fermented into sauerkraut.",
    "Sweet and versatile, corn can be enjoyed on the cob, in salads, soups, or as a side dish.",
    "Nutrient-dense and hearty, kale is a leafy green that can be enjoyed raw in salads or sautéed as a side dish.",
    "Tender and flavorful, artichokes are a unique vegetable with edible leaves and a delicious heart.",
    "Crisp and refreshing, lettuce is the perfect base for salads, wraps, and sandwiches.",
    "Tender and flavorful, asparagus is a versatile vegetable that can be roasted, grilled, or sautéed.",
    "Earthy and savory, mushrooms add depth of flavor to various dishes, from stir-fries to pasta sauces.",
    "Sweet and earthy, beets can be roasted, pickled, or enjoyed raw in salads.",
    "Crunchy and aromatic, celery is often used in soups, stews, or as a healthy snack with dips.",
    "Tender and slightly slimy, okra is commonly used in stews, curries, and as a thickening agent.",
    "Versatile and mild, zucchini can be sautéed, grilled, or used in baking, like zucchini bread.",
    "Small and compact, Brussels sprouts offer a unique flavor when roasted, sautéed, or used in salads."
  ];

//-------------------------------------------MEATS------------------------------------------------------
List<List<dynamic>> meats = [
  ["Beef", "Premium Beef", "\$8.0", "Per pound", "assets/images/meat/beef.png", Colors.brown],
  ["Turkey Meat", "Lean Turkey Meat", "\$7.5", "Per pound", "assets/images/meat/turkeymeat.png", Colors.brown],
  ["Chicken", "Fresh Chicken", "\$5.0", "Per pound", "assets/images/meat/chicken.png", const Color.fromARGB(255, 144, 134, 43)],
  ["Lamb", "Tender Lamb", "\$9.0", "Per pound", "assets/images/meat/lamb.png", Colors.brown],
  ["Delimeats", "Delicious Deli Meats", "\$6.5", "Per pound", "assets/images/meat/delimeats.png", Colors.red],
  ["Seafoods", "Assorted Fish and Seafoods", "\$10.0", "Per pound", "assets/images/meat/fishandseafoods.png", Colors.blue],
  ["Pork", "Tasty Pork", "\$6.0", "Per pound", "assets/images/meat/pork.png", Colors.pink],
  ["Veal", "Juicy Veal", "\$8.5", "Per pound", "assets/images/meat/veal.png", Colors.brown],
];

  List<String> meatDescriptions = [
    "Tender and flavorful, beef is a versatile meat used in various dishes like steaks, roasts, and burgers.",
    "Lean and protein-rich, turkey meat is a healthy alternative to traditional meats, perfect for sandwiches or as a main course.",
    "Juicy and versatile, chicken is a popular meat choice that can be cooked in a variety of ways, from grilling to roasting.",
    "Rich and savory, lamb meat offers a distinct flavor that pairs well with spices and herbs, perfect for stews or roasts.",
    "Sliced and cured, deli meats come in a variety of options like ham, turkey, or roast beef, perfect for sandwiches and charcuterie boards.",
    "Fresh and flavorful, seafood offers a range of options like fish, shrimp, and scallops, perfect for a nutritious and delicious meal.",
    "Versatile and succulent, pork is a meat choice that can be used in various cuisines, from pork chops to pulled pork sandwiches.",
    "Tender and delicate, veal meat has a subtle flavor and can be cooked in a variety of ways, such as cutlets or stews."
  ];
//--------------------------------------------DAIRY-----------------------------------------------------
List<List<dynamic>> dairy = [
  ["Milk", "Fresh Milk", "\$2.0", "Per gallon", "assets/images/dairy/milk.png",  const Color.fromARGB(255, 193, 183, 183)],
  ["Yogurt", "Creamy Yogurt", "\$2.5", "Per cup", "assets/images/dairy/yogurt.png",  const Color.fromARGB(255, 193, 183, 183)],
  ["Cheese", "Assorted Cheese", "\$3.0", "Per pound", "assets/images/dairy/cheese.png", const Color.fromARGB(255, 164, 150, 24)],
  ["Butter", "Smooth Butter", "\$2.0", "Per pound", "assets/images/dairy/butter.png",  const Color.fromARGB(255, 164, 150, 24)],
  ["Ricotta Cheese", "Rich Ricotta Cheese", "\$4.5", "Per pound", "assets/images/dairy/ricottacheese.png",  const Color.fromARGB(255, 193, 183, 183)],
  ["Cottage Cheese", "Creamy Cottage Cheese", "\$3.5", "Per pack", "assets/images/dairy/cottagecheese.png", const Color.fromARGB(255, 193, 183, 183)],
  ["Cream Cheese", "Smooth Cream Cheese", "\$3.5", "Per pack", "assets/images/dairy/creamcheese.png",  const Color.fromARGB(255, 193, 183, 183)],
  ["Sour Cream", "Tangy Sour Cream", "\$2.5", "Per container", "assets/images/dairy/sourcream.png",  const Color.fromARGB(255, 193, 183, 183)],
  ["Ice Cream", "Delicious Ice Cream", "\$5.0", "Per pint", "assets/images/dairy/icecream.png", Colors.blue],
];

List<String> dairyDescriptions = [
    "Fresh and nourishing, our milk is a staple for all your daily needs, from cooking to drinking.",
    "Refreshing and probiotic-rich, enjoy it on its own or as a versatile ingredient in smoothies and recipes.",
    "Explore a world of flavors with our wide selection of artisanal and gourmet cheeses.",
    "Creamy and rich, perfect for spreading on toast or baking.",
    "Delicate and light, a versatile ingredient for both sweet and savory dishes.",
    "A healthy and versatile option, great for salads or as a protein-packed snack.",
    "Luxuriously creamy and velvety, our cream cheese adds a touch of indulgence to any recipe.",
    "Smooth and creamy, our sour cream is the ideal companion for all your favorite dishes.",
    "Indulge in a frozen delight with a variety of flavors and smooth, creamy textures."
  ];

//-------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------
