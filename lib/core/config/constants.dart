enum Constants { dev, stg, prod }

extension ConstantsExtension on Constants {
  String get name {
    switch (this) {
      case Constants.dev:
        return 'DEV';
      case Constants.stg:
        return 'STG';
      case Constants.prod:
        return 'PROD';
    }
  }

  String get baseUrl {
    switch (this) {
      case Constants.dev:
        return 'http://20.200.120.130:5001/api';
      case Constants.stg:
        return 'http://20.200.120.130:5001/api';
      case Constants.prod:
        return 'http://20.200.120.130:5001/api';
    }
  }
}
