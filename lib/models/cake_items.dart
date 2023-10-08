class CakeItems {
  String name;
  String category;
  String description;
  String price;
  String image;

  CakeItems({
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.image,
  });
}

var cakeItemsList = [
  CakeItems(
    name: 'Big Sausage Pizza',
    category: 'Bread',
    description:
        'Soft bread with delicious special sauce and topping with chicken sausage, cheddar cheese, and parsley leaves on top.',
    price: 'IDR 14.000',
    image: 'images/big-sausage-pizza.jpg',
  ),
  CakeItems(
    name: 'Choco Meisis',
    category: 'Bread',
    description:
        'Sweet bread filled with chocolate ganache cream and chocolate meises on top.',
    price: 'IDR 12.000',
    image: 'images/choco-meises.jpg',
  ),
  CakeItems(
    name: 'Korean Spicy Floss',
    category: 'Bread',
    description:
        'Soft bread filled with chicken katsu, and lettuce, topped with a delicious Korean spicy sauce, and sprinkled with chili powder and sesame seeds on top.',
    price: 'IDR 12.500',
    image: 'images/korean-spicy-floss.jpg',
  ),
  CakeItems(
    name: 'Apple Pie',
    category: 'Danish',
    description: 'Puff with cinnamon apple filling and sprinkled with sugar.',
    price: 'IDR 11.000',
    image: 'images/apple-pie.jpg',
  ),
  CakeItems(
    name: 'Double Choco',
    category: 'Danish',
    description: 'Croissant filled and topped with chocolate.',
    price: 'IDR 12.000',
    image: 'images/double-choco.jpg',
  ),
  CakeItems(
    name: 'Choco Cheese',
    category: 'Toast',
    description: 'Soft bread filled with chocolate and cheese.',
    price: 'IDR 12.000',
    image: 'images/choco-cheese.jpg',
  ),
  CakeItems(
    name: 'Raisin Choco',
    category: 'Toast',
    description:
        'Soft bread filled with raisins and choco chips and choco chip cookie topping.',
    price: 'IDR 12.000',
    image: 'images/choco-raisin.jpg',
  ),
  CakeItems(
    name: 'Plain Mini Bun',
    category: 'Toast',
    description: 'Soft and sweet buns.',
    price: 'IDR 10.000',
    image: 'images/plain-mini-bun.jpg',
  ),
  CakeItems(
    name: 'Black Forest Slice',
    category: 'Slice Cake',
    description:
        'Chocolate sponge cake with rich cherry and chocolate cream filling, with chocolate shavings and dark cherries.',
    price: 'IDR 8.000',
    image: 'images/blackforest-slice.jpg',
  ),
  CakeItems(
    name: 'Chantilly Slice',
    category: 'Slice Cake',
    description:
        'Vanilla sponge cake layered with fruits and chantilly cream, topped with white chocolate and fruits.',
    price: 'IDR 8.000',
    image: 'images/chantilly-slice.jpg',
  ),
];
