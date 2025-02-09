import 'package:car_app/core/enum/car_filters.dart';
import 'package:car_app/data/car_model.dart';

final list = <CarModel>[
  CarModel(
    type: CarFilters.popularCars,
    brand: 'Toyota',
    model: 'Camry',
    price: 300,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs5ejClhKWT_ZYdrU1r6JgzJDBr8PVCv6ruQ&s',
  ),
  CarModel(
    type: CarFilters.familyCars,
    brand: 'Subaru',
    model: 'Forester',
    price: 150,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdMbK-xCWRjUtEh_alS1MxJFMgfophhXjaow&s',
  ),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'Mercedez-Benz',
      model: 'S-class w221',
      price: 600,
      image:
          'https://neva-cars.ru/wp-content/uploads/2016/02/mercedes-s2-m-600-1400x840.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Honda',
      model: 'Fit',
      price: 50,
      image:
          'https://di-uploads-pod13.dealerinspire.com/hillsidehonda/uploads/2018/01/2018-Honda-Fit-Header-1.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Lexus',
      model: 'ES300',
      price: 200,
      image:
          'https://w7.pngwing.com/pngs/699/150/png-transparent-2018-lexus-es-350-sedan-car-2018-lexus-es-300h-test-drive-car-compact-car-sedan-car.png'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'BMW',
      model: 'X7',
      price: 1000,
      image:
          'https://di-uploads-pod29.dealerinspire.com/sewellfamilyofcompanies/uploads/2020/10/chrome-image-409950-4.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Huyndai',
      model: 'Sonata',
      price: 100,
      image:
          'https://w7.pngwing.com/pngs/834/484/png-transparent-2012-hyundai-sonata-2013-hyundai-sonata-2014-hyundai-sonata-car-car-compact-car-sedan-car.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Kia',
      model: 'K5',
      price: 250,
      image:
          'https://storage.yandexcloud.net/cdn.carso.ru/uploads/new_car/2768/colors/2.png'),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Li auto',
      model: 'L7',
      price: 500,
      image:
          'https://static.tildacdn.com/tild3835-3565-4232-b339-663135313261/li-l7-front-2.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Toyota',
      model: 'Prius',
      price: 300,
      image:
          'https://www.pngkey.com/png/full/167-1679615_25-toyota-prius-3rd-gen.png'),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Subaru',
      model: 'Outback',
      price: 200,
      image: 'https://sto-lublino.ru/img/22424288.png'),
  CarModel(
      type: CarFilters.sportCars,
      brand: 'Mercedez-Benz',
      model: 'E-class w212',
      price: 450,
      image:
          'https://w7.pngwing.com/pngs/91/237/png-transparent-2018-honda-cr-v-lx-suv-2016-honda-hr-v-2015-honda-cr-v-lx-2016-honda-cr-v-ex-honda-compact-car-sedan-car.png'),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Honda',
      model: 'Odissey',
      price: 80,
      image:
          'https://w7.pngwing.com/pngs/195/151/png-transparent-2016-honda-odyssey-2015-honda-odyssey-2017-honda-odyssey-car-honda-compact-car-mode-of-transport-windshield-thumbnail.png'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'Lexus',
      model: 'LX 570',
      price: 700,
      image:
          'https://kong-proxy-intranet.toyota-europe.com/l1-images/resize/ccis/680x680/zip/kz/product-token/44370752-a429-4e28-8785-b0e74016479e/vehicle/a0a8d740-d63f-4834-ac53-5aea4702b6c8/padding/50,50,50,50/image-quality/70/day-exterior-04_202.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'BMW',
      model: 'E60 530',
      price: 300,
      image:
          'https://w7.pngwing.com/pngs/362/581/png-transparent-2017-bmw-5-series-car-bmw-5-series-2-530i-sport-line-bmw-530-class-of-2018-compact-car-sedan-car.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Huyndai',
      model: 'Avante',
      price: 150,
      image:
          'https://w7.pngwing.com/pngs/190/228/png-transparent-2010-hyundai-elantra-2012-hyundai-elantra-2015-hyundai-elantra-2013-hyundai-elantra-hyundai-compact-car-sedan-car.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Kia',
      model: 'Grandevur',
      price: 250,
      image:
          'https://w7.pngwing.com/pngs/341/644/png-transparent-2013-kia-sorento-2012-kia-sorento-2014-kia-sorento-2011-kia-sorento-2015-kia-sorento-kia-compact-car-car-vehicle.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'BYD',
      model: '5',
      price: 250,
      image:
          'https://goweb-dacs-prod-s3.s3-ap-southeast-1.amazonaws.com/png/66a1bd39b8a9e22c10e3f2bd/byd-seal-colors-harborgrey-732x513-7bfba5.png'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'ГАЗ',
      model: 'Волга',
      price: 1000,
      image:
          'https://www.kspecmash.ru/upload/medialibrary/65d/s4me0zjpvf9966x3um2c5x3ebbr2mbpu.png'),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Toyota',
      model: 'Prado',
      price: 600,
      image:
          'https://w7.pngwing.com/pngs/767/862/png-transparent-toyota-land-cruiser-prado-car-lexus-gx-sport-utility-vehicle-toyota-glass-car-off-road-vehicle.png'),
  CarModel(
      type: CarFilters.sportCars,
      brand: 'Subaru',
      model: 'Legacy',
      price: 300,
      image:
          'https://di-sitebuilder-assets.s3.amazonaws.com/Subaru/modelLandingPages/Legacy/2022/trim-legacy-premium-min.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Mercedez-Benz',
      model: 'S-class w222',
      price: 1000,
      image:
          'https://neva-cars.ru/wp-content/uploads/2020/11/maybach-rest-neva-cars-min.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Honda',
      model: 'Civic',
      price: 50,
      image: 'https://banner2.cleanpng.com/20180206/cow/av27ivqxm.webp'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Lexus',
      model: 'GS350',
      price: 600,
      image:
          'https://w7.pngwing.com/pngs/659/651/png-transparent-2017-lexus-is-lexus-es-car-lexus-gs-car.png'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'BMW',
      model: 'X8',
      price: 800,
      image:
          'https://cdn.cars24.com/prod/new-car-cms/BMW/X5/2024/04/01/35180239-42ca-4269-85f5-ff96764e2dd7-BMW_X5_Black-Sapphire-Metallic.png'),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Huyndai',
      model: 'Sonata Fe',
      price: 250,
      image:
          'https://di-uploads-pod28.dealerinspire.com/tonkingladstonehyundai/uploads/2022/11/mlp-img-top-2023-santafe-temp.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Kia',
      model: 'Morning',
      price: 70,
      image:
          'https://www.pngkey.com/png/full/277-2773229_kia-morning-kia-morning-picanto-png.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Li auto',
      model: 'L9',
      price: 700,
      image:
          'https://thumb.tildacdn.com/tild3031-3161-4762-b136-623666653932/-/resize/286x/-/format/webp/li-l9-front-4.png'),
  CarModel(
      type: CarFilters.sportCars,
      brand: 'BMW',
      model: 'F10 535',
      price: 500,
      image:
          'https://w7.pngwing.com/pngs/290/835/png-transparent-2010-bmw-5-series-car-2015-bmw-5-series-2015-bmw-3-series-bmw-compact-car-sedan-car.png')
];
