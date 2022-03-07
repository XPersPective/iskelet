// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_drift_tables.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TbMdMyOrder extends DataClass implements Insertable<TbMdMyOrder> {
  final int id;
  final String symbol;
  final String origClientOrderId;
  final int orderId;
  final int orderListId;
  final String clientOrderId;
  final double price;
  final double origQty;
  final double executedQty;
  final double cummulativeQuoteQty;
  final String status;
  final String timeInForce;
  final String type;
  final String side;
  final DateTime date;
  final double change;
  final double changePercent;
  final int? strategyId;
  TbMdMyOrder(
      {required this.id,
      required this.symbol,
      required this.origClientOrderId,
      required this.orderId,
      required this.orderListId,
      required this.clientOrderId,
      required this.price,
      required this.origQty,
      required this.executedQty,
      required this.cummulativeQuoteQty,
      required this.status,
      required this.timeInForce,
      required this.type,
      required this.side,
      required this.date,
      required this.change,
      required this.changePercent,
      this.strategyId});
  factory TbMdMyOrder.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TbMdMyOrder(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      origClientOrderId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}orig_client_order_id'])!,
      orderId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_id'])!,
      orderListId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_list_id'])!,
      clientOrderId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}client_order_id'])!,
      price: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price'])!,
      origQty: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}orig_qty'])!,
      executedQty: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}executed_qty'])!,
      cummulativeQuoteQty: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}cummulative_quote_qty'])!,
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status'])!,
      timeInForce: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}time_in_force'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      side: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}side'])!,
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date'])!,
      change: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}change'])!,
      changePercent: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}change_percent'])!,
      strategyId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}strategy_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['orig_client_order_id'] = Variable<String>(origClientOrderId);
    map['order_id'] = Variable<int>(orderId);
    map['order_list_id'] = Variable<int>(orderListId);
    map['client_order_id'] = Variable<String>(clientOrderId);
    map['price'] = Variable<double>(price);
    map['orig_qty'] = Variable<double>(origQty);
    map['executed_qty'] = Variable<double>(executedQty);
    map['cummulative_quote_qty'] = Variable<double>(cummulativeQuoteQty);
    map['status'] = Variable<String>(status);
    map['time_in_force'] = Variable<String>(timeInForce);
    map['type'] = Variable<String>(type);
    map['side'] = Variable<String>(side);
    map['date'] = Variable<DateTime>(date);
    map['change'] = Variable<double>(change);
    map['change_percent'] = Variable<double>(changePercent);
    if (!nullToAbsent || strategyId != null) {
      map['strategy_id'] = Variable<int?>(strategyId);
    }
    return map;
  }

  TbMdMyOrdersCompanion toCompanion(bool nullToAbsent) {
    return TbMdMyOrdersCompanion(
      id: Value(id),
      symbol: Value(symbol),
      origClientOrderId: Value(origClientOrderId),
      orderId: Value(orderId),
      orderListId: Value(orderListId),
      clientOrderId: Value(clientOrderId),
      price: Value(price),
      origQty: Value(origQty),
      executedQty: Value(executedQty),
      cummulativeQuoteQty: Value(cummulativeQuoteQty),
      status: Value(status),
      timeInForce: Value(timeInForce),
      type: Value(type),
      side: Value(side),
      date: Value(date),
      change: Value(change),
      changePercent: Value(changePercent),
      strategyId: strategyId == null && nullToAbsent
          ? const Value.absent()
          : Value(strategyId),
    );
  }

  factory TbMdMyOrder.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbMdMyOrder(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      origClientOrderId: serializer.fromJson<String>(json['origClientOrderId']),
      orderId: serializer.fromJson<int>(json['orderId']),
      orderListId: serializer.fromJson<int>(json['orderListId']),
      clientOrderId: serializer.fromJson<String>(json['clientOrderId']),
      price: serializer.fromJson<double>(json['price']),
      origQty: serializer.fromJson<double>(json['origQty']),
      executedQty: serializer.fromJson<double>(json['executedQty']),
      cummulativeQuoteQty:
          serializer.fromJson<double>(json['cummulativeQuoteQty']),
      status: serializer.fromJson<String>(json['status']),
      timeInForce: serializer.fromJson<String>(json['timeInForce']),
      type: serializer.fromJson<String>(json['type']),
      side: serializer.fromJson<String>(json['side']),
      date: serializer.fromJson<DateTime>(json['date']),
      change: serializer.fromJson<double>(json['change']),
      changePercent: serializer.fromJson<double>(json['changePercent']),
      strategyId: serializer.fromJson<int?>(json['strategyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'origClientOrderId': serializer.toJson<String>(origClientOrderId),
      'orderId': serializer.toJson<int>(orderId),
      'orderListId': serializer.toJson<int>(orderListId),
      'clientOrderId': serializer.toJson<String>(clientOrderId),
      'price': serializer.toJson<double>(price),
      'origQty': serializer.toJson<double>(origQty),
      'executedQty': serializer.toJson<double>(executedQty),
      'cummulativeQuoteQty': serializer.toJson<double>(cummulativeQuoteQty),
      'status': serializer.toJson<String>(status),
      'timeInForce': serializer.toJson<String>(timeInForce),
      'type': serializer.toJson<String>(type),
      'side': serializer.toJson<String>(side),
      'date': serializer.toJson<DateTime>(date),
      'change': serializer.toJson<double>(change),
      'changePercent': serializer.toJson<double>(changePercent),
      'strategyId': serializer.toJson<int?>(strategyId),
    };
  }

  TbMdMyOrder copyWith(
          {int? id,
          String? symbol,
          String? origClientOrderId,
          int? orderId,
          int? orderListId,
          String? clientOrderId,
          double? price,
          double? origQty,
          double? executedQty,
          double? cummulativeQuoteQty,
          String? status,
          String? timeInForce,
          String? type,
          String? side,
          DateTime? date,
          double? change,
          double? changePercent,
          int? strategyId}) =>
      TbMdMyOrder(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        origClientOrderId: origClientOrderId ?? this.origClientOrderId,
        orderId: orderId ?? this.orderId,
        orderListId: orderListId ?? this.orderListId,
        clientOrderId: clientOrderId ?? this.clientOrderId,
        price: price ?? this.price,
        origQty: origQty ?? this.origQty,
        executedQty: executedQty ?? this.executedQty,
        cummulativeQuoteQty: cummulativeQuoteQty ?? this.cummulativeQuoteQty,
        status: status ?? this.status,
        timeInForce: timeInForce ?? this.timeInForce,
        type: type ?? this.type,
        side: side ?? this.side,
        date: date ?? this.date,
        change: change ?? this.change,
        changePercent: changePercent ?? this.changePercent,
        strategyId: strategyId ?? this.strategyId,
      );
  @override
  String toString() {
    return (StringBuffer('TbMdMyOrder(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('origClientOrderId: $origClientOrderId, ')
          ..write('orderId: $orderId, ')
          ..write('orderListId: $orderListId, ')
          ..write('clientOrderId: $clientOrderId, ')
          ..write('price: $price, ')
          ..write('origQty: $origQty, ')
          ..write('executedQty: $executedQty, ')
          ..write('cummulativeQuoteQty: $cummulativeQuoteQty, ')
          ..write('status: $status, ')
          ..write('timeInForce: $timeInForce, ')
          ..write('type: $type, ')
          ..write('side: $side, ')
          ..write('date: $date, ')
          ..write('change: $change, ')
          ..write('changePercent: $changePercent, ')
          ..write('strategyId: $strategyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      symbol,
      origClientOrderId,
      orderId,
      orderListId,
      clientOrderId,
      price,
      origQty,
      executedQty,
      cummulativeQuoteQty,
      status,
      timeInForce,
      type,
      side,
      date,
      change,
      changePercent,
      strategyId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbMdMyOrder &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.origClientOrderId == this.origClientOrderId &&
          other.orderId == this.orderId &&
          other.orderListId == this.orderListId &&
          other.clientOrderId == this.clientOrderId &&
          other.price == this.price &&
          other.origQty == this.origQty &&
          other.executedQty == this.executedQty &&
          other.cummulativeQuoteQty == this.cummulativeQuoteQty &&
          other.status == this.status &&
          other.timeInForce == this.timeInForce &&
          other.type == this.type &&
          other.side == this.side &&
          other.date == this.date &&
          other.change == this.change &&
          other.changePercent == this.changePercent &&
          other.strategyId == this.strategyId);
}

class TbMdMyOrdersCompanion extends UpdateCompanion<TbMdMyOrder> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> origClientOrderId;
  final Value<int> orderId;
  final Value<int> orderListId;
  final Value<String> clientOrderId;
  final Value<double> price;
  final Value<double> origQty;
  final Value<double> executedQty;
  final Value<double> cummulativeQuoteQty;
  final Value<String> status;
  final Value<String> timeInForce;
  final Value<String> type;
  final Value<String> side;
  final Value<DateTime> date;
  final Value<double> change;
  final Value<double> changePercent;
  final Value<int?> strategyId;
  const TbMdMyOrdersCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.origClientOrderId = const Value.absent(),
    this.orderId = const Value.absent(),
    this.orderListId = const Value.absent(),
    this.clientOrderId = const Value.absent(),
    this.price = const Value.absent(),
    this.origQty = const Value.absent(),
    this.executedQty = const Value.absent(),
    this.cummulativeQuoteQty = const Value.absent(),
    this.status = const Value.absent(),
    this.timeInForce = const Value.absent(),
    this.type = const Value.absent(),
    this.side = const Value.absent(),
    this.date = const Value.absent(),
    this.change = const Value.absent(),
    this.changePercent = const Value.absent(),
    this.strategyId = const Value.absent(),
  });
  TbMdMyOrdersCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String origClientOrderId,
    required int orderId,
    required int orderListId,
    required String clientOrderId,
    required double price,
    required double origQty,
    required double executedQty,
    required double cummulativeQuoteQty,
    required String status,
    required String timeInForce,
    required String type,
    required String side,
    required DateTime date,
    required double change,
    required double changePercent,
    this.strategyId = const Value.absent(),
  })  : symbol = Value(symbol),
        origClientOrderId = Value(origClientOrderId),
        orderId = Value(orderId),
        orderListId = Value(orderListId),
        clientOrderId = Value(clientOrderId),
        price = Value(price),
        origQty = Value(origQty),
        executedQty = Value(executedQty),
        cummulativeQuoteQty = Value(cummulativeQuoteQty),
        status = Value(status),
        timeInForce = Value(timeInForce),
        type = Value(type),
        side = Value(side),
        date = Value(date),
        change = Value(change),
        changePercent = Value(changePercent);
  static Insertable<TbMdMyOrder> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<String>? origClientOrderId,
    Expression<int>? orderId,
    Expression<int>? orderListId,
    Expression<String>? clientOrderId,
    Expression<double>? price,
    Expression<double>? origQty,
    Expression<double>? executedQty,
    Expression<double>? cummulativeQuoteQty,
    Expression<String>? status,
    Expression<String>? timeInForce,
    Expression<String>? type,
    Expression<String>? side,
    Expression<DateTime>? date,
    Expression<double>? change,
    Expression<double>? changePercent,
    Expression<int?>? strategyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (origClientOrderId != null) 'orig_client_order_id': origClientOrderId,
      if (orderId != null) 'order_id': orderId,
      if (orderListId != null) 'order_list_id': orderListId,
      if (clientOrderId != null) 'client_order_id': clientOrderId,
      if (price != null) 'price': price,
      if (origQty != null) 'orig_qty': origQty,
      if (executedQty != null) 'executed_qty': executedQty,
      if (cummulativeQuoteQty != null)
        'cummulative_quote_qty': cummulativeQuoteQty,
      if (status != null) 'status': status,
      if (timeInForce != null) 'time_in_force': timeInForce,
      if (type != null) 'type': type,
      if (side != null) 'side': side,
      if (date != null) 'date': date,
      if (change != null) 'change': change,
      if (changePercent != null) 'change_percent': changePercent,
      if (strategyId != null) 'strategy_id': strategyId,
    });
  }

  TbMdMyOrdersCompanion copyWith(
      {Value<int>? id,
      Value<String>? symbol,
      Value<String>? origClientOrderId,
      Value<int>? orderId,
      Value<int>? orderListId,
      Value<String>? clientOrderId,
      Value<double>? price,
      Value<double>? origQty,
      Value<double>? executedQty,
      Value<double>? cummulativeQuoteQty,
      Value<String>? status,
      Value<String>? timeInForce,
      Value<String>? type,
      Value<String>? side,
      Value<DateTime>? date,
      Value<double>? change,
      Value<double>? changePercent,
      Value<int?>? strategyId}) {
    return TbMdMyOrdersCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      origClientOrderId: origClientOrderId ?? this.origClientOrderId,
      orderId: orderId ?? this.orderId,
      orderListId: orderListId ?? this.orderListId,
      clientOrderId: clientOrderId ?? this.clientOrderId,
      price: price ?? this.price,
      origQty: origQty ?? this.origQty,
      executedQty: executedQty ?? this.executedQty,
      cummulativeQuoteQty: cummulativeQuoteQty ?? this.cummulativeQuoteQty,
      status: status ?? this.status,
      timeInForce: timeInForce ?? this.timeInForce,
      type: type ?? this.type,
      side: side ?? this.side,
      date: date ?? this.date,
      change: change ?? this.change,
      changePercent: changePercent ?? this.changePercent,
      strategyId: strategyId ?? this.strategyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (origClientOrderId.present) {
      map['orig_client_order_id'] = Variable<String>(origClientOrderId.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<int>(orderId.value);
    }
    if (orderListId.present) {
      map['order_list_id'] = Variable<int>(orderListId.value);
    }
    if (clientOrderId.present) {
      map['client_order_id'] = Variable<String>(clientOrderId.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (origQty.present) {
      map['orig_qty'] = Variable<double>(origQty.value);
    }
    if (executedQty.present) {
      map['executed_qty'] = Variable<double>(executedQty.value);
    }
    if (cummulativeQuoteQty.present) {
      map['cummulative_quote_qty'] =
          Variable<double>(cummulativeQuoteQty.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (timeInForce.present) {
      map['time_in_force'] = Variable<String>(timeInForce.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (side.present) {
      map['side'] = Variable<String>(side.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (change.present) {
      map['change'] = Variable<double>(change.value);
    }
    if (changePercent.present) {
      map['change_percent'] = Variable<double>(changePercent.value);
    }
    if (strategyId.present) {
      map['strategy_id'] = Variable<int?>(strategyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbMdMyOrdersCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('origClientOrderId: $origClientOrderId, ')
          ..write('orderId: $orderId, ')
          ..write('orderListId: $orderListId, ')
          ..write('clientOrderId: $clientOrderId, ')
          ..write('price: $price, ')
          ..write('origQty: $origQty, ')
          ..write('executedQty: $executedQty, ')
          ..write('cummulativeQuoteQty: $cummulativeQuoteQty, ')
          ..write('status: $status, ')
          ..write('timeInForce: $timeInForce, ')
          ..write('type: $type, ')
          ..write('side: $side, ')
          ..write('date: $date, ')
          ..write('change: $change, ')
          ..write('changePercent: $changePercent, ')
          ..write('strategyId: $strategyId')
          ..write(')'))
        .toString();
  }
}

class $TbMdMyOrdersTable extends TbMdMyOrders
    with TableInfo<$TbMdMyOrdersTable, TbMdMyOrder> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbMdMyOrdersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _origClientOrderIdMeta =
      const VerificationMeta('origClientOrderId');
  @override
  late final GeneratedColumn<String?> origClientOrderId =
      GeneratedColumn<String?>('orig_client_order_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _orderIdMeta = const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<int?> orderId = GeneratedColumn<int?>(
      'order_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _orderListIdMeta =
      const VerificationMeta('orderListId');
  @override
  late final GeneratedColumn<int?> orderListId = GeneratedColumn<int?>(
      'order_list_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _clientOrderIdMeta =
      const VerificationMeta('clientOrderId');
  @override
  late final GeneratedColumn<String?> clientOrderId = GeneratedColumn<String?>(
      'client_order_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double?> price = GeneratedColumn<double?>(
      'price', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _origQtyMeta = const VerificationMeta('origQty');
  @override
  late final GeneratedColumn<double?> origQty = GeneratedColumn<double?>(
      'orig_qty', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _executedQtyMeta =
      const VerificationMeta('executedQty');
  @override
  late final GeneratedColumn<double?> executedQty = GeneratedColumn<double?>(
      'executed_qty', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _cummulativeQuoteQtyMeta =
      const VerificationMeta('cummulativeQuoteQty');
  @override
  late final GeneratedColumn<double?> cummulativeQuoteQty =
      GeneratedColumn<double?>('cummulative_quote_qty', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _timeInForceMeta =
      const VerificationMeta('timeInForce');
  @override
  late final GeneratedColumn<String?> timeInForce = GeneratedColumn<String?>(
      'time_in_force', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _sideMeta = const VerificationMeta('side');
  @override
  late final GeneratedColumn<String?> side = GeneratedColumn<String?>(
      'side', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _changeMeta = const VerificationMeta('change');
  @override
  late final GeneratedColumn<double?> change = GeneratedColumn<double?>(
      'change', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _changePercentMeta =
      const VerificationMeta('changePercent');
  @override
  late final GeneratedColumn<double?> changePercent = GeneratedColumn<double?>(
      'change_percent', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _strategyIdMeta = const VerificationMeta('strategyId');
  @override
  late final GeneratedColumn<int?> strategyId = GeneratedColumn<int?>(
      'strategy_id', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        symbol,
        origClientOrderId,
        orderId,
        orderListId,
        clientOrderId,
        price,
        origQty,
        executedQty,
        cummulativeQuoteQty,
        status,
        timeInForce,
        type,
        side,
        date,
        change,
        changePercent,
        strategyId
      ];
  @override
  String get aliasedName => _alias ?? 'tb_md_my_orders';
  @override
  String get actualTableName => 'tb_md_my_orders';
  @override
  VerificationContext validateIntegrity(Insertable<TbMdMyOrder> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('orig_client_order_id')) {
      context.handle(
          _origClientOrderIdMeta,
          origClientOrderId.isAcceptableOrUnknown(
              data['orig_client_order_id']!, _origClientOrderIdMeta));
    } else if (isInserting) {
      context.missing(_origClientOrderIdMeta);
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('order_list_id')) {
      context.handle(
          _orderListIdMeta,
          orderListId.isAcceptableOrUnknown(
              data['order_list_id']!, _orderListIdMeta));
    } else if (isInserting) {
      context.missing(_orderListIdMeta);
    }
    if (data.containsKey('client_order_id')) {
      context.handle(
          _clientOrderIdMeta,
          clientOrderId.isAcceptableOrUnknown(
              data['client_order_id']!, _clientOrderIdMeta));
    } else if (isInserting) {
      context.missing(_clientOrderIdMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('orig_qty')) {
      context.handle(_origQtyMeta,
          origQty.isAcceptableOrUnknown(data['orig_qty']!, _origQtyMeta));
    } else if (isInserting) {
      context.missing(_origQtyMeta);
    }
    if (data.containsKey('executed_qty')) {
      context.handle(
          _executedQtyMeta,
          executedQty.isAcceptableOrUnknown(
              data['executed_qty']!, _executedQtyMeta));
    } else if (isInserting) {
      context.missing(_executedQtyMeta);
    }
    if (data.containsKey('cummulative_quote_qty')) {
      context.handle(
          _cummulativeQuoteQtyMeta,
          cummulativeQuoteQty.isAcceptableOrUnknown(
              data['cummulative_quote_qty']!, _cummulativeQuoteQtyMeta));
    } else if (isInserting) {
      context.missing(_cummulativeQuoteQtyMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('time_in_force')) {
      context.handle(
          _timeInForceMeta,
          timeInForce.isAcceptableOrUnknown(
              data['time_in_force']!, _timeInForceMeta));
    } else if (isInserting) {
      context.missing(_timeInForceMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('side')) {
      context.handle(
          _sideMeta, side.isAcceptableOrUnknown(data['side']!, _sideMeta));
    } else if (isInserting) {
      context.missing(_sideMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('change')) {
      context.handle(_changeMeta,
          change.isAcceptableOrUnknown(data['change']!, _changeMeta));
    } else if (isInserting) {
      context.missing(_changeMeta);
    }
    if (data.containsKey('change_percent')) {
      context.handle(
          _changePercentMeta,
          changePercent.isAcceptableOrUnknown(
              data['change_percent']!, _changePercentMeta));
    } else if (isInserting) {
      context.missing(_changePercentMeta);
    }
    if (data.containsKey('strategy_id')) {
      context.handle(
          _strategyIdMeta,
          strategyId.isAcceptableOrUnknown(
              data['strategy_id']!, _strategyIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbMdMyOrder map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TbMdMyOrder.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TbMdMyOrdersTable createAlias(String alias) {
    return $TbMdMyOrdersTable(attachedDatabase, alias);
  }
}

class TbMdRadar extends DataClass implements Insertable<TbMdRadar> {
  final int id;
  final String name;
  final String symbol;
  final String acChartInterval;
  final String args;
  final int? strategyId;
  TbMdRadar(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.acChartInterval,
      required this.args,
      this.strategyId});
  factory TbMdRadar.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TbMdRadar(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      acChartInterval: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}ac_chart_interval'])!,
      args: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}args'])!,
      strategyId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}strategy_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['symbol'] = Variable<String>(symbol);
    map['ac_chart_interval'] = Variable<String>(acChartInterval);
    map['args'] = Variable<String>(args);
    if (!nullToAbsent || strategyId != null) {
      map['strategy_id'] = Variable<int?>(strategyId);
    }
    return map;
  }

  TbMdRadarsCompanion toCompanion(bool nullToAbsent) {
    return TbMdRadarsCompanion(
      id: Value(id),
      name: Value(name),
      symbol: Value(symbol),
      acChartInterval: Value(acChartInterval),
      args: Value(args),
      strategyId: strategyId == null && nullToAbsent
          ? const Value.absent()
          : Value(strategyId),
    );
  }

  factory TbMdRadar.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbMdRadar(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      symbol: serializer.fromJson<String>(json['symbol']),
      acChartInterval: serializer.fromJson<String>(json['acChartInterval']),
      args: serializer.fromJson<String>(json['args']),
      strategyId: serializer.fromJson<int?>(json['strategyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'symbol': serializer.toJson<String>(symbol),
      'acChartInterval': serializer.toJson<String>(acChartInterval),
      'args': serializer.toJson<String>(args),
      'strategyId': serializer.toJson<int?>(strategyId),
    };
  }

  TbMdRadar copyWith(
          {int? id,
          String? name,
          String? symbol,
          String? acChartInterval,
          String? args,
          int? strategyId}) =>
      TbMdRadar(
        id: id ?? this.id,
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
        acChartInterval: acChartInterval ?? this.acChartInterval,
        args: args ?? this.args,
        strategyId: strategyId ?? this.strategyId,
      );
  @override
  String toString() {
    return (StringBuffer('TbMdRadar(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('acChartInterval: $acChartInterval, ')
          ..write('args: $args, ')
          ..write('strategyId: $strategyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, symbol, acChartInterval, args, strategyId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbMdRadar &&
          other.id == this.id &&
          other.name == this.name &&
          other.symbol == this.symbol &&
          other.acChartInterval == this.acChartInterval &&
          other.args == this.args &&
          other.strategyId == this.strategyId);
}

class TbMdRadarsCompanion extends UpdateCompanion<TbMdRadar> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> symbol;
  final Value<String> acChartInterval;
  final Value<String> args;
  final Value<int?> strategyId;
  const TbMdRadarsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.symbol = const Value.absent(),
    this.acChartInterval = const Value.absent(),
    this.args = const Value.absent(),
    this.strategyId = const Value.absent(),
  });
  TbMdRadarsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String symbol,
    required String acChartInterval,
    required String args,
    this.strategyId = const Value.absent(),
  })  : name = Value(name),
        symbol = Value(symbol),
        acChartInterval = Value(acChartInterval),
        args = Value(args);
  static Insertable<TbMdRadar> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? symbol,
    Expression<String>? acChartInterval,
    Expression<String>? args,
    Expression<int?>? strategyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (symbol != null) 'symbol': symbol,
      if (acChartInterval != null) 'ac_chart_interval': acChartInterval,
      if (args != null) 'args': args,
      if (strategyId != null) 'strategy_id': strategyId,
    });
  }

  TbMdRadarsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? symbol,
      Value<String>? acChartInterval,
      Value<String>? args,
      Value<int?>? strategyId}) {
    return TbMdRadarsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      acChartInterval: acChartInterval ?? this.acChartInterval,
      args: args ?? this.args,
      strategyId: strategyId ?? this.strategyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (acChartInterval.present) {
      map['ac_chart_interval'] = Variable<String>(acChartInterval.value);
    }
    if (args.present) {
      map['args'] = Variable<String>(args.value);
    }
    if (strategyId.present) {
      map['strategy_id'] = Variable<int?>(strategyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbMdRadarsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('acChartInterval: $acChartInterval, ')
          ..write('args: $args, ')
          ..write('strategyId: $strategyId')
          ..write(')'))
        .toString();
  }
}

class $TbMdRadarsTable extends TbMdRadars
    with TableInfo<$TbMdRadarsTable, TbMdRadar> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbMdRadarsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _acChartIntervalMeta =
      const VerificationMeta('acChartInterval');
  @override
  late final GeneratedColumn<String?> acChartInterval =
      GeneratedColumn<String?>('ac_chart_interval', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _argsMeta = const VerificationMeta('args');
  @override
  late final GeneratedColumn<String?> args = GeneratedColumn<String?>(
      'args', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _strategyIdMeta = const VerificationMeta('strategyId');
  @override
  late final GeneratedColumn<int?> strategyId = GeneratedColumn<int?>(
      'strategy_id', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, symbol, acChartInterval, args, strategyId];
  @override
  String get aliasedName => _alias ?? 'tb_md_radars';
  @override
  String get actualTableName => 'tb_md_radars';
  @override
  VerificationContext validateIntegrity(Insertable<TbMdRadar> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('ac_chart_interval')) {
      context.handle(
          _acChartIntervalMeta,
          acChartInterval.isAcceptableOrUnknown(
              data['ac_chart_interval']!, _acChartIntervalMeta));
    } else if (isInserting) {
      context.missing(_acChartIntervalMeta);
    }
    if (data.containsKey('args')) {
      context.handle(
          _argsMeta, args.isAcceptableOrUnknown(data['args']!, _argsMeta));
    } else if (isInserting) {
      context.missing(_argsMeta);
    }
    if (data.containsKey('strategy_id')) {
      context.handle(
          _strategyIdMeta,
          strategyId.isAcceptableOrUnknown(
              data['strategy_id']!, _strategyIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbMdRadar map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TbMdRadar.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TbMdRadarsTable createAlias(String alias) {
    return $TbMdRadarsTable(attachedDatabase, alias);
  }
}

class TbMdStrategy extends DataClass implements Insertable<TbMdStrategy> {
  final int id;
  final String name;
  final String symbol;
  final double stopLossPercent;
  final double takeProfitPercent;
  final double initialBaseQty;
  final double initialQuoteQty;
  final double currentBaseQty;
  final double currentQuoteQty;
  final bool isRealTrade;
  final bool isBackTest;
  final bool isArchive;
  final int? startDate;
  final int? endDate;
  TbMdStrategy(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.stopLossPercent,
      required this.takeProfitPercent,
      required this.initialBaseQty,
      required this.initialQuoteQty,
      required this.currentBaseQty,
      required this.currentQuoteQty,
      required this.isRealTrade,
      required this.isBackTest,
      required this.isArchive,
      this.startDate,
      this.endDate});
  factory TbMdStrategy.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TbMdStrategy(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      stopLossPercent: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}stop_loss_percent'])!,
      takeProfitPercent: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}take_profit_percent'])!,
      initialBaseQty: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}initial_base_qty'])!,
      initialQuoteQty: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}initial_quote_qty'])!,
      currentBaseQty: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current_base_qty'])!,
      currentQuoteQty: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}current_quote_qty'])!,
      isRealTrade: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_real_trade'])!,
      isBackTest: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_back_test'])!,
      isArchive: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_archive'])!,
      startDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date']),
      endDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['symbol'] = Variable<String>(symbol);
    map['stop_loss_percent'] = Variable<double>(stopLossPercent);
    map['take_profit_percent'] = Variable<double>(takeProfitPercent);
    map['initial_base_qty'] = Variable<double>(initialBaseQty);
    map['initial_quote_qty'] = Variable<double>(initialQuoteQty);
    map['current_base_qty'] = Variable<double>(currentBaseQty);
    map['current_quote_qty'] = Variable<double>(currentQuoteQty);
    map['is_real_trade'] = Variable<bool>(isRealTrade);
    map['is_back_test'] = Variable<bool>(isBackTest);
    map['is_archive'] = Variable<bool>(isArchive);
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<int?>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<int?>(endDate);
    }
    return map;
  }

  TbMdStrategiesCompanion toCompanion(bool nullToAbsent) {
    return TbMdStrategiesCompanion(
      id: Value(id),
      name: Value(name),
      symbol: Value(symbol),
      stopLossPercent: Value(stopLossPercent),
      takeProfitPercent: Value(takeProfitPercent),
      initialBaseQty: Value(initialBaseQty),
      initialQuoteQty: Value(initialQuoteQty),
      currentBaseQty: Value(currentBaseQty),
      currentQuoteQty: Value(currentQuoteQty),
      isRealTrade: Value(isRealTrade),
      isBackTest: Value(isBackTest),
      isArchive: Value(isArchive),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
    );
  }

  factory TbMdStrategy.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbMdStrategy(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      symbol: serializer.fromJson<String>(json['symbol']),
      stopLossPercent: serializer.fromJson<double>(json['stopLossPercent']),
      takeProfitPercent: serializer.fromJson<double>(json['takeProfitPercent']),
      initialBaseQty: serializer.fromJson<double>(json['initialBaseQty']),
      initialQuoteQty: serializer.fromJson<double>(json['initialQuoteQty']),
      currentBaseQty: serializer.fromJson<double>(json['currentBaseQty']),
      currentQuoteQty: serializer.fromJson<double>(json['currentQuoteQty']),
      isRealTrade: serializer.fromJson<bool>(json['isRealTrade']),
      isBackTest: serializer.fromJson<bool>(json['isBackTest']),
      isArchive: serializer.fromJson<bool>(json['isArchive']),
      startDate: serializer.fromJson<int?>(json['startDate']),
      endDate: serializer.fromJson<int?>(json['endDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'symbol': serializer.toJson<String>(symbol),
      'stopLossPercent': serializer.toJson<double>(stopLossPercent),
      'takeProfitPercent': serializer.toJson<double>(takeProfitPercent),
      'initialBaseQty': serializer.toJson<double>(initialBaseQty),
      'initialQuoteQty': serializer.toJson<double>(initialQuoteQty),
      'currentBaseQty': serializer.toJson<double>(currentBaseQty),
      'currentQuoteQty': serializer.toJson<double>(currentQuoteQty),
      'isRealTrade': serializer.toJson<bool>(isRealTrade),
      'isBackTest': serializer.toJson<bool>(isBackTest),
      'isArchive': serializer.toJson<bool>(isArchive),
      'startDate': serializer.toJson<int?>(startDate),
      'endDate': serializer.toJson<int?>(endDate),
    };
  }

  TbMdStrategy copyWith(
          {int? id,
          String? name,
          String? symbol,
          double? stopLossPercent,
          double? takeProfitPercent,
          double? initialBaseQty,
          double? initialQuoteQty,
          double? currentBaseQty,
          double? currentQuoteQty,
          bool? isRealTrade,
          bool? isBackTest,
          bool? isArchive,
          int? startDate,
          int? endDate}) =>
      TbMdStrategy(
        id: id ?? this.id,
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
        stopLossPercent: stopLossPercent ?? this.stopLossPercent,
        takeProfitPercent: takeProfitPercent ?? this.takeProfitPercent,
        initialBaseQty: initialBaseQty ?? this.initialBaseQty,
        initialQuoteQty: initialQuoteQty ?? this.initialQuoteQty,
        currentBaseQty: currentBaseQty ?? this.currentBaseQty,
        currentQuoteQty: currentQuoteQty ?? this.currentQuoteQty,
        isRealTrade: isRealTrade ?? this.isRealTrade,
        isBackTest: isBackTest ?? this.isBackTest,
        isArchive: isArchive ?? this.isArchive,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
      );
  @override
  String toString() {
    return (StringBuffer('TbMdStrategy(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('stopLossPercent: $stopLossPercent, ')
          ..write('takeProfitPercent: $takeProfitPercent, ')
          ..write('initialBaseQty: $initialBaseQty, ')
          ..write('initialQuoteQty: $initialQuoteQty, ')
          ..write('currentBaseQty: $currentBaseQty, ')
          ..write('currentQuoteQty: $currentQuoteQty, ')
          ..write('isRealTrade: $isRealTrade, ')
          ..write('isBackTest: $isBackTest, ')
          ..write('isArchive: $isArchive, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      symbol,
      stopLossPercent,
      takeProfitPercent,
      initialBaseQty,
      initialQuoteQty,
      currentBaseQty,
      currentQuoteQty,
      isRealTrade,
      isBackTest,
      isArchive,
      startDate,
      endDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbMdStrategy &&
          other.id == this.id &&
          other.name == this.name &&
          other.symbol == this.symbol &&
          other.stopLossPercent == this.stopLossPercent &&
          other.takeProfitPercent == this.takeProfitPercent &&
          other.initialBaseQty == this.initialBaseQty &&
          other.initialQuoteQty == this.initialQuoteQty &&
          other.currentBaseQty == this.currentBaseQty &&
          other.currentQuoteQty == this.currentQuoteQty &&
          other.isRealTrade == this.isRealTrade &&
          other.isBackTest == this.isBackTest &&
          other.isArchive == this.isArchive &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate);
}

class TbMdStrategiesCompanion extends UpdateCompanion<TbMdStrategy> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> symbol;
  final Value<double> stopLossPercent;
  final Value<double> takeProfitPercent;
  final Value<double> initialBaseQty;
  final Value<double> initialQuoteQty;
  final Value<double> currentBaseQty;
  final Value<double> currentQuoteQty;
  final Value<bool> isRealTrade;
  final Value<bool> isBackTest;
  final Value<bool> isArchive;
  final Value<int?> startDate;
  final Value<int?> endDate;
  const TbMdStrategiesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.symbol = const Value.absent(),
    this.stopLossPercent = const Value.absent(),
    this.takeProfitPercent = const Value.absent(),
    this.initialBaseQty = const Value.absent(),
    this.initialQuoteQty = const Value.absent(),
    this.currentBaseQty = const Value.absent(),
    this.currentQuoteQty = const Value.absent(),
    this.isRealTrade = const Value.absent(),
    this.isBackTest = const Value.absent(),
    this.isArchive = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
  });
  TbMdStrategiesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String symbol,
    required double stopLossPercent,
    required double takeProfitPercent,
    required double initialBaseQty,
    required double initialQuoteQty,
    required double currentBaseQty,
    required double currentQuoteQty,
    required bool isRealTrade,
    required bool isBackTest,
    required bool isArchive,
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
  })  : name = Value(name),
        symbol = Value(symbol),
        stopLossPercent = Value(stopLossPercent),
        takeProfitPercent = Value(takeProfitPercent),
        initialBaseQty = Value(initialBaseQty),
        initialQuoteQty = Value(initialQuoteQty),
        currentBaseQty = Value(currentBaseQty),
        currentQuoteQty = Value(currentQuoteQty),
        isRealTrade = Value(isRealTrade),
        isBackTest = Value(isBackTest),
        isArchive = Value(isArchive);
  static Insertable<TbMdStrategy> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? symbol,
    Expression<double>? stopLossPercent,
    Expression<double>? takeProfitPercent,
    Expression<double>? initialBaseQty,
    Expression<double>? initialQuoteQty,
    Expression<double>? currentBaseQty,
    Expression<double>? currentQuoteQty,
    Expression<bool>? isRealTrade,
    Expression<bool>? isBackTest,
    Expression<bool>? isArchive,
    Expression<int?>? startDate,
    Expression<int?>? endDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (symbol != null) 'symbol': symbol,
      if (stopLossPercent != null) 'stop_loss_percent': stopLossPercent,
      if (takeProfitPercent != null) 'take_profit_percent': takeProfitPercent,
      if (initialBaseQty != null) 'initial_base_qty': initialBaseQty,
      if (initialQuoteQty != null) 'initial_quote_qty': initialQuoteQty,
      if (currentBaseQty != null) 'current_base_qty': currentBaseQty,
      if (currentQuoteQty != null) 'current_quote_qty': currentQuoteQty,
      if (isRealTrade != null) 'is_real_trade': isRealTrade,
      if (isBackTest != null) 'is_back_test': isBackTest,
      if (isArchive != null) 'is_archive': isArchive,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
    });
  }

  TbMdStrategiesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? symbol,
      Value<double>? stopLossPercent,
      Value<double>? takeProfitPercent,
      Value<double>? initialBaseQty,
      Value<double>? initialQuoteQty,
      Value<double>? currentBaseQty,
      Value<double>? currentQuoteQty,
      Value<bool>? isRealTrade,
      Value<bool>? isBackTest,
      Value<bool>? isArchive,
      Value<int?>? startDate,
      Value<int?>? endDate}) {
    return TbMdStrategiesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      stopLossPercent: stopLossPercent ?? this.stopLossPercent,
      takeProfitPercent: takeProfitPercent ?? this.takeProfitPercent,
      initialBaseQty: initialBaseQty ?? this.initialBaseQty,
      initialQuoteQty: initialQuoteQty ?? this.initialQuoteQty,
      currentBaseQty: currentBaseQty ?? this.currentBaseQty,
      currentQuoteQty: currentQuoteQty ?? this.currentQuoteQty,
      isRealTrade: isRealTrade ?? this.isRealTrade,
      isBackTest: isBackTest ?? this.isBackTest,
      isArchive: isArchive ?? this.isArchive,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (stopLossPercent.present) {
      map['stop_loss_percent'] = Variable<double>(stopLossPercent.value);
    }
    if (takeProfitPercent.present) {
      map['take_profit_percent'] = Variable<double>(takeProfitPercent.value);
    }
    if (initialBaseQty.present) {
      map['initial_base_qty'] = Variable<double>(initialBaseQty.value);
    }
    if (initialQuoteQty.present) {
      map['initial_quote_qty'] = Variable<double>(initialQuoteQty.value);
    }
    if (currentBaseQty.present) {
      map['current_base_qty'] = Variable<double>(currentBaseQty.value);
    }
    if (currentQuoteQty.present) {
      map['current_quote_qty'] = Variable<double>(currentQuoteQty.value);
    }
    if (isRealTrade.present) {
      map['is_real_trade'] = Variable<bool>(isRealTrade.value);
    }
    if (isBackTest.present) {
      map['is_back_test'] = Variable<bool>(isBackTest.value);
    }
    if (isArchive.present) {
      map['is_archive'] = Variable<bool>(isArchive.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<int?>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<int?>(endDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbMdStrategiesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('stopLossPercent: $stopLossPercent, ')
          ..write('takeProfitPercent: $takeProfitPercent, ')
          ..write('initialBaseQty: $initialBaseQty, ')
          ..write('initialQuoteQty: $initialQuoteQty, ')
          ..write('currentBaseQty: $currentBaseQty, ')
          ..write('currentQuoteQty: $currentQuoteQty, ')
          ..write('isRealTrade: $isRealTrade, ')
          ..write('isBackTest: $isBackTest, ')
          ..write('isArchive: $isArchive, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate')
          ..write(')'))
        .toString();
  }
}

class $TbMdStrategiesTable extends TbMdStrategies
    with TableInfo<$TbMdStrategiesTable, TbMdStrategy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbMdStrategiesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _stopLossPercentMeta =
      const VerificationMeta('stopLossPercent');
  @override
  late final GeneratedColumn<double?> stopLossPercent =
      GeneratedColumn<double?>('stop_loss_percent', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _takeProfitPercentMeta =
      const VerificationMeta('takeProfitPercent');
  @override
  late final GeneratedColumn<double?> takeProfitPercent =
      GeneratedColumn<double?>('take_profit_percent', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _initialBaseQtyMeta =
      const VerificationMeta('initialBaseQty');
  @override
  late final GeneratedColumn<double?> initialBaseQty = GeneratedColumn<double?>(
      'initial_base_qty', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _initialQuoteQtyMeta =
      const VerificationMeta('initialQuoteQty');
  @override
  late final GeneratedColumn<double?> initialQuoteQty =
      GeneratedColumn<double?>('initial_quote_qty', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _currentBaseQtyMeta =
      const VerificationMeta('currentBaseQty');
  @override
  late final GeneratedColumn<double?> currentBaseQty = GeneratedColumn<double?>(
      'current_base_qty', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _currentQuoteQtyMeta =
      const VerificationMeta('currentQuoteQty');
  @override
  late final GeneratedColumn<double?> currentQuoteQty =
      GeneratedColumn<double?>('current_quote_qty', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _isRealTradeMeta =
      const VerificationMeta('isRealTrade');
  @override
  late final GeneratedColumn<bool?> isRealTrade = GeneratedColumn<bool?>(
      'is_real_trade', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_real_trade IN (0, 1))');
  final VerificationMeta _isBackTestMeta = const VerificationMeta('isBackTest');
  @override
  late final GeneratedColumn<bool?> isBackTest = GeneratedColumn<bool?>(
      'is_back_test', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_back_test IN (0, 1))');
  final VerificationMeta _isArchiveMeta = const VerificationMeta('isArchive');
  @override
  late final GeneratedColumn<bool?> isArchive = GeneratedColumn<bool?>(
      'is_archive', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_archive IN (0, 1))');
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<int?> startDate = GeneratedColumn<int?>(
      'start_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<int?> endDate = GeneratedColumn<int?>(
      'end_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        symbol,
        stopLossPercent,
        takeProfitPercent,
        initialBaseQty,
        initialQuoteQty,
        currentBaseQty,
        currentQuoteQty,
        isRealTrade,
        isBackTest,
        isArchive,
        startDate,
        endDate
      ];
  @override
  String get aliasedName => _alias ?? 'tb_md_strategies';
  @override
  String get actualTableName => 'tb_md_strategies';
  @override
  VerificationContext validateIntegrity(Insertable<TbMdStrategy> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('stop_loss_percent')) {
      context.handle(
          _stopLossPercentMeta,
          stopLossPercent.isAcceptableOrUnknown(
              data['stop_loss_percent']!, _stopLossPercentMeta));
    } else if (isInserting) {
      context.missing(_stopLossPercentMeta);
    }
    if (data.containsKey('take_profit_percent')) {
      context.handle(
          _takeProfitPercentMeta,
          takeProfitPercent.isAcceptableOrUnknown(
              data['take_profit_percent']!, _takeProfitPercentMeta));
    } else if (isInserting) {
      context.missing(_takeProfitPercentMeta);
    }
    if (data.containsKey('initial_base_qty')) {
      context.handle(
          _initialBaseQtyMeta,
          initialBaseQty.isAcceptableOrUnknown(
              data['initial_base_qty']!, _initialBaseQtyMeta));
    } else if (isInserting) {
      context.missing(_initialBaseQtyMeta);
    }
    if (data.containsKey('initial_quote_qty')) {
      context.handle(
          _initialQuoteQtyMeta,
          initialQuoteQty.isAcceptableOrUnknown(
              data['initial_quote_qty']!, _initialQuoteQtyMeta));
    } else if (isInserting) {
      context.missing(_initialQuoteQtyMeta);
    }
    if (data.containsKey('current_base_qty')) {
      context.handle(
          _currentBaseQtyMeta,
          currentBaseQty.isAcceptableOrUnknown(
              data['current_base_qty']!, _currentBaseQtyMeta));
    } else if (isInserting) {
      context.missing(_currentBaseQtyMeta);
    }
    if (data.containsKey('current_quote_qty')) {
      context.handle(
          _currentQuoteQtyMeta,
          currentQuoteQty.isAcceptableOrUnknown(
              data['current_quote_qty']!, _currentQuoteQtyMeta));
    } else if (isInserting) {
      context.missing(_currentQuoteQtyMeta);
    }
    if (data.containsKey('is_real_trade')) {
      context.handle(
          _isRealTradeMeta,
          isRealTrade.isAcceptableOrUnknown(
              data['is_real_trade']!, _isRealTradeMeta));
    } else if (isInserting) {
      context.missing(_isRealTradeMeta);
    }
    if (data.containsKey('is_back_test')) {
      context.handle(
          _isBackTestMeta,
          isBackTest.isAcceptableOrUnknown(
              data['is_back_test']!, _isBackTestMeta));
    } else if (isInserting) {
      context.missing(_isBackTestMeta);
    }
    if (data.containsKey('is_archive')) {
      context.handle(_isArchiveMeta,
          isArchive.isAcceptableOrUnknown(data['is_archive']!, _isArchiveMeta));
    } else if (isInserting) {
      context.missing(_isArchiveMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbMdStrategy map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TbMdStrategy.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TbMdStrategiesTable createAlias(String alias) {
    return $TbMdStrategiesTable(attachedDatabase, alias);
  }
}

class TbMdKline extends DataClass implements Insertable<TbMdKline> {
  final int id;
  final String symbol;
  final String interval;
  final int openTime;
  final int closeTime;
  final double openPrice;
  final double closePrice;
  final double highPrice;
  final double lowPrice;
  final double baseAssetVolume;
  final double quoteAssetVolume;
  final int numberOfTrades;
  final double takerBaseBuyVolume;
  final double takerQuoteBuyVolume;
  final double ignore;
  final int tbMdHistoricalId;
  TbMdKline(
      {required this.id,
      required this.symbol,
      required this.interval,
      required this.openTime,
      required this.closeTime,
      required this.openPrice,
      required this.closePrice,
      required this.highPrice,
      required this.lowPrice,
      required this.baseAssetVolume,
      required this.quoteAssetVolume,
      required this.numberOfTrades,
      required this.takerBaseBuyVolume,
      required this.takerQuoteBuyVolume,
      required this.ignore,
      required this.tbMdHistoricalId});
  factory TbMdKline.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TbMdKline(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      interval: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}interval'])!,
      openTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}open_time'])!,
      closeTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}close_time'])!,
      openPrice: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}open_price'])!,
      closePrice: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}close_price'])!,
      highPrice: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}high_price'])!,
      lowPrice: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}low_price'])!,
      baseAssetVolume: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}base_asset_volume'])!,
      quoteAssetVolume: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}quote_asset_volume'])!,
      numberOfTrades: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number_of_trades'])!,
      takerBaseBuyVolume: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}taker_base_buy_volume'])!,
      takerQuoteBuyVolume: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}taker_quote_buy_volume'])!,
      ignore: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ignore'])!,
      tbMdHistoricalId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}tb_md_historical_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['interval'] = Variable<String>(interval);
    map['open_time'] = Variable<int>(openTime);
    map['close_time'] = Variable<int>(closeTime);
    map['open_price'] = Variable<double>(openPrice);
    map['close_price'] = Variable<double>(closePrice);
    map['high_price'] = Variable<double>(highPrice);
    map['low_price'] = Variable<double>(lowPrice);
    map['base_asset_volume'] = Variable<double>(baseAssetVolume);
    map['quote_asset_volume'] = Variable<double>(quoteAssetVolume);
    map['number_of_trades'] = Variable<int>(numberOfTrades);
    map['taker_base_buy_volume'] = Variable<double>(takerBaseBuyVolume);
    map['taker_quote_buy_volume'] = Variable<double>(takerQuoteBuyVolume);
    map['ignore'] = Variable<double>(ignore);
    map['tb_md_historical_id'] = Variable<int>(tbMdHistoricalId);
    return map;
  }

  TbMdKlinesCompanion toCompanion(bool nullToAbsent) {
    return TbMdKlinesCompanion(
      id: Value(id),
      symbol: Value(symbol),
      interval: Value(interval),
      openTime: Value(openTime),
      closeTime: Value(closeTime),
      openPrice: Value(openPrice),
      closePrice: Value(closePrice),
      highPrice: Value(highPrice),
      lowPrice: Value(lowPrice),
      baseAssetVolume: Value(baseAssetVolume),
      quoteAssetVolume: Value(quoteAssetVolume),
      numberOfTrades: Value(numberOfTrades),
      takerBaseBuyVolume: Value(takerBaseBuyVolume),
      takerQuoteBuyVolume: Value(takerQuoteBuyVolume),
      ignore: Value(ignore),
      tbMdHistoricalId: Value(tbMdHistoricalId),
    );
  }

  factory TbMdKline.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbMdKline(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      interval: serializer.fromJson<String>(json['interval']),
      openTime: serializer.fromJson<int>(json['openTime']),
      closeTime: serializer.fromJson<int>(json['closeTime']),
      openPrice: serializer.fromJson<double>(json['openPrice']),
      closePrice: serializer.fromJson<double>(json['closePrice']),
      highPrice: serializer.fromJson<double>(json['highPrice']),
      lowPrice: serializer.fromJson<double>(json['lowPrice']),
      baseAssetVolume: serializer.fromJson<double>(json['baseAssetVolume']),
      quoteAssetVolume: serializer.fromJson<double>(json['quoteAssetVolume']),
      numberOfTrades: serializer.fromJson<int>(json['numberOfTrades']),
      takerBaseBuyVolume:
          serializer.fromJson<double>(json['takerBaseBuyVolume']),
      takerQuoteBuyVolume:
          serializer.fromJson<double>(json['takerQuoteBuyVolume']),
      ignore: serializer.fromJson<double>(json['ignore']),
      tbMdHistoricalId: serializer.fromJson<int>(json['tbMdHistoricalId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'interval': serializer.toJson<String>(interval),
      'openTime': serializer.toJson<int>(openTime),
      'closeTime': serializer.toJson<int>(closeTime),
      'openPrice': serializer.toJson<double>(openPrice),
      'closePrice': serializer.toJson<double>(closePrice),
      'highPrice': serializer.toJson<double>(highPrice),
      'lowPrice': serializer.toJson<double>(lowPrice),
      'baseAssetVolume': serializer.toJson<double>(baseAssetVolume),
      'quoteAssetVolume': serializer.toJson<double>(quoteAssetVolume),
      'numberOfTrades': serializer.toJson<int>(numberOfTrades),
      'takerBaseBuyVolume': serializer.toJson<double>(takerBaseBuyVolume),
      'takerQuoteBuyVolume': serializer.toJson<double>(takerQuoteBuyVolume),
      'ignore': serializer.toJson<double>(ignore),
      'tbMdHistoricalId': serializer.toJson<int>(tbMdHistoricalId),
    };
  }

  TbMdKline copyWith(
          {int? id,
          String? symbol,
          String? interval,
          int? openTime,
          int? closeTime,
          double? openPrice,
          double? closePrice,
          double? highPrice,
          double? lowPrice,
          double? baseAssetVolume,
          double? quoteAssetVolume,
          int? numberOfTrades,
          double? takerBaseBuyVolume,
          double? takerQuoteBuyVolume,
          double? ignore,
          int? tbMdHistoricalId}) =>
      TbMdKline(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        interval: interval ?? this.interval,
        openTime: openTime ?? this.openTime,
        closeTime: closeTime ?? this.closeTime,
        openPrice: openPrice ?? this.openPrice,
        closePrice: closePrice ?? this.closePrice,
        highPrice: highPrice ?? this.highPrice,
        lowPrice: lowPrice ?? this.lowPrice,
        baseAssetVolume: baseAssetVolume ?? this.baseAssetVolume,
        quoteAssetVolume: quoteAssetVolume ?? this.quoteAssetVolume,
        numberOfTrades: numberOfTrades ?? this.numberOfTrades,
        takerBaseBuyVolume: takerBaseBuyVolume ?? this.takerBaseBuyVolume,
        takerQuoteBuyVolume: takerQuoteBuyVolume ?? this.takerQuoteBuyVolume,
        ignore: ignore ?? this.ignore,
        tbMdHistoricalId: tbMdHistoricalId ?? this.tbMdHistoricalId,
      );
  @override
  String toString() {
    return (StringBuffer('TbMdKline(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('interval: $interval, ')
          ..write('openTime: $openTime, ')
          ..write('closeTime: $closeTime, ')
          ..write('openPrice: $openPrice, ')
          ..write('closePrice: $closePrice, ')
          ..write('highPrice: $highPrice, ')
          ..write('lowPrice: $lowPrice, ')
          ..write('baseAssetVolume: $baseAssetVolume, ')
          ..write('quoteAssetVolume: $quoteAssetVolume, ')
          ..write('numberOfTrades: $numberOfTrades, ')
          ..write('takerBaseBuyVolume: $takerBaseBuyVolume, ')
          ..write('takerQuoteBuyVolume: $takerQuoteBuyVolume, ')
          ..write('ignore: $ignore, ')
          ..write('tbMdHistoricalId: $tbMdHistoricalId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      symbol,
      interval,
      openTime,
      closeTime,
      openPrice,
      closePrice,
      highPrice,
      lowPrice,
      baseAssetVolume,
      quoteAssetVolume,
      numberOfTrades,
      takerBaseBuyVolume,
      takerQuoteBuyVolume,
      ignore,
      tbMdHistoricalId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbMdKline &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.interval == this.interval &&
          other.openTime == this.openTime &&
          other.closeTime == this.closeTime &&
          other.openPrice == this.openPrice &&
          other.closePrice == this.closePrice &&
          other.highPrice == this.highPrice &&
          other.lowPrice == this.lowPrice &&
          other.baseAssetVolume == this.baseAssetVolume &&
          other.quoteAssetVolume == this.quoteAssetVolume &&
          other.numberOfTrades == this.numberOfTrades &&
          other.takerBaseBuyVolume == this.takerBaseBuyVolume &&
          other.takerQuoteBuyVolume == this.takerQuoteBuyVolume &&
          other.ignore == this.ignore &&
          other.tbMdHistoricalId == this.tbMdHistoricalId);
}

class TbMdKlinesCompanion extends UpdateCompanion<TbMdKline> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> interval;
  final Value<int> openTime;
  final Value<int> closeTime;
  final Value<double> openPrice;
  final Value<double> closePrice;
  final Value<double> highPrice;
  final Value<double> lowPrice;
  final Value<double> baseAssetVolume;
  final Value<double> quoteAssetVolume;
  final Value<int> numberOfTrades;
  final Value<double> takerBaseBuyVolume;
  final Value<double> takerQuoteBuyVolume;
  final Value<double> ignore;
  final Value<int> tbMdHistoricalId;
  const TbMdKlinesCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.interval = const Value.absent(),
    this.openTime = const Value.absent(),
    this.closeTime = const Value.absent(),
    this.openPrice = const Value.absent(),
    this.closePrice = const Value.absent(),
    this.highPrice = const Value.absent(),
    this.lowPrice = const Value.absent(),
    this.baseAssetVolume = const Value.absent(),
    this.quoteAssetVolume = const Value.absent(),
    this.numberOfTrades = const Value.absent(),
    this.takerBaseBuyVolume = const Value.absent(),
    this.takerQuoteBuyVolume = const Value.absent(),
    this.ignore = const Value.absent(),
    this.tbMdHistoricalId = const Value.absent(),
  });
  TbMdKlinesCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String interval,
    required int openTime,
    required int closeTime,
    required double openPrice,
    required double closePrice,
    required double highPrice,
    required double lowPrice,
    required double baseAssetVolume,
    required double quoteAssetVolume,
    required int numberOfTrades,
    required double takerBaseBuyVolume,
    required double takerQuoteBuyVolume,
    required double ignore,
    required int tbMdHistoricalId,
  })  : symbol = Value(symbol),
        interval = Value(interval),
        openTime = Value(openTime),
        closeTime = Value(closeTime),
        openPrice = Value(openPrice),
        closePrice = Value(closePrice),
        highPrice = Value(highPrice),
        lowPrice = Value(lowPrice),
        baseAssetVolume = Value(baseAssetVolume),
        quoteAssetVolume = Value(quoteAssetVolume),
        numberOfTrades = Value(numberOfTrades),
        takerBaseBuyVolume = Value(takerBaseBuyVolume),
        takerQuoteBuyVolume = Value(takerQuoteBuyVolume),
        ignore = Value(ignore),
        tbMdHistoricalId = Value(tbMdHistoricalId);
  static Insertable<TbMdKline> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<String>? interval,
    Expression<int>? openTime,
    Expression<int>? closeTime,
    Expression<double>? openPrice,
    Expression<double>? closePrice,
    Expression<double>? highPrice,
    Expression<double>? lowPrice,
    Expression<double>? baseAssetVolume,
    Expression<double>? quoteAssetVolume,
    Expression<int>? numberOfTrades,
    Expression<double>? takerBaseBuyVolume,
    Expression<double>? takerQuoteBuyVolume,
    Expression<double>? ignore,
    Expression<int>? tbMdHistoricalId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (interval != null) 'interval': interval,
      if (openTime != null) 'open_time': openTime,
      if (closeTime != null) 'close_time': closeTime,
      if (openPrice != null) 'open_price': openPrice,
      if (closePrice != null) 'close_price': closePrice,
      if (highPrice != null) 'high_price': highPrice,
      if (lowPrice != null) 'low_price': lowPrice,
      if (baseAssetVolume != null) 'base_asset_volume': baseAssetVolume,
      if (quoteAssetVolume != null) 'quote_asset_volume': quoteAssetVolume,
      if (numberOfTrades != null) 'number_of_trades': numberOfTrades,
      if (takerBaseBuyVolume != null)
        'taker_base_buy_volume': takerBaseBuyVolume,
      if (takerQuoteBuyVolume != null)
        'taker_quote_buy_volume': takerQuoteBuyVolume,
      if (ignore != null) 'ignore': ignore,
      if (tbMdHistoricalId != null) 'tb_md_historical_id': tbMdHistoricalId,
    });
  }

  TbMdKlinesCompanion copyWith(
      {Value<int>? id,
      Value<String>? symbol,
      Value<String>? interval,
      Value<int>? openTime,
      Value<int>? closeTime,
      Value<double>? openPrice,
      Value<double>? closePrice,
      Value<double>? highPrice,
      Value<double>? lowPrice,
      Value<double>? baseAssetVolume,
      Value<double>? quoteAssetVolume,
      Value<int>? numberOfTrades,
      Value<double>? takerBaseBuyVolume,
      Value<double>? takerQuoteBuyVolume,
      Value<double>? ignore,
      Value<int>? tbMdHistoricalId}) {
    return TbMdKlinesCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      interval: interval ?? this.interval,
      openTime: openTime ?? this.openTime,
      closeTime: closeTime ?? this.closeTime,
      openPrice: openPrice ?? this.openPrice,
      closePrice: closePrice ?? this.closePrice,
      highPrice: highPrice ?? this.highPrice,
      lowPrice: lowPrice ?? this.lowPrice,
      baseAssetVolume: baseAssetVolume ?? this.baseAssetVolume,
      quoteAssetVolume: quoteAssetVolume ?? this.quoteAssetVolume,
      numberOfTrades: numberOfTrades ?? this.numberOfTrades,
      takerBaseBuyVolume: takerBaseBuyVolume ?? this.takerBaseBuyVolume,
      takerQuoteBuyVolume: takerQuoteBuyVolume ?? this.takerQuoteBuyVolume,
      ignore: ignore ?? this.ignore,
      tbMdHistoricalId: tbMdHistoricalId ?? this.tbMdHistoricalId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (interval.present) {
      map['interval'] = Variable<String>(interval.value);
    }
    if (openTime.present) {
      map['open_time'] = Variable<int>(openTime.value);
    }
    if (closeTime.present) {
      map['close_time'] = Variable<int>(closeTime.value);
    }
    if (openPrice.present) {
      map['open_price'] = Variable<double>(openPrice.value);
    }
    if (closePrice.present) {
      map['close_price'] = Variable<double>(closePrice.value);
    }
    if (highPrice.present) {
      map['high_price'] = Variable<double>(highPrice.value);
    }
    if (lowPrice.present) {
      map['low_price'] = Variable<double>(lowPrice.value);
    }
    if (baseAssetVolume.present) {
      map['base_asset_volume'] = Variable<double>(baseAssetVolume.value);
    }
    if (quoteAssetVolume.present) {
      map['quote_asset_volume'] = Variable<double>(quoteAssetVolume.value);
    }
    if (numberOfTrades.present) {
      map['number_of_trades'] = Variable<int>(numberOfTrades.value);
    }
    if (takerBaseBuyVolume.present) {
      map['taker_base_buy_volume'] = Variable<double>(takerBaseBuyVolume.value);
    }
    if (takerQuoteBuyVolume.present) {
      map['taker_quote_buy_volume'] =
          Variable<double>(takerQuoteBuyVolume.value);
    }
    if (ignore.present) {
      map['ignore'] = Variable<double>(ignore.value);
    }
    if (tbMdHistoricalId.present) {
      map['tb_md_historical_id'] = Variable<int>(tbMdHistoricalId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbMdKlinesCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('interval: $interval, ')
          ..write('openTime: $openTime, ')
          ..write('closeTime: $closeTime, ')
          ..write('openPrice: $openPrice, ')
          ..write('closePrice: $closePrice, ')
          ..write('highPrice: $highPrice, ')
          ..write('lowPrice: $lowPrice, ')
          ..write('baseAssetVolume: $baseAssetVolume, ')
          ..write('quoteAssetVolume: $quoteAssetVolume, ')
          ..write('numberOfTrades: $numberOfTrades, ')
          ..write('takerBaseBuyVolume: $takerBaseBuyVolume, ')
          ..write('takerQuoteBuyVolume: $takerQuoteBuyVolume, ')
          ..write('ignore: $ignore, ')
          ..write('tbMdHistoricalId: $tbMdHistoricalId')
          ..write(')'))
        .toString();
  }
}

class $TbMdKlinesTable extends TbMdKlines
    with TableInfo<$TbMdKlinesTable, TbMdKline> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbMdKlinesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _intervalMeta = const VerificationMeta('interval');
  @override
  late final GeneratedColumn<String?> interval = GeneratedColumn<String?>(
      'interval', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _openTimeMeta = const VerificationMeta('openTime');
  @override
  late final GeneratedColumn<int?> openTime = GeneratedColumn<int?>(
      'open_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _closeTimeMeta = const VerificationMeta('closeTime');
  @override
  late final GeneratedColumn<int?> closeTime = GeneratedColumn<int?>(
      'close_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _openPriceMeta = const VerificationMeta('openPrice');
  @override
  late final GeneratedColumn<double?> openPrice = GeneratedColumn<double?>(
      'open_price', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _closePriceMeta = const VerificationMeta('closePrice');
  @override
  late final GeneratedColumn<double?> closePrice = GeneratedColumn<double?>(
      'close_price', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _highPriceMeta = const VerificationMeta('highPrice');
  @override
  late final GeneratedColumn<double?> highPrice = GeneratedColumn<double?>(
      'high_price', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _lowPriceMeta = const VerificationMeta('lowPrice');
  @override
  late final GeneratedColumn<double?> lowPrice = GeneratedColumn<double?>(
      'low_price', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _baseAssetVolumeMeta =
      const VerificationMeta('baseAssetVolume');
  @override
  late final GeneratedColumn<double?> baseAssetVolume =
      GeneratedColumn<double?>('base_asset_volume', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _quoteAssetVolumeMeta =
      const VerificationMeta('quoteAssetVolume');
  @override
  late final GeneratedColumn<double?> quoteAssetVolume =
      GeneratedColumn<double?>('quote_asset_volume', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _numberOfTradesMeta =
      const VerificationMeta('numberOfTrades');
  @override
  late final GeneratedColumn<int?> numberOfTrades = GeneratedColumn<int?>(
      'number_of_trades', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _takerBaseBuyVolumeMeta =
      const VerificationMeta('takerBaseBuyVolume');
  @override
  late final GeneratedColumn<double?> takerBaseBuyVolume =
      GeneratedColumn<double?>('taker_base_buy_volume', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _takerQuoteBuyVolumeMeta =
      const VerificationMeta('takerQuoteBuyVolume');
  @override
  late final GeneratedColumn<double?> takerQuoteBuyVolume =
      GeneratedColumn<double?>('taker_quote_buy_volume', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _ignoreMeta = const VerificationMeta('ignore');
  @override
  late final GeneratedColumn<double?> ignore = GeneratedColumn<double?>(
      'ignore', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _tbMdHistoricalIdMeta =
      const VerificationMeta('tbMdHistoricalId');
  @override
  late final GeneratedColumn<int?> tbMdHistoricalId = GeneratedColumn<int?>(
      'tb_md_historical_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        symbol,
        interval,
        openTime,
        closeTime,
        openPrice,
        closePrice,
        highPrice,
        lowPrice,
        baseAssetVolume,
        quoteAssetVolume,
        numberOfTrades,
        takerBaseBuyVolume,
        takerQuoteBuyVolume,
        ignore,
        tbMdHistoricalId
      ];
  @override
  String get aliasedName => _alias ?? 'tb_md_klines';
  @override
  String get actualTableName => 'tb_md_klines';
  @override
  VerificationContext validateIntegrity(Insertable<TbMdKline> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('interval')) {
      context.handle(_intervalMeta,
          interval.isAcceptableOrUnknown(data['interval']!, _intervalMeta));
    } else if (isInserting) {
      context.missing(_intervalMeta);
    }
    if (data.containsKey('open_time')) {
      context.handle(_openTimeMeta,
          openTime.isAcceptableOrUnknown(data['open_time']!, _openTimeMeta));
    } else if (isInserting) {
      context.missing(_openTimeMeta);
    }
    if (data.containsKey('close_time')) {
      context.handle(_closeTimeMeta,
          closeTime.isAcceptableOrUnknown(data['close_time']!, _closeTimeMeta));
    } else if (isInserting) {
      context.missing(_closeTimeMeta);
    }
    if (data.containsKey('open_price')) {
      context.handle(_openPriceMeta,
          openPrice.isAcceptableOrUnknown(data['open_price']!, _openPriceMeta));
    } else if (isInserting) {
      context.missing(_openPriceMeta);
    }
    if (data.containsKey('close_price')) {
      context.handle(
          _closePriceMeta,
          closePrice.isAcceptableOrUnknown(
              data['close_price']!, _closePriceMeta));
    } else if (isInserting) {
      context.missing(_closePriceMeta);
    }
    if (data.containsKey('high_price')) {
      context.handle(_highPriceMeta,
          highPrice.isAcceptableOrUnknown(data['high_price']!, _highPriceMeta));
    } else if (isInserting) {
      context.missing(_highPriceMeta);
    }
    if (data.containsKey('low_price')) {
      context.handle(_lowPriceMeta,
          lowPrice.isAcceptableOrUnknown(data['low_price']!, _lowPriceMeta));
    } else if (isInserting) {
      context.missing(_lowPriceMeta);
    }
    if (data.containsKey('base_asset_volume')) {
      context.handle(
          _baseAssetVolumeMeta,
          baseAssetVolume.isAcceptableOrUnknown(
              data['base_asset_volume']!, _baseAssetVolumeMeta));
    } else if (isInserting) {
      context.missing(_baseAssetVolumeMeta);
    }
    if (data.containsKey('quote_asset_volume')) {
      context.handle(
          _quoteAssetVolumeMeta,
          quoteAssetVolume.isAcceptableOrUnknown(
              data['quote_asset_volume']!, _quoteAssetVolumeMeta));
    } else if (isInserting) {
      context.missing(_quoteAssetVolumeMeta);
    }
    if (data.containsKey('number_of_trades')) {
      context.handle(
          _numberOfTradesMeta,
          numberOfTrades.isAcceptableOrUnknown(
              data['number_of_trades']!, _numberOfTradesMeta));
    } else if (isInserting) {
      context.missing(_numberOfTradesMeta);
    }
    if (data.containsKey('taker_base_buy_volume')) {
      context.handle(
          _takerBaseBuyVolumeMeta,
          takerBaseBuyVolume.isAcceptableOrUnknown(
              data['taker_base_buy_volume']!, _takerBaseBuyVolumeMeta));
    } else if (isInserting) {
      context.missing(_takerBaseBuyVolumeMeta);
    }
    if (data.containsKey('taker_quote_buy_volume')) {
      context.handle(
          _takerQuoteBuyVolumeMeta,
          takerQuoteBuyVolume.isAcceptableOrUnknown(
              data['taker_quote_buy_volume']!, _takerQuoteBuyVolumeMeta));
    } else if (isInserting) {
      context.missing(_takerQuoteBuyVolumeMeta);
    }
    if (data.containsKey('ignore')) {
      context.handle(_ignoreMeta,
          ignore.isAcceptableOrUnknown(data['ignore']!, _ignoreMeta));
    } else if (isInserting) {
      context.missing(_ignoreMeta);
    }
    if (data.containsKey('tb_md_historical_id')) {
      context.handle(
          _tbMdHistoricalIdMeta,
          tbMdHistoricalId.isAcceptableOrUnknown(
              data['tb_md_historical_id']!, _tbMdHistoricalIdMeta));
    } else if (isInserting) {
      context.missing(_tbMdHistoricalIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbMdKline map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TbMdKline.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TbMdKlinesTable createAlias(String alias) {
    return $TbMdKlinesTable(attachedDatabase, alias);
  }
}

class TbMdHistoricalMdKline extends DataClass
    implements Insertable<TbMdHistoricalMdKline> {
  final int id;
  final String symbol;
  final String interval;
  final String historicalInterval;
  final DateTime date;
  TbMdHistoricalMdKline(
      {required this.id,
      required this.symbol,
      required this.interval,
      required this.historicalInterval,
      required this.date});
  factory TbMdHistoricalMdKline.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TbMdHistoricalMdKline(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      interval: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}interval'])!,
      historicalInterval: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}historical_interval'])!,
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['interval'] = Variable<String>(interval);
    map['historical_interval'] = Variable<String>(historicalInterval);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  TbMdHistoricalMdKlinesCompanion toCompanion(bool nullToAbsent) {
    return TbMdHistoricalMdKlinesCompanion(
      id: Value(id),
      symbol: Value(symbol),
      interval: Value(interval),
      historicalInterval: Value(historicalInterval),
      date: Value(date),
    );
  }

  factory TbMdHistoricalMdKline.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbMdHistoricalMdKline(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      interval: serializer.fromJson<String>(json['interval']),
      historicalInterval:
          serializer.fromJson<String>(json['historicalInterval']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'interval': serializer.toJson<String>(interval),
      'historicalInterval': serializer.toJson<String>(historicalInterval),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  TbMdHistoricalMdKline copyWith(
          {int? id,
          String? symbol,
          String? interval,
          String? historicalInterval,
          DateTime? date}) =>
      TbMdHistoricalMdKline(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        interval: interval ?? this.interval,
        historicalInterval: historicalInterval ?? this.historicalInterval,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('TbMdHistoricalMdKline(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('interval: $interval, ')
          ..write('historicalInterval: $historicalInterval, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, symbol, interval, historicalInterval, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbMdHistoricalMdKline &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.interval == this.interval &&
          other.historicalInterval == this.historicalInterval &&
          other.date == this.date);
}

class TbMdHistoricalMdKlinesCompanion
    extends UpdateCompanion<TbMdHistoricalMdKline> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> interval;
  final Value<String> historicalInterval;
  final Value<DateTime> date;
  const TbMdHistoricalMdKlinesCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.interval = const Value.absent(),
    this.historicalInterval = const Value.absent(),
    this.date = const Value.absent(),
  });
  TbMdHistoricalMdKlinesCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String interval,
    required String historicalInterval,
    required DateTime date,
  })  : symbol = Value(symbol),
        interval = Value(interval),
        historicalInterval = Value(historicalInterval),
        date = Value(date);
  static Insertable<TbMdHistoricalMdKline> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<String>? interval,
    Expression<String>? historicalInterval,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (interval != null) 'interval': interval,
      if (historicalInterval != null) 'historical_interval': historicalInterval,
      if (date != null) 'date': date,
    });
  }

  TbMdHistoricalMdKlinesCompanion copyWith(
      {Value<int>? id,
      Value<String>? symbol,
      Value<String>? interval,
      Value<String>? historicalInterval,
      Value<DateTime>? date}) {
    return TbMdHistoricalMdKlinesCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      interval: interval ?? this.interval,
      historicalInterval: historicalInterval ?? this.historicalInterval,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (interval.present) {
      map['interval'] = Variable<String>(interval.value);
    }
    if (historicalInterval.present) {
      map['historical_interval'] = Variable<String>(historicalInterval.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbMdHistoricalMdKlinesCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('interval: $interval, ')
          ..write('historicalInterval: $historicalInterval, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $TbMdHistoricalMdKlinesTable extends TbMdHistoricalMdKlines
    with TableInfo<$TbMdHistoricalMdKlinesTable, TbMdHistoricalMdKline> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbMdHistoricalMdKlinesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _intervalMeta = const VerificationMeta('interval');
  @override
  late final GeneratedColumn<String?> interval = GeneratedColumn<String?>(
      'interval', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _historicalIntervalMeta =
      const VerificationMeta('historicalInterval');
  @override
  late final GeneratedColumn<String?> historicalInterval =
      GeneratedColumn<String?>('historical_interval', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, symbol, interval, historicalInterval, date];
  @override
  String get aliasedName => _alias ?? 'tb_md_historical_md_klines';
  @override
  String get actualTableName => 'tb_md_historical_md_klines';
  @override
  VerificationContext validateIntegrity(
      Insertable<TbMdHistoricalMdKline> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('interval')) {
      context.handle(_intervalMeta,
          interval.isAcceptableOrUnknown(data['interval']!, _intervalMeta));
    } else if (isInserting) {
      context.missing(_intervalMeta);
    }
    if (data.containsKey('historical_interval')) {
      context.handle(
          _historicalIntervalMeta,
          historicalInterval.isAcceptableOrUnknown(
              data['historical_interval']!, _historicalIntervalMeta));
    } else if (isInserting) {
      context.missing(_historicalIntervalMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbMdHistoricalMdKline map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TbMdHistoricalMdKline.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TbMdHistoricalMdKlinesTable createAlias(String alias) {
    return $TbMdHistoricalMdKlinesTable(attachedDatabase, alias);
  }
}

class TbMdMarketApiKey extends DataClass
    implements Insertable<TbMdMarketApiKey> {
  final int id;
  final String name;
  final String? realPublicApiKey;
  final String? realSecretApiKey;
  final String? testPublicApiKey;
  final String? testSecretApiKey;
  final bool isTest;
  TbMdMarketApiKey(
      {required this.id,
      required this.name,
      this.realPublicApiKey,
      this.realSecretApiKey,
      this.testPublicApiKey,
      this.testSecretApiKey,
      required this.isTest});
  factory TbMdMarketApiKey.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TbMdMarketApiKey(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      realPublicApiKey: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}real_public_api_key']),
      realSecretApiKey: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}real_secret_api_key']),
      testPublicApiKey: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}test_public_api_key']),
      testSecretApiKey: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}test_secret_api_key']),
      isTest: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_test'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || realPublicApiKey != null) {
      map['real_public_api_key'] = Variable<String?>(realPublicApiKey);
    }
    if (!nullToAbsent || realSecretApiKey != null) {
      map['real_secret_api_key'] = Variable<String?>(realSecretApiKey);
    }
    if (!nullToAbsent || testPublicApiKey != null) {
      map['test_public_api_key'] = Variable<String?>(testPublicApiKey);
    }
    if (!nullToAbsent || testSecretApiKey != null) {
      map['test_secret_api_key'] = Variable<String?>(testSecretApiKey);
    }
    map['is_test'] = Variable<bool>(isTest);
    return map;
  }

  TbMdMarketApiKeysCompanion toCompanion(bool nullToAbsent) {
    return TbMdMarketApiKeysCompanion(
      id: Value(id),
      name: Value(name),
      realPublicApiKey: realPublicApiKey == null && nullToAbsent
          ? const Value.absent()
          : Value(realPublicApiKey),
      realSecretApiKey: realSecretApiKey == null && nullToAbsent
          ? const Value.absent()
          : Value(realSecretApiKey),
      testPublicApiKey: testPublicApiKey == null && nullToAbsent
          ? const Value.absent()
          : Value(testPublicApiKey),
      testSecretApiKey: testSecretApiKey == null && nullToAbsent
          ? const Value.absent()
          : Value(testSecretApiKey),
      isTest: Value(isTest),
    );
  }

  factory TbMdMarketApiKey.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbMdMarketApiKey(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      realPublicApiKey: serializer.fromJson<String?>(json['realPublicApiKey']),
      realSecretApiKey: serializer.fromJson<String?>(json['realSecretApiKey']),
      testPublicApiKey: serializer.fromJson<String?>(json['testPublicApiKey']),
      testSecretApiKey: serializer.fromJson<String?>(json['testSecretApiKey']),
      isTest: serializer.fromJson<bool>(json['isTest']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'realPublicApiKey': serializer.toJson<String?>(realPublicApiKey),
      'realSecretApiKey': serializer.toJson<String?>(realSecretApiKey),
      'testPublicApiKey': serializer.toJson<String?>(testPublicApiKey),
      'testSecretApiKey': serializer.toJson<String?>(testSecretApiKey),
      'isTest': serializer.toJson<bool>(isTest),
    };
  }

  TbMdMarketApiKey copyWith(
          {int? id,
          String? name,
          String? realPublicApiKey,
          String? realSecretApiKey,
          String? testPublicApiKey,
          String? testSecretApiKey,
          bool? isTest}) =>
      TbMdMarketApiKey(
        id: id ?? this.id,
        name: name ?? this.name,
        realPublicApiKey: realPublicApiKey ?? this.realPublicApiKey,
        realSecretApiKey: realSecretApiKey ?? this.realSecretApiKey,
        testPublicApiKey: testPublicApiKey ?? this.testPublicApiKey,
        testSecretApiKey: testSecretApiKey ?? this.testSecretApiKey,
        isTest: isTest ?? this.isTest,
      );
  @override
  String toString() {
    return (StringBuffer('TbMdMarketApiKey(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('realPublicApiKey: $realPublicApiKey, ')
          ..write('realSecretApiKey: $realSecretApiKey, ')
          ..write('testPublicApiKey: $testPublicApiKey, ')
          ..write('testSecretApiKey: $testSecretApiKey, ')
          ..write('isTest: $isTest')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, realPublicApiKey, realSecretApiKey,
      testPublicApiKey, testSecretApiKey, isTest);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbMdMarketApiKey &&
          other.id == this.id &&
          other.name == this.name &&
          other.realPublicApiKey == this.realPublicApiKey &&
          other.realSecretApiKey == this.realSecretApiKey &&
          other.testPublicApiKey == this.testPublicApiKey &&
          other.testSecretApiKey == this.testSecretApiKey &&
          other.isTest == this.isTest);
}

class TbMdMarketApiKeysCompanion extends UpdateCompanion<TbMdMarketApiKey> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> realPublicApiKey;
  final Value<String?> realSecretApiKey;
  final Value<String?> testPublicApiKey;
  final Value<String?> testSecretApiKey;
  final Value<bool> isTest;
  const TbMdMarketApiKeysCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.realPublicApiKey = const Value.absent(),
    this.realSecretApiKey = const Value.absent(),
    this.testPublicApiKey = const Value.absent(),
    this.testSecretApiKey = const Value.absent(),
    this.isTest = const Value.absent(),
  });
  TbMdMarketApiKeysCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.realPublicApiKey = const Value.absent(),
    this.realSecretApiKey = const Value.absent(),
    this.testPublicApiKey = const Value.absent(),
    this.testSecretApiKey = const Value.absent(),
    required bool isTest,
  })  : name = Value(name),
        isTest = Value(isTest);
  static Insertable<TbMdMarketApiKey> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String?>? realPublicApiKey,
    Expression<String?>? realSecretApiKey,
    Expression<String?>? testPublicApiKey,
    Expression<String?>? testSecretApiKey,
    Expression<bool>? isTest,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (realPublicApiKey != null) 'real_public_api_key': realPublicApiKey,
      if (realSecretApiKey != null) 'real_secret_api_key': realSecretApiKey,
      if (testPublicApiKey != null) 'test_public_api_key': testPublicApiKey,
      if (testSecretApiKey != null) 'test_secret_api_key': testSecretApiKey,
      if (isTest != null) 'is_test': isTest,
    });
  }

  TbMdMarketApiKeysCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? realPublicApiKey,
      Value<String?>? realSecretApiKey,
      Value<String?>? testPublicApiKey,
      Value<String?>? testSecretApiKey,
      Value<bool>? isTest}) {
    return TbMdMarketApiKeysCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      realPublicApiKey: realPublicApiKey ?? this.realPublicApiKey,
      realSecretApiKey: realSecretApiKey ?? this.realSecretApiKey,
      testPublicApiKey: testPublicApiKey ?? this.testPublicApiKey,
      testSecretApiKey: testSecretApiKey ?? this.testSecretApiKey,
      isTest: isTest ?? this.isTest,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (realPublicApiKey.present) {
      map['real_public_api_key'] = Variable<String?>(realPublicApiKey.value);
    }
    if (realSecretApiKey.present) {
      map['real_secret_api_key'] = Variable<String?>(realSecretApiKey.value);
    }
    if (testPublicApiKey.present) {
      map['test_public_api_key'] = Variable<String?>(testPublicApiKey.value);
    }
    if (testSecretApiKey.present) {
      map['test_secret_api_key'] = Variable<String?>(testSecretApiKey.value);
    }
    if (isTest.present) {
      map['is_test'] = Variable<bool>(isTest.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbMdMarketApiKeysCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('realPublicApiKey: $realPublicApiKey, ')
          ..write('realSecretApiKey: $realSecretApiKey, ')
          ..write('testPublicApiKey: $testPublicApiKey, ')
          ..write('testSecretApiKey: $testSecretApiKey, ')
          ..write('isTest: $isTest')
          ..write(')'))
        .toString();
  }
}

class $TbMdMarketApiKeysTable extends TbMdMarketApiKeys
    with TableInfo<$TbMdMarketApiKeysTable, TbMdMarketApiKey> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbMdMarketApiKeysTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _realPublicApiKeyMeta =
      const VerificationMeta('realPublicApiKey');
  @override
  late final GeneratedColumn<String?> realPublicApiKey =
      GeneratedColumn<String?>('real_public_api_key', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _realSecretApiKeyMeta =
      const VerificationMeta('realSecretApiKey');
  @override
  late final GeneratedColumn<String?> realSecretApiKey =
      GeneratedColumn<String?>('real_secret_api_key', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _testPublicApiKeyMeta =
      const VerificationMeta('testPublicApiKey');
  @override
  late final GeneratedColumn<String?> testPublicApiKey =
      GeneratedColumn<String?>('test_public_api_key', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _testSecretApiKeyMeta =
      const VerificationMeta('testSecretApiKey');
  @override
  late final GeneratedColumn<String?> testSecretApiKey =
      GeneratedColumn<String?>('test_secret_api_key', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isTestMeta = const VerificationMeta('isTest');
  @override
  late final GeneratedColumn<bool?> isTest = GeneratedColumn<bool?>(
      'is_test', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_test IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        realPublicApiKey,
        realSecretApiKey,
        testPublicApiKey,
        testSecretApiKey,
        isTest
      ];
  @override
  String get aliasedName => _alias ?? 'tb_md_market_api_keys';
  @override
  String get actualTableName => 'tb_md_market_api_keys';
  @override
  VerificationContext validateIntegrity(Insertable<TbMdMarketApiKey> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('real_public_api_key')) {
      context.handle(
          _realPublicApiKeyMeta,
          realPublicApiKey.isAcceptableOrUnknown(
              data['real_public_api_key']!, _realPublicApiKeyMeta));
    }
    if (data.containsKey('real_secret_api_key')) {
      context.handle(
          _realSecretApiKeyMeta,
          realSecretApiKey.isAcceptableOrUnknown(
              data['real_secret_api_key']!, _realSecretApiKeyMeta));
    }
    if (data.containsKey('test_public_api_key')) {
      context.handle(
          _testPublicApiKeyMeta,
          testPublicApiKey.isAcceptableOrUnknown(
              data['test_public_api_key']!, _testPublicApiKeyMeta));
    }
    if (data.containsKey('test_secret_api_key')) {
      context.handle(
          _testSecretApiKeyMeta,
          testSecretApiKey.isAcceptableOrUnknown(
              data['test_secret_api_key']!, _testSecretApiKeyMeta));
    }
    if (data.containsKey('is_test')) {
      context.handle(_isTestMeta,
          isTest.isAcceptableOrUnknown(data['is_test']!, _isTestMeta));
    } else if (isInserting) {
      context.missing(_isTestMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbMdMarketApiKey map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TbMdMarketApiKey.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TbMdMarketApiKeysTable createAlias(String alias) {
    return $TbMdMarketApiKeysTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TbMdMyOrdersTable tbMdMyOrders = $TbMdMyOrdersTable(this);
  late final $TbMdRadarsTable tbMdRadars = $TbMdRadarsTable(this);
  late final $TbMdStrategiesTable tbMdStrategies = $TbMdStrategiesTable(this);
  late final $TbMdKlinesTable tbMdKlines = $TbMdKlinesTable(this);
  late final $TbMdHistoricalMdKlinesTable tbMdHistoricalMdKlines =
      $TbMdHistoricalMdKlinesTable(this);
  late final $TbMdMarketApiKeysTable tbMdMarketApiKeys =
      $TbMdMarketApiKeysTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        tbMdMyOrders,
        tbMdRadars,
        tbMdStrategies,
        tbMdKlines,
        tbMdHistoricalMdKlines,
        tbMdMarketApiKeys
      ];
}
