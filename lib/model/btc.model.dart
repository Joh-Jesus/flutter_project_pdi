class BTCModel {
  Ticker? ticker;

  BTCModel({this.ticker});

  BTCModel.fromJson(Map<String, dynamic> json) {
    ticker = json['ticker'] != null ? Ticker.fromJson(json['ticker']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ticker != null) {
      data['ticker'] = ticker!.toJson();
    }
    return data;
  }
}

class Ticker {
  double? high;
  double? low;
  double? vol;
  double? last;
  double? buy;
  double? sell;
  int? date;

  Ticker(
      {this.high,
      this.low,
      this.vol,
      this.last,
      this.buy,
      this.sell,
      this.date});

  Ticker.fromJson(Map<String, dynamic> json) {
    high = double.parse(json['high'].toString());
    low = double.parse(json['low'].toString());
    vol = double.parse(json['vol'].toString());
    last = double.parse(json['last'].toString());
    buy = double.parse(json['buy'].toString());
    sell = double.parse(json['sell'].toString());
    date = int.parse(json['date'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['high'] = high;
    data['low'] = low;
    data['vol'] = vol;
    data['last'] = last;
    data['buy'] = buy;
    data['sell'] = sell;
    data['date'] = date;
    return data;
  }
}
