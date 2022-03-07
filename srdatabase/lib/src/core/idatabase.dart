 
import 'package:iskelet_marketautobot/iskelet_marketautobot.dart';


abstract class  ICoreDatabase {
  Future<void> init();

  // Future<List<MdStrategyReal>> getRealStrategies();

  // Future<List<MdStrategyReal>> getRealStrategies();


  // Future<MdApiKey> addMarketApiKey(MdApiKey md);

  // Future<bool> updateMarketApiKey(MdApiKey md);

  // Future<int> deleteMarketApiKey(int id);
  

}

abstract class IDatabase implements ICoreDatabase{ 
}


//MdApiKey
  // Future<MdApiKey?> getMarketApiKey(String name);

  // Future<MdApiKey> addMarketApiKey(MdApiKey md);

  // Future<bool> updateMarketApiKey(MdApiKey md);

  // Future<int> deleteMarketApiKey(int id);
  

// //MdStrategy
//   Future<List<MdStrategy>> getStrategies({bool isBackTest = false, bool isArchive = false, OrderingMode mode = OrderingMode.asc});

//   Future<MdStrategy?> getStrategy(int id, {OrderingMode mode = OrderingMode.asc});

//   Future<MdStrategy> addStrategy(MdStrategy md);

//   Future<bool> updateStrategy(MdStrategy md);

//   Future<int> deleteStrategy(int id);

//   //MdRadar
//   Future<List<MdRadar>> getRadars(int strategyId, {OrderingMode mode = OrderingMode.asc});

//   Future<MdRadar> addRadar(MdRadar mdr);

//   Future<bool> updateRadar(MdRadar mdr);

//   Future<int> deleteRadar(int id);

//   Future<int> deleteRadars(int strategyId);

//   //MdMyOrder
//   Future<List<MdMyOrder>> getOrders(int strategyId, {OrderingMode mode = OrderingMode.asc});

//   Future<MdMyOrder> addOrder(MdMyOrder md);

//   Future<bool> updateOrder(MdMyOrder md);

//   Future<int> deleteOrder(int id);

//   Future<int> deleteOrders(int strategyId);

// //MdKline
//   Future<List<MdKline>> getMdKlines(
//       {required DateTime lastCloseTimeUtc, required String symbol, required String interval, required int period});

//   Future<MdKline?> getMdKline({required DateTime closeTimeUtc, required String symbol, required String interval});

// //MdKline
//   Future<List<MdHistoricalMdKlines>> getAllMdHistoricalMdKlines(
//       {bool includeData = true, OrderingMode mode = OrderingMode.desc});

//   Future<MdHistoricalMdKlines?> getHistoricalMdKlineById(int id);

//   Future<MdHistoricalDataFilterProvider> getAllByFilterable(
//       {bool includeData = true, OrderingMode mode = OrderingMode.asc});

//   Future<MdHistoricalMdKlines?> getHistoricalMdKline(
//       {required String symbol,
//       required String acChartInterval,
//       required String acHistoricalInterval,
//       required DateTime dateTime});

//   Future<void> addHistoricalMdKlines(MdHistoricalMdKlines historicalKlines);

//   Future<int> deleteHistoricalMdKlinesById(int id);
//   Future<int> deleteKlinesByHistoricalId(int historicalId);
