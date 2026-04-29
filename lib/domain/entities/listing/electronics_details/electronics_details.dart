import 'package:arzly/core/enums/listing_owned/home_electronics/audio_brand.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/camera_brand.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/camera_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/cleaning_appliance_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/compatible_console.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/computer_accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/computer_brand.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/computer_color.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/computer_screen_size.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/computer_storage.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/computer_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/cooling_heating_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/display_technology.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/electronics_condition.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/game_condition.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/game_genre.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/gaming_brand.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/gaming_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/kitchen_appliance_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/processor.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/ram_size.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/screen_size.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/storage_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/tv_brand.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/tv_type.dart';
import 'package:arzly/core/enums/listing_owned/home_electronics/washing_machine_brand.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'electronics_details.freezed.dart';
part 'electronics_details.g.dart';

@freezed
sealed class ElectronicsDetails with _$ElectronicsDetails {
  const factory ElectronicsDetails({
    String? listingId,
    TVBrand? tvBrand,
    TVType? tvType,
    ElectronicsCondition? condition,
    ScreenSize? screenSize,
    DisplayTechnology? displayTechnology,
    AudioBrand? audioBrand,
    KitchenApplianceType? kitchenApplianceType,
    CoolingHeatingType? coolingHeatingType,
    CleaningApplianceType? cleaningApplianceType,
    WashingMachineBrand? washingMachineBrand,
    ComputerBrand? computerBrand,
    ComputerType? computerType,
    Processor? processor,
    RamSize? ramSize,
    ComputerScreenSize? computerScreenSize,
    ComputerStorage? computerStorage,
    StorageType? storageType,
    ComputerColor? computerColor,
    ComputerAccessoryType? computerAccessoryType,
    CameraBrand? cameraBrand,
    CameraType? cameraType,
    GamingBrand? gamingBrand,
    GamingType? gamingType,
    CompatibleConsole? compatibleConsole,
    GameCondition? gameCondition,
    GameGenre? gameGenre,
  }) = _ElectronicsDetails;

  factory ElectronicsDetails.fromJson(Map<String, dynamic> json) =>
      _$ElectronicsDetailsFromJson(json);
}
