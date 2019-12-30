class Jobs {
  final int id;
  final String title;
  final String description;
  final String company;
  final String city;
  final String country;
  final double salary;
  bool isHour;
  final String currency;
  final DateTime datePosted;

  Jobs({
    this.id,
    this.title,
    this.description,
    this.company,
    this.city,
    this.country,
    this.salary,
    this.isHour,
    this.datePosted,
    this.currency,
  });
}

List<Jobs> jobs = [
  Jobs(
    id: 1,
    title: "Cleaner",
    description:
        "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido..",
    company: "Ireland Goods.Inc",
    city: "Sidney",
    country: "Australia",
    salary: 19,
    isHour: true,
    datePosted: DateTime.now(),
    currency: "\$",
  ),
  Jobs(
    id: 2,
    title: "Kitchen Porter",
    description:
        "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido..",
    company: "Ireland Goods.Inc",
    city: "Dublin",
    country: "Ireland",
    salary: 14,
    isHour: true,
    datePosted: DateTime.now(),
    currency: "€",
  ),
  Jobs(
    id: 3,
    title: "Dish Washer",
    description:
        "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido..",
    company: "Ireland Goods.Inc",
    city: "Madrid",
    country: "Spain",
    salary: 15,
    isHour: true,
    datePosted: DateTime.now(),
    currency: "€",
  ),
  Jobs(
    id: 4,
    title: "Cleaner",
    description:
        "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido..",
    company: "Ireland Goods.Inc",
    city: "Sidney",
    country: "Australia",
    salary: 19,
    isHour: true,
    datePosted: DateTime.now(),
    currency: "\$",
  ),
];
