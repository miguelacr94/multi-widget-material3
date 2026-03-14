import 'package:flutter/material.dart';

class UiControls extends StatefulWidget {
  const UiControls({super.key});

  static const String routeName = 'ui-controls';

  @override
  State<UiControls> createState() => _UiControlsState();
}

class _UiControlsState extends State<UiControls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UiControls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bike, bus }

class _UiControlsViewState extends State<_UiControlsView> {
  bool _switchValue = true;
  bool _wantsBreakfast = false;
  bool _wantsLunch = false;
  bool _wantsDinner = false;

  Transportation? _selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Switch 1'),
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Transportation'),
          subtitle: Text('Select your ${_selectedTransportation?.name}'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              value: Transportation.car,
              groupValue: _selectedTransportation,
              onChanged: (value) {
                setState(() {
                  _selectedTransportation = value;
                });
              },
            ),

            RadioListTile(
              title: const Text('Bike'),
              value: Transportation.bike,
              groupValue: _selectedTransportation,
              onChanged: (value) {
                setState(() {
                  _selectedTransportation = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Bus'),
              value: Transportation.bus,
              groupValue: _selectedTransportation,
              onChanged: (value) {
                setState(() {
                  _selectedTransportation = value;
                });
              },
            ),
          ],
        ),
       
        ExpansionTile(
          title: const Text('Meals'),
          children: [
            CheckboxListTile(
              title: const Text('Wants Breakfast'),
              value: _wantsBreakfast,
              onChanged: (value) {
                setState(() {
                  _wantsBreakfast = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Wants Lunch'),
              value: _wantsLunch,
              onChanged: (value) {
                setState(() {
                  _wantsLunch = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Wants Dinner'),
              value: _wantsDinner,
              onChanged: (value) {
                setState(() {
                  _wantsDinner = value ?? false;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
