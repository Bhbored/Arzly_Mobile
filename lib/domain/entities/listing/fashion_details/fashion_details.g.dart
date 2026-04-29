// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fashion_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FashionDetails _$FashionDetailsFromJson(
  Map<String, dynamic> json,
) => _FashionDetails(
  listingId: json['listingId'] as String?,
  mensClothingType: $enumDecodeNullable(
    _$MensClothingTypeEnumMap,
    json['mensClothingType'],
  ),
  condition: $enumDecodeNullable(_$FashionConditionEnumMap, json['condition']),
  mensAccessoryType: $enumDecodeNullable(
    _$MensAccessoryTypeEnumMap,
    json['mensAccessoryType'],
  ),
  womensClothingType: $enumDecodeNullable(
    _$WomensClothingTypeEnumMap,
    json['womensClothingType'],
  ),
  womensAccessoryType: $enumDecodeNullable(
    _$WomensAccessoryTypeEnumMap,
    json['womensAccessoryType'],
  ),
  cosmeticType: $enumDecodeNullable(
    _$CosmeticTypeEnumMap,
    json['cosmeticType'],
  ),
  jewelryType: $enumDecodeNullable(_$JewelryTypeEnumMap, json['jewelryType']),
  jewelryMaterial: $enumDecodeNullable(
    _$JewelryMaterialEnumMap,
    json['jewelryMaterial'],
  ),
  watchGender: $enumDecodeNullable(_$WatchGenderEnumMap, json['watchGender']),
);

Map<String, dynamic> _$FashionDetailsToJson(
  _FashionDetails instance,
) => <String, dynamic>{
  'listingId': instance.listingId,
  'mensClothingType': _$MensClothingTypeEnumMap[instance.mensClothingType],
  'condition': _$FashionConditionEnumMap[instance.condition],
  'mensAccessoryType': _$MensAccessoryTypeEnumMap[instance.mensAccessoryType],
  'womensClothingType':
      _$WomensClothingTypeEnumMap[instance.womensClothingType],
  'womensAccessoryType':
      _$WomensAccessoryTypeEnumMap[instance.womensAccessoryType],
  'cosmeticType': _$CosmeticTypeEnumMap[instance.cosmeticType],
  'jewelryType': _$JewelryTypeEnumMap[instance.jewelryType],
  'jewelryMaterial': _$JewelryMaterialEnumMap[instance.jewelryMaterial],
  'watchGender': _$WatchGenderEnumMap[instance.watchGender],
};

const _$MensClothingTypeEnumMap = {
  MensClothingType.tShirts: 'TShirts',
  MensClothingType.shirts: 'Shirts',
  MensClothingType.poloShirts: 'PoloShirts',
  MensClothingType.jackets: 'Jackets',
  MensClothingType.coats: 'Coats',
  MensClothingType.hoodies: 'Hoodies',
  MensClothingType.sweaters: 'Sweaters',
  MensClothingType.jeans: 'Jeans',
  MensClothingType.trousers: 'Trousers',
  MensClothingType.shorts: 'Shorts',
  MensClothingType.suits: 'Suits',
  MensClothingType.blazers: 'Blazers',
  MensClothingType.underwear: 'Underwear',
  MensClothingType.socks: 'Socks',
  MensClothingType.swimwear: 'Swimwear',
  MensClothingType.sportswear: 'Sportswear',
  MensClothingType.traditionalWear: 'TraditionalWear',
  MensClothingType.sleepwear: 'Sleepwear',
  MensClothingType.other: 'Other',
};

const _$FashionConditionEnumMap = {
  FashionCondition.new_: 'New',
  FashionCondition.used: 'Used',
};

const _$MensAccessoryTypeEnumMap = {
  MensAccessoryType.belts: 'Belts',
  MensAccessoryType.wallets: 'Wallets',
  MensAccessoryType.hats: 'Hats',
  MensAccessoryType.caps: 'Caps',
  MensAccessoryType.sunglasses: 'Sunglasses',
  MensAccessoryType.scarves: 'Scarves',
  MensAccessoryType.gloves: 'Gloves',
  MensAccessoryType.ties: 'Ties',
  MensAccessoryType.bowTies: 'BowTies',
  MensAccessoryType.cufflinks: 'Cufflinks',
  MensAccessoryType.bags: 'Bags',
  MensAccessoryType.backpacks: 'Backpacks',
  MensAccessoryType.keychains: 'Keychains',
  MensAccessoryType.umbrellas: 'Umbrellas',
  MensAccessoryType.other: 'Other',
};

