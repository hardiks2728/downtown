class Places {
  final String image;
  final String title;
  final String subtitle;

  const Places({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<Places> place = [
  Places(image: "images/1.jpeg", title: "Taj Mahal", subtitle: "Agra"),
  Places(image: "images/2.jpeg", title: "Golden Temple", subtitle: "Amritsar"),
  Places(image: "images/3.jpeg", title: "Meenakshi Temple", subtitle: "Madurai"),
  Places(image: "images/4.jpeg", title: "Mysore Palace", subtitle: "Mysore"),
  Places(image: "images/5.jpeg", title: "Gateway of India", subtitle: "Mumbai"),
  Places(image: "images/6.jpeg", title: "Red Fort", subtitle: "New Delhi"),
  Places(image: "images/7.jpeg", title: "Hawa Mahal", subtitle: "Jaipur"),
  Places(image: "images/8.jpeg", title: "Qutub Minar", subtitle: "New Delhi"),
  Places(image: "images/9.jpeg", title: "Sanchi Stupa", subtitle: "Sanchi"),
  Places(image: "images/10.jpeg", title: "Charminar", subtitle: "Hyderabad"),
];

class Events {
  final String image;
  final String title;
  final String subtitle;

  const Events({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<Events> event = [
  Events(image: "images/13.jpeg", title: "Music Fest", subtitle: "Surat"),
  Events(image: "images/14.jpeg", title: "Dance Party", subtitle: "Iscon Mall"),
  Events(image: "images/15.jpeg", title: "Get To Gether", subtitle: "Silver Business Point"),
  Events(image: "images/16.jpeg", title: "Sport Day", subtitle: "LalBhai Stadium"),
  Events(image: "images/17.jpeg", title: "Navratri festival", subtitle: "Swarnbhumi Ground"),
];
