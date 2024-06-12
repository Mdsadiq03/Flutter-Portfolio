class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "Expense Tracker - Dark and Light Theme",
    description:
        "Custom color schemes and themes for a visually pleasing experience. Interactive charts visually represent spending habits and categories. Responsive layout ensures seamless usage across devices.",
  ),
  Project(
    title: "Meals App - Customizable Filters",
    description:
        "Offers an intuitive interface to explore diverse meal categories and ensuring an engaging user experience. Customizable filters and seamless navigation, users can suit their preferences effortlessly. Utilizing advanced UI components, the app delivers smooth transitions and enhancing user interaction.",
  ),
  Project(
    title: "Shopping list - Firebase Realtime Database",
    description:
        "Grocery Management provides a user-friendly interface for adding, removing, and viewing grocery items. Real-Time Sync of Integration with Firebase Realtime Database for instant updates and reliable data storage. Customizable Categories allows users to classify and manage their grocery items efficiently.",
  ),
  Project(
    title: "Food Delivery App - Flutter UI",
    description:
        "Leveraged Flutter's powerful UI toolkit to create a responsive and visually appealing interface.Integrated RxDart for handling reactive programming, making the app more efficient. Each food item is displayed with an image, name, and price. Tap to add to cart. Efficiently managing state across various components using the Bloc pattern.",
  ),
  Project(
    title: "Snap a Favorite Place - Google Map API",
    description:
        "Leveraging the flexibility of Flutter and the state management prowess of Riverpod to ensure smooth performance and easy maintenance. Utilizing SQLite to securely store and manage user-generated content, ensuring seamless access to cherished memories. Combined the power of Flutter, Riverpod, Google Fonts, and Google Maps to create a seamless user experience",
  ),
  Project(
    title: "Ninja Trip - Flutter Basic Animation",
    description:
        "Using the TweenAnimationBuilder with the Curves.easeIn property, the app title smoothly transitions into view, adding a polished touch to the user experience. Leveraging the Hero class, I’ve created seamless transitions between different screens, ensuring a fluid navigation experience.",
  ),
];
