class ProductList {
  final String image;
  final String title;
  final String subtitle;
  final String? downloadLink;

  ProductList(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.downloadLink});
}

List<ProductList> productList = [
  ProductList(
      image: "assets/tally-prime-product.jpg",
      title: "Tally Prime",
      subtitle:
          "Labore sunt nisi cillum sint reprehenderit. Quis consequat consequat tempor nisi cillum proident. Eiusmod veniam quis culpa occaecat quis excepteur laborum elit proident veniam voluptate. Aliquip dolore et dolor consequat laborum."),
  ProductList(
      image: "assets/tally-prime-product.jpg",
      title: "Tally Prime1",
      subtitle:
          "Sint ullamco excepteur anim ipsum officia cillum reprehenderit ex. Culpa quis elit do ut ullamco. Sit in occaecat id velit amet sint deserunt est sint deserunt aliqua dolor. Reprehenderit deserunt aliqua est irure ea eu commodo veniam deserunt. Ullamco voluptate dolor cillum irure qui nulla ea cupidatat et voluptate adipisicing id commodo."),
  ProductList(
      image: "assets/tally-prime-product.jpg",
      title: "Tally Prime",
      subtitle:
          "Sint ullamco excepteur anim ipsum officia cillum reprehenderit ex. Culpa quis elit do ut ullamco. Sit in occaecat id velit amet sint deserunt est sint deserunt aliqua dolor. Reprehenderit deserunt aliqua est irure ea eu commodo veniam deserunt. Ullamco voluptate dolor cillum irure qui nulla ea cupidatat et voluptate adipisicing id commodo.")
];
