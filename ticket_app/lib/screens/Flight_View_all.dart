import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../info/Flights_info.dart';
import '../widgets/tickets_view.dart';

class FlightViewAll extends StatelessWidget {
  const FlightViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: ticketList
              .map(
                (singleTickets) => TicketView(
                  tickets: singleTickets,
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
