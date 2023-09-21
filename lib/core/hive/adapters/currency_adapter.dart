import 'dart:convert';
import 'package:currencies_graph/data/models/currency_model.dart';
import 'package:currencies_graph/data/models/currency_response.dart';
import 'package:hive/hive.dart';

class CurrencyResponseAdapter extends TypeAdapter<CurrencyResponse> {
  @override
  final int typeId = 0; // Unique ID for your adapter

  @override
  CurrencyResponse read(BinaryReader reader) {
    // Deserialize the object from the binary format

    return CurrencyResponse.fromJson(jsonDecode(reader.readString()));
  }

  @override
  void write(BinaryWriter writer, CurrencyResponse obj) {
    // Serialize the object to the binary format
    writer.writeString(jsonEncode(obj.toJson()));
  }
}

class CurrencyDtoAdapter extends TypeAdapter<CurrencyDto> {
  @override
  final int typeId = 1; // Unique ID for your adapter

  @override
  CurrencyDto read(BinaryReader reader) {
    // Deserialize the object from the binary format

    return CurrencyDto.fromJson(jsonDecode(reader.readString()));
  }

  @override
  void write(BinaryWriter writer, CurrencyDto obj) {
    // Serialize the object to the binary format
    writer.writeString(jsonEncode(obj.toJson()));
  }
}
