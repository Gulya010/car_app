import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_app/core/enum/car_filters.dart';
import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/resource/app_svg.dart';
import 'package:car_app/features/home/provider/cars_provider.dart';
import 'package:car_app/features/home/widgets/add_widget.dart';
import 'package:car_app/features/home/widgets/car_chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _activeCategory = ValueNotifier<CarFilters>(CarFilters.allCars);

  @override
  void dispose() {
    _activeCategory.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final providerW = context.watch<CarsProvider>();

    return Scaffold(
        drawer: Container(
          color: Colors.red,
          child: const Column(
            children: [Text('DRAWER')],
          ),
        ),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: SvgPicture.asset(AppSvg.drawerIcon));
          }),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_shopping_cart,
                  size: 30,
                )),
          ],
        ),
        body: Padding(
          padding: 18.symmetricHorizontal,
          child: Column(
            children: [
              const AddWidget(),
              50.verticalSpace,
              SizedBox(
                height: 60,
                child: ListView.separated(
                  itemCount: CarFilters.values.length,
                  separatorBuilder: (context, index) => 20.horizontalSpace,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ValueListenableBuilder(
                        valueListenable: _activeCategory,
                        builder: (context, value, child) {
                          return GestureDetector(
                            onTap: () => _onItemTap(
                              CarFilters.values[index],
                            ),
                            child: CarChipWidget(
                              label: CarFilters.values[index].category,
                              isActive: CarFilters.values[index] == value,
                            ),
                          );
                        });
                  },
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 30.0,
                        crossAxisSpacing: 30.0,
                        childAspectRatio: 1,
                        crossAxisCount: 2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: providerW.currentList[index].type.getColor
                                  .withOpacity(0.4),
                              borderRadius: 10.borderRadius,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: CachedNetworkImage(
                                    placeholder: (context, url) =>
                                        const SizedBox.shrink(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    imageUrl:
                                        providerW.currentList[index].image,
                                  ),
                                ),
                                Text(
                                    '${providerW.currentList[index].brand} ${providerW.currentList[index].model}'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                        '${providerW.currentList[index].price}\$'),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.add_shopping_cart)),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        childCount: providerW.currentList.length,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void _onItemTap(type) {
    final providerR = context.read<CarsProvider>();
    _activeCategory.value = type;
    switch (type) {
      case CarFilters.allCars:
        providerR.showAllCars();
      case CarFilters.popularCars:
        providerR.showPopularCars();
      case CarFilters.familyCars:
        providerR.showFamilyCars();
      case CarFilters.cheapCars:
        providerR.showCheapCars();
      case CarFilters.luxuryCars:
        providerR.showLuxuryCars();
      case CarFilters.sportCars:
        providerR.showSportCars();
      default:
    }
  }
}
