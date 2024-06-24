enum Routes { 
  home('/'),
  details('/details');

  final String route;
  const Routes(this.route);
  
  String get value => route;
}