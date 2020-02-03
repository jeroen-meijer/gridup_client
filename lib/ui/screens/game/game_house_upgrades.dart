import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class GameHouseUpgrades extends StatefulWidget {
  const GameHouseUpgrades({
    Key key,
    this.onUpgrade,
    this.onContinue,
  }) : super(key: key);

  final VoidCallback onUpgrade;
  final VoidCallback onContinue;

  @override
  _GameHouseUpgradesState createState() => _GameHouseUpgradesState();
}

class _GameHouseUpgradesState extends State<GameHouseUpgrades> {
  final boughtHouses = ValueNotifier(1);

  void _onUpgrade() {
    setState(() {
      boughtHouses.value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: _Property(
                          name: 'Lijnsingel',
                          street: 'Rotterdam',
                          color: Colors.green,
                          mortgages: 1,
                          houses: 3,
                          onUpgrade: _onUpgrade,
                        ),
                      ),
                      horizontalMargin36,
                      Expanded(
                        child: _Property(
                          name: 'Blaak',
                          street: 'Rotterdam',
                          color: Colors.green,
                          mortgages: 0,
                          houses: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalMargin36,
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: _Property(
                          name: 'Berteljoris-straat',
                          street: 'Haarlem',
                          color: Colors.brown,
                          mortgages: null,
                          houses: 2,
                        ),
                      ),
                      horizontalMargin36,
                      Expanded(
                        child: _Property(
                          name: 'Houtstraat',
                          street: 'Haarlem',
                          color: Colors.brown,
                          mortgages: null,
                          housesListenable: boughtHouses,
                          onUpgrade: _onUpgrade,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalMargin36,
        GridupButton(
          onTap: widget.onContinue,
          child: const Text('Continue'),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<VoidCallback>.has('onUpgrade', widget.onUpgrade))
      ..add(ObjectFlagProperty<VoidCallback>.has('onContinue', widget.onContinue));
  }
}

class _Property extends StatefulWidget {
  const _Property({
    Key key,
    @required this.name,
    @required this.street,
    @required this.color,
    @required this.mortgages,
    this.houses,
    this.housesListenable,
    this.onUpgrade,
  }) : super(key: key);

  static _Property of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<_Property>();
  }

  final String name;
  final String street;
  final Color color;
  final int mortgages;
  final int houses;
  final ValueListenable<int> housesListenable;
  final VoidCallback onUpgrade;

  @override
  __PropertyState createState() => __PropertyState();
}

class __PropertyState extends State<_Property> {
  @override
  void initState() {
    super.initState();
    widget.housesListenable?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Expanded(
          child: FittedBox(
            child: SizedBox(
              width: 65.0 * 1.5,
              height: 95.0 * 1.5,
              child: _PropertyCard(),
            ),
          ),
        ),
        verticalMargin8,
        _PropertyAssetInput(
          type: _PropertyAssetType.house,
          value: widget.housesListenable?.value ?? widget.houses,
          onUpgrade: widget.onUpgrade,
        ),
        verticalMargin8,
        _PropertyAssetInput(
          type: _PropertyAssetType.mortgage,
          value: widget.mortgages,
        ),
      ],
    );
  }
}

class _PropertyCard extends StatelessWidget {
  const _PropertyCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = _Property.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: data.color,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: DefaultTextStyle.merge(
            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
            child: IconTheme.merge(
              data: IconThemeData(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: <Widget>[
                    Text(data.name),
                    Opacity(
                      opacity: 0.6,
                      child: Text(data.street),
                    ),
                    const Spacer(),
                    Icon(Icons.info),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum _PropertyAssetType {
  house,
  mortgage,
}

class _PropertyAssetInput extends StatelessWidget {
  const _PropertyAssetInput({
    Key key,
    @required this.type,
    this.value,
    this.onUpgrade,
  }) : super(key: key);

  final _PropertyAssetType type;
  final int value;
  final VoidCallback onUpgrade;

  @override
  Widget build(BuildContext context) {
    final isMortgage = type == _PropertyAssetType.mortgage;
    final isDisabled = value == null;
    final canDowngrade = !isDisabled && (value > 0);
    final canUpgrade = !isDisabled && ((isMortgage && value < 1) || (!isMortgage && value < 3));

    return Opacity(
      opacity: isDisabled ? 0.5 : 1.0,
      child: Material(
        elevation: 0.0,
        clipBehavior: Clip.antiAlias,
        color: Colors.grey.shade800,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          height: 28,
          child: IconTheme.merge(
            data: IconThemeData(color: Colors.white),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: !canDowngrade ? null : () {},
                  child: SizedBox(
                    height: double.infinity,
                    child: Container(
                      color: !canDowngrade ? Colors.grey : Colors.transparent,
                      child: Icon(
                        Icons.remove,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      color: Colors.white,
                      child: IconTheme.merge(
                        data: IconThemeData(
                          color: isDisabled ? Colors.grey : isMortgage ? Colors.red : Colors.green,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              isMortgage ? Icons.location_city : Icons.home,
                            ),
                            horizontalMargin4,
                            Text(
                              '${value ?? 0}',
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (!canUpgrade ? null : onUpgrade) ?? () {},
                  child: SizedBox(
                    height: double.infinity,
                    child: Container(
                      color: !canUpgrade ? Colors.grey : Colors.transparent,
                      child: Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
