// Project: Mostathmer - مُستثمر

class Investment {
  String name;
  String type;
  double risk;

  Investment(this.name, this.type, this.risk);

  void showInfo() {
    print('Investment: $name');
    print('Type: $type');
    print('Risk Level: $risk / 5');
    print('-------------------------');
  }
}

void main() {
  // 3 Objects
  Investment investment1 =
      Investment('Tech Fund', 'Investment Fund', 2.5);

  Investment investment2 =
      Investment('Company A', 'Stock', 4.0);

  Investment investment3 =
      Investment('Company B', 'Stock', 3.5);

  // List
  List<Investment> investments = [
    investment1,
    investment2,
    investment3,
  ];

  // Display data using Loop
  print('================================');
  print('       Mostathmer ');
  print('================================');
  print('Learn today, invest wisely!');
  print('');

  for (Investment investment in investments) {
    investment.showInfo();
  }

  print('Total Investments: ${investments.length}');
}