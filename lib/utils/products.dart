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
      image: "assets/tally-prime-silver-single-user.png",
      title: "Tally Prime GST Ready - Single User",
      subtitle:
          "TallyPrime Silver Single User. The all-new TallyPrime is India’s most popular business software."),
  ProductList(
      image: "assets/tally-prime-product.jpg",
      title: "Tally Prime GST Ready - Multi User",
      subtitle:
          "TallyPrime Gold Multi User. The all-new TallyPrime is India’s most popular business software."),
  ProductList(
      image: "assets/tally-prime-server.jpg",
      title: "Tally Prime Server",
      subtitle:
          "Tally Prime Server helps enhance the speed and control of Tally multi-user by converting the current ‘peer-to-peer’ kind of data access."),
  ProductList(
      image: "assets/tally-prime-product.jpg",
      title: "Tally Prime Server",
      subtitle:
          "Tally Prime Server helps enhance the speed and control of Tally multi-user by converting the current ‘peer-to-peer’ kind of data access."),
  ProductList(
      image: "assets/tally-prime-product.jpg",
      title: "Tally Prime Server",
      subtitle:
          "Tally Prime Server helps enhance the speed and control of Tally multi-user by converting the current ‘peer-to-peer’ kind of data access.")
];

List<ProductList> serviceList = [
  ProductList(
      image: "assets/Tally-AWS-Cloud.jpg",
      title: "Tally Prime Single User Renewal (Silver Renewal)",
      subtitle:
          "Renew and Stay Updated! Harness the power of TSS (Tally Software Services) – so that you are always on our latest release."),
  ProductList(
      image: "assets/Biz-Analyst-Tally-Mobile-App.jpg",
      title: "Biz Analyst - Tally Mobile App",
      subtitle:
          "Biz Analyst Tally mobile app brings real time information & allows you to access your Tally ERP9 data anytime / anywhere."),
  ProductList(
      image: "assets/Tally-Cloud.jpg",
      title: "Tally Cloud",
      subtitle:
          "Access your Tally.ERP 9 from anywhere & any device. No need to install Tally on any of your local systems.")
];
