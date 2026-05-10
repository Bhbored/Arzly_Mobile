abstract final class BackendListingCatalog {
  static const String vehicles = 'Vehicles';
  static const String realEstate = 'Real Estate';
  static const String phonesAndGadgets = 'Phones & Gadgets';
  static const String electronicsAndAppliances = 'Electronics & Appliances';
  static const String furnitureAndDecor = 'Furniture & Decor';
  static const String pets = 'Pets';
  static const String kidsAndBabies = 'Kids & Babies';
  static const String sportsAndEquipment = 'Sports & Equipment';
  static const String hobbies = 'Hobbies';
  static const String fashionAndStyle = 'Fashion & Style';
  static const String services = 'Services';

  static const Map<String, List<String>> subcategoriesByCategory = {
    vehicles: [
      'Cars For Sale',
      'Vehicle Accessories',
      'Vehicle Spare Parts',
      'Number Plates',
      "Motorcycles & ATV's",
      'Trucks & Buses',
      'Boats',
    ],
    realEstate: [
      'Houses For Sale',
      'Houses For Rent',
      'Commercials For Sale',
      'Commercials For Rent',
      'Land For Sale',
      'Land For Rent',
      'Chalets & Cabins For Sale',
      'Chalets & Cabins For Rent',
      'Rooms For Rent',
    ],
    phonesAndGadgets: [
      'Mobile Phones',
      'Mobile Accessories',
      'Mobile Numbers',
      'Smart Watches',
    ],
    electronicsAndAppliances: [
      'TV & Video',
      'Home Audio & Speakers',
      'Kitchen Equipment & Appliances',
      'AC Cooling & Heating',
      'Cleaning Appliances',
      'Washing Machines & Dryers',
      'Laptops Tablets Computers',
      'Computer Parts & IT Accessories',
      'Cameras',
      'Gaming Consoles & Accessories',
      'Video Games',
      'Other Home Appliances',
    ],
    furnitureAndDecor: [
      'Living Room',
      'Bedrooms',
      'Dining Rooms',
      'Kitchen & Kitchenware',
      'Bathrooms',
      'Home Decoration & Accessories',
      'Garden & Outdoors',
      'Other Furniture & Decor',
    ],
    pets: [
      'Pet Food & Treats',
      'Toys',
      'Pet Grooming',
      'Pet Accessories',
      'Dogs',
      'Cats',
      'Birds',
      'Other Animals',
      'Pet Services',
    ],
    kidsAndBabies: [
      'Toys For Kids',
      'Strollers & Seats',
      'Kids & Babies Clothing',
      'Cribs & Bedroom Furniture',
      'Bathing Accessories',
      'Feeding & Nursing',
      'Safety & Monitors',
      'Other for Kids & Babies',
    ],
    sportsAndEquipment: [
      'Bicycles & Accessories',
      'Outdoors & Camping',
      'Gym Fitness & Combat Sports',
      'Ball Sports',
      'Supplements & Nutrition',
      'Billiard & Similar Games',
      'Ski & Winter Sports',
      'Water Sports & Diving',
      'Tennis & Racket Sports',
      'Other Sports',
    ],
    hobbies: [
      'Antiques & Collectibles',
      'Musical Instruments',
      'Books',
      'Movies',
      'Games & Hobbies',
      'Other Items',
    ],
    fashionAndStyle: [
      'Clothing For Men',
      'Accessories For Men',
      'Clothing For Women',
      'Accessories For Women',
      'Makeup & Cosmetics',
      'Jewelry & Faux-Bijou',
      'Watches',
      'Other Fashion & Style',
    ],
    services: [
      'Home Services',
      'Personal Services',
      'Professional Services',
      'Events',
      'Transport',
      'Other Services',
    ],
  };
}
