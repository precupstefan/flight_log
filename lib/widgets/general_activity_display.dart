import 'package:flutter/material.dart';

class GeneralActivityDisplay extends StatefulWidget {
  const GeneralActivityDisplay(
      {Key? key,
      this.title = "",
      this.bottomNavigationBarItems = const [],
      required this.pages,
      this.hasFloatingButton = false,
      this.onFloatingButtonPressed})
      : assert(hasFloatingButton ? onFloatingButtonPressed != null : true),
        super(key: key);

  final String title;
  final List<BottomNavigationBarItem> bottomNavigationBarItems;
  final List<Widget> pages;
  final bool hasFloatingButton;
  final VoidCallback? onFloatingButtonPressed;

  @override
  State<StatefulWidget> createState() => _GeneralActivityDisplay();
}

class _GeneralActivityDisplay extends State<GeneralActivityDisplay> {
  // final String title;
  // final List<BottomNavigationBarItem> bottomNavigationBarItems;

  PageController controller = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    controller.animateToPage(_selectedIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }

  void _onPageChanged(int index){
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: PageView(
        controller: controller,
        children: widget.pages,
        onPageChanged: _onPageChanged,
      ),
      floatingActionButton: widget.hasFloatingButton
          ? FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: widget.onFloatingButtonPressed,
            )
          : null,
      bottomNavigationBar: (widget.bottomNavigationBarItems.isNotEmpty)
          ? BottomNavigationBar(
              items: widget.bottomNavigationBarItems,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            )
          : null,
    );
  }
}