const _$WomensClothingTypeEnumMap = {
  WomensClothingType.dresses: 'Dresses',
  WomensClothingType.tops: 'Tops',
  WomensClothingType.blouses: 'Blouses',
  WomensClothingType.tShirts: 'TShirts',
  WomensClothingType.skirts: 'Skirts',
  WomensClothingType.jeans: 'Jeans',
  WomensClothingType.trousers: 'Trousers',
  WomensClothingType.shorts: 'Shorts',
  WomensClothingType.jackets: 'Jackets',
  WomensClothingType.coats: 'Coats',
  WomensClothingType.hoodies: 'Hoodies',
  WomensClothingType.sweaters: 'Sweaters',
  WomensClothingType.cardigans: 'Cardigans',
  WomensClothingType.jumpsuits: 'Jumpsuits',
  WomensClothingType.lingerie: 'Lingerie',
  WomensClothingType.swimwear: 'Swimwear',
  WomensClothingType.sportswear: 'Sportswear',
  WomensClothingType.traditionalWear: 'TraditionalWear',
  WomensClothingType.sleepwear: 'Sleepwear',
  WomensClothingType.maternityWear: 'MaternityWear',
  WomensClothingType.other: 'Other',
};

const _$WomensAccessoryTypeEnumMap = {
  WomensAccessoryType.bags: 'Bags',
  WomensAccessoryType.handbags: 'Handbags',
  WomensAccessoryType.clutches: 'Clutches',
  WomensAccessoryType.backpacks: 'Backpacks',
  WomensAccessoryType.wallets: 'Wallets',
  WomensAccessoryType.hats: 'Hats',
  WomensAccessoryType.scarves: 'Scarves',
  WomensAccessoryType.sunglasses: 'Sunglasses',
  WomensAccessoryType.belts: 'Belts',
  WomensAccessoryType.gloves: 'Gloves',
  WomensAccessoryType.hairAccessories: 'HairAccessories',
  WomensAccessoryType.keychains: 'Keychains',
  WomensAccessoryType.umbrellas: 'Umbrellas',
  WomensAccessoryType.other: 'Other',
};

const _$CosmeticTypeEnumMap = {
  CosmeticType.hairCare: 'HairCare',
  CosmeticType.makeUp: 'MakeUp',
  CosmeticType.perfume: 'Perfume',
  CosmeticType.skinCare: 'SkinCare',
  CosmeticType.other: 'Other',
};

const _$JewelryTypeEnumMap = {
  JewelryType.bracelets: 'Bracelets',
  JewelryType.earrings: 'Earrings',
  JewelryType.necklaces: 'Necklaces',
  JewelryType.rings: 'Rings',
  JewelryType.anklets: 'Anklets',
  JewelryType.brooches: 'Brooches',
  JewelryType.pendants: 'Pendants',
  JewelryType.chains: 'Chains',
  JewelryType.sets: 'Sets',
  JewelryType.other: 'Other',
};

const _$JewelryMaterialEnumMap = {
  JewelryMaterial.gold: 'Gold',
  JewelryMaterial.silver: 'Silver',
  JewelryMaterial.platinum: 'Platinum',
  JewelryMaterial.diamond: 'Diamond',
  JewelryMaterial.pearl: 'Pearl',
  JewelryMaterial.stainlessSteel: 'StainlessSteel',
  JewelryMaterial.leather: 'Leather',
  JewelryMaterial.wood: 'Wood',
  JewelryMaterial.plastic: 'Plastic',
  JewelryMaterial.other: 'Other',
};

const _$WatchGenderEnumMap = {
  WatchGender.men: 'Men',
  WatchGender.women: 'Women',
  WatchGender.unisex: 'Unisex',
  WatchGender.kids: 'Kids',
};
