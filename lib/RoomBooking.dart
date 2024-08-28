import 'package:flutter/material.dart';

class RoomBooking extends StatefulWidget {
  const RoomBooking({Key? key}) : super(key: key);

  @override
  _RoomBookingState createState() => _RoomBookingState();
}

class _RoomBookingState extends State<RoomBooking> {
  final _formKey = GlobalKey<FormState>();

  // Define variables to store form data
  String? _selectedRoomType;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  String? _name;
  String? _email;

  // Room types and their prices
  final Map<String, double> _roomPrices = {
    'Conference Room': 100.0,
    'Meeting Room': 75.0,
    'Board Room': 150.0,
    'Single Personal Room': 50.0,
    'Double Personal Room': 80.0,
    'Family Personal Room': 120.0,
  };

  // Room types list
  final List<String> _roomTypes = [
    'Conference Room',
    'Meeting Room',
    'Board Room',
    'Single Personal Room',
    'Double Personal Room',
    'Family Personal Room',
  ];

  double? _currentPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF004D40),
        title: const Text('Room Booking', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: const Color(0xFFECEFF1), // Background color
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Name input
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.teal.shade900),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00796B)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFD600)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) => _name = value,
              ),

              // Email input
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.teal.shade900),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00796B)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFD600)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) => _email = value,
              ),

              // Room type dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Room Type',
                  labelStyle: TextStyle(color: Colors.teal.shade900),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00796B)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFD600)),
                  ),
                ),
                value: _selectedRoomType,
                items: _roomTypes.map((String roomType) {
                  return DropdownMenuItem<String>(
                    value: roomType,
                    child: Text(roomType, style: TextStyle(color: Colors.teal.shade900)),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedRoomType = value;
                    _currentPrice = _roomPrices[value];
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select a room type';
                  }
                  return null;
                },
              ),

              // Display price based on selected room type
              if (_currentPrice != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Price: \$${_currentPrice!.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF004D40),
                    ),
                  ),
                ),

              // Date picker
              ListTile(
                title: const Text('Select Date', style: TextStyle(color: Color(0xFF004D40))),
                subtitle: Text(
                  _selectedDate == null
                      ? 'No date selected'
                      : '${_selectedDate!.toLocal()}'.split(' ')[0],
                  style: const TextStyle(color: Color(0xFF004D40)),
                ),
                trailing: const Icon(Icons.calendar_today, color: Color(0xFFFFD600)),
                onTap: () => _selectDate(context),
              ),

              // Time picker
              ListTile(
                title: const Text('Select Time', style: TextStyle(color: Color(0xFF004D40))),
                subtitle: Text(
                  _selectedTime == null
                      ? 'No time selected'
                      : _selectedTime!.format(context),
                  style: const TextStyle(color: Color(0xFF004D40)),
                ),
                trailing: const Icon(Icons.access_time, color: Color(0xFFFFD600)),
                onTap: () => _selectTime(context),
              ),

              // Submit button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: const Color(0xFF00796B), // Text color
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                onPressed: _submitForm,
                child: const Text('Book Room'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _showConfirmationDialog();
    }
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFECEFF1),
          title: const Text('Booking Confirmed', style: TextStyle(color: Color(0xFF004D40))),
          content: Text(
            'Room: $_selectedRoomType\n'
                'Price: \$${_currentPrice!.toStringAsFixed(2)}\n'
                'Date: ${_selectedDate!.toLocal()}'.split(' ')[0] + '\n'
                'Time: ${_selectedTime!.format(context)}\n'
                'Name: $_name\n'
                'Email: $_email',
            style: const TextStyle(color: Color(0xFF004D40)),
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: const Color(0xFF00796B)),
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
