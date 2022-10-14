import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

class MultiplicationTableCell extends StatelessWidget {
  final int value;
  final Color color;

  const MultiplicationTableCell(
      {super.key, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 1.0),
      ),
      alignment: Alignment.center,
      child: Text(
        "${value ?? ''}",
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}

class TableHead extends StatelessWidget {
  final ScrollController scrollController;
  TableHead({
    required this.scrollController,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          MultiplicationTableCell(
            color: Colors.yellow.withOpacity(0.3),
            value: 1,
          ),
          Expanded(
            child: Scrollbar(
              controller: scrollController,
              thumbVisibility: true,
              scrollbarOrientation: ScrollbarOrientation.top,
              child: ListView(
                controller: scrollController,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: List.generate(30 - 1, (index) {
                  return MultiplicationTableCell(
                    color: Colors.yellow.withOpacity(0.3),
                    value: index + 2,
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TableBody extends StatefulWidget {
  final ScrollController scrollController;
  TableBody({
    required this.scrollController,
  });
  @override
  _TableBodyState createState() => _TableBodyState();
}

class _TableBodyState extends State<TableBody> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _firstColumnController;
  late ScrollController _restColumnsController;
  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _firstColumnController = _controllers.addAndGet();
    _restColumnsController = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _firstColumnController.dispose();
    _restColumnsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Scrollbar(
            scrollbarOrientation: ScrollbarOrientation.right,
            thumbVisibility: true,
            controller: _firstColumnController,
            child: ListView(
              controller: _firstColumnController,
              physics: ClampingScrollPhysics(),
              children: List.generate(30 - 1, (index) {
                return MultiplicationTableCell(
                  color: Colors.yellow.withOpacity(0.3),
                  value: index + 2,
                );
              }),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            controller: widget.scrollController,
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: SizedBox(
              width: (30 - 1) * 60,
              child: ListView(
                controller: _restColumnsController,
                physics: const ClampingScrollPhysics(),
                children: List.generate(30 - 1, (y) {
                  return Row(
                    children: List.generate(30 - 1, (x) {
                      return MultiplicationTableCell(
                        value: (x + 2) * (y + 2),
                        color: Colors.lightBlue,
                      );
                    }),
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MultiplicationTable extends StatefulWidget {
  const MultiplicationTable({super.key});

  @override
  _MultiplicationTableState createState() => _MultiplicationTableState();
}

class _MultiplicationTableState extends State<MultiplicationTable> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _headController;
  late ScrollController _bodyController;
  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _headController = _controllers.addAndGet();
    _bodyController = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _headController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan tabel"),
        ),
        body: Column(
          children: [
            TableHead(
              scrollController: _headController,
            ),
            Expanded(
              child: TableBody(
                scrollController: _bodyController,
              ),
            ),
          ],
        ));
  }
}
