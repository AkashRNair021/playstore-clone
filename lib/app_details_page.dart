import 'package:flutter/material.dart';

class AppDetailsPage extends StatefulWidget {
  final String name;
  final String rating;
  final String size;
  final String downloads;
  final String imageUrl;
  final List<String> screenshots;
  final String description;

  AppDetailsPage({
    required this.name,
    required this.rating,
    required this.size,
    required this.downloads,
    required this.imageUrl,
    required this.screenshots,
    required this.description,
  });

  @override
  _AppDetailsPageState createState() => _AppDetailsPageState();
}

class _AppDetailsPageState extends State<AppDetailsPage> {
  double _progress = 0.0;
  bool _isInstalling = false;

  void _installApp() async {
    setState(() {
      _isInstalling = true;
      _progress = 0.0; // Reset progress
    });

    // Simulate download process
    for (int i = 1; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 50)); // Simulate time delay
      setState(() {
        _progress = i / 100; // Update progress
      });
    }

    // After installation is complete
    setState(() {
      _isInstalling = false;
      _progress = 0.0; // Reset progress after completion
    });

    // Show a SnackBar or dialog to indicate installation completion
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${widget.name} installed successfully!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                widget.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Rating: ${widget.rating}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              Text('Size: ${widget.size}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              Text('Downloads: ${widget.downloads}',
                  style: TextStyle(fontSize: 18)),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _isInstalling ? null : _installApp,
                child: Text(_isInstalling ? 'Installing...' : 'Install'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Full-width button
                ),
              ),
              if (_isInstalling) ...[
                SizedBox(height: 16),
                LinearProgressIndicator(value: _progress),
              ],
              SizedBox(height: 16),
              Text(
                'Screenshots',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.screenshots.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Image.asset(widget.screenshots[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Description',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                widget.description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
