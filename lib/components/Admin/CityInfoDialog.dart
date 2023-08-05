import 'package:flutter/material.dart';
import '/../main.dart';
import '/../models/CityListModel.dart';
import '/../utils/Common.dart';
import '/../utils/Constants.dart';
import '/../utils/Extensions/constants.dart';
import '/../utils/Extensions/text_styles.dart';

class CityInfoDialog extends StatefulWidget {
  static String tag = '/CityInfoDialog';

  final RegionData? regionData;

  CityInfoDialog({this.regionData});

  @override
  CityInfoDialogState createState() => CityInfoDialogState();
}

class CityInfoDialogState extends State<CityInfoDialog> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Container(
        width: 500,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.regionData!.name}',
                    style: boldTextStyle(size: 20)),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            informationWidget(language.city_id, '${widget.regionData!.id}'),
            informationWidget(
                language.state_name, '${widget.regionData!.stateName}'),
            Divider(height: 20),
            informationWidget(
                '${language.minimum_distance} (${widget.regionData!.state!.distanceType ?? ""})',
                '${widget.regionData!.minDistance}'),
            informationWidget(
                '${language.minimum_weight} (${widget.regionData!.state!.weightType ?? ""})',
                '${widget.regionData!.minWeight}'),
            Divider(height: 20),
            informationWidget(
                language.fixed_charge, '${widget.regionData!.fixedCharges}'),
            informationWidget(
                language.cancel_charge, '${widget.regionData!.cancelCharges}'),
            informationWidget(language.per_distance_charge,
                '${widget.regionData!.perDistanceCharges}'),
            informationWidget(language.per_weight_charge,
                '${widget.regionData!.perWeightCharges}'),
            informationWidget(language.adminCommission,
                '${widget.regionData!.adminCommission} ${widget.regionData!.commissionType == CHARGE_TYPE_PERCENTAGE ? '%' : ''}'),
            Divider(height: 20),
            informationWidget(
                language.created_date, printDate(widget.regionData!.createdAt!)),
            informationWidget(
                language.updated_date, printDate(widget.regionData!.updatedAt!)),
          ],
        ),
      ),
    );
  }
}
