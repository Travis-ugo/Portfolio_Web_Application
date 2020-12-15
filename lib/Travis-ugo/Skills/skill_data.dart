import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../utils/widgets.dart';

class RoundMan extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;
  final double percent;
  final double cloud;
  const RoundMan({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.color,
    @required this.icon,
    @required this.percent,
    @required this.cloud,
  }) : super(key: key);

  @override
  _RoundManState createState() => _RoundManState();
}

class _RoundManState extends State<RoundMan> {
  void loco() {
    Future.delayed(Duration(milliseconds: 12400), () {
      setState(() {
        _heigh = widget.cloud;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loco();
  }

  double _heigh = 60;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 12000,
              curve: Curves.bounceIn,
              percent: widget.percent,
              radius: _heigh + 10,
              lineWidth: 5.0,
              progressColor: widget.color.withOpacity(0.8),
              center: InkWell(
                child: AnimatedContainer(
                  height: _heigh,
                  width: _heigh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: widget.color,
                  ),
                  duration: Duration(milliseconds: 350),
                  child: Icon(
                    widget.icon,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        Text(
          widget.subtitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.black26,
            ),
          ),
        ),
      ],
    );
  }
}
