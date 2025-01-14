import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class SaveFilePart {
    static const CONSTRUCTOR_ID = 3003426337;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3003426337;
	BigInt fileId;
	int filePart;
	List<int> bytes;


	SaveFilePart({required this.fileId, required this.filePart, required this.bytes});

	static SaveFilePart fromReader(BinaryReader reader) {
	var temp,len;var fileId = reader.readLong();var filePart = reader.readInt();var bytes = reader.tgReadBytes();		return new SaveFilePart(fileId : fileId, filePart : filePart, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3003426337,4),readBufferFromBigInt(this.fileId,8,little:true,signed:true),readBufferFromBigInt(this.filePart,4,little:true,signed:true),serializeBytes(this.bytes),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFile {
    static const CONSTRUCTOR_ID = 2975505148;
    static const SUBCLASS_OF_ID = 1822152488;
    final classType = "request";
    final ID = 2975505148;
	bool precise;
	bool cdnSupported;
	var location;
	int offset;
	int limit;


	GetFile({required this.precise, required this.cdnSupported, required this.location, required this.offset, required this.limit});

	static GetFile fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final precise = false;final cdnSupported = false;var location = reader.tgReadObject();var offset = reader.readInt();var limit = reader.readInt();		return new GetFile(precise : precise, cdnSupported : cdnSupported, location : location, offset : offset, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2975505148,4),[0,0,0,0],(this.location.getBytes() as List<int>),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveBigFilePart {
    static const CONSTRUCTOR_ID = 3732629309;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3732629309;
	BigInt fileId;
	int filePart;
	int fileTotalParts;
	List<int> bytes;


	SaveBigFilePart({required this.fileId, required this.filePart, required this.fileTotalParts, required this.bytes});

	static SaveBigFilePart fromReader(BinaryReader reader) {
	var temp,len;var fileId = reader.readLong();var filePart = reader.readInt();var fileTotalParts = reader.readInt();var bytes = reader.tgReadBytes();		return new SaveBigFilePart(fileId : fileId, filePart : filePart, fileTotalParts : fileTotalParts, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3732629309,4),readBufferFromBigInt(this.fileId,8,little:true,signed:true),readBufferFromBigInt(this.filePart,4,little:true,signed:true),readBufferFromBigInt(this.fileTotalParts,4,little:true,signed:true),serializeBytes(this.bytes),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetWebFile {
    static const CONSTRUCTOR_ID = 619086221;
    static const SUBCLASS_OF_ID = 1760657233;
    final classType = "request";
    final ID = 619086221;
	var location;
	int offset;
	int limit;


	GetWebFile({required this.location, required this.offset, required this.limit});

	static GetWebFile fromReader(BinaryReader reader) {
	var temp,len;var location = reader.tgReadObject();var offset = reader.readInt();var limit = reader.readInt();		return new GetWebFile(location : location, offset : offset, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(619086221,4),(this.location.getBytes() as List<int>),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetCdnFile {
    static const CONSTRUCTOR_ID = 536919235;
    static const SUBCLASS_OF_ID = 4123851048;
    final classType = "request";
    final ID = 536919235;
	List<int> fileToken;
	int offset;
	int limit;


	GetCdnFile({required this.fileToken, required this.offset, required this.limit});

	static GetCdnFile fromReader(BinaryReader reader) {
	var temp,len;var fileToken = reader.tgReadBytes();var offset = reader.readInt();var limit = reader.readInt();		return new GetCdnFile(fileToken : fileToken, offset : offset, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(536919235,4),serializeBytes(this.fileToken),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReuploadCdnFile {
    static const CONSTRUCTOR_ID = 2603046056;
    static const SUBCLASS_OF_ID = 2777941798;
    final classType = "request";
    final ID = 2603046056;
	List<int> fileToken;
	List<int> requestToken;


	ReuploadCdnFile({required this.fileToken, required this.requestToken});

	static ReuploadCdnFile fromReader(BinaryReader reader) {
	var temp,len;var fileToken = reader.tgReadBytes();var requestToken = reader.tgReadBytes();		return new ReuploadCdnFile(fileToken : fileToken, requestToken : requestToken);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2603046056,4),serializeBytes(this.fileToken),serializeBytes(this.requestToken),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetCdnFileHashes {
    static const CONSTRUCTOR_ID = 1302676017;
    static const SUBCLASS_OF_ID = 2777941798;
    final classType = "request";
    final ID = 1302676017;
	List<int> fileToken;
	int offset;


	GetCdnFileHashes({required this.fileToken, required this.offset});

	static GetCdnFileHashes fromReader(BinaryReader reader) {
	var temp,len;var fileToken = reader.tgReadBytes();var offset = reader.readInt();		return new GetCdnFileHashes(fileToken : fileToken, offset : offset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1302676017,4),serializeBytes(this.fileToken),readBufferFromBigInt(this.offset,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFileHashes {
    static const CONSTRUCTOR_ID = 3338819889;
    static const SUBCLASS_OF_ID = 2777941798;
    final classType = "request";
    final ID = 3338819889;
	var location;
	int offset;


	GetFileHashes({required this.location, required this.offset});

	static GetFileHashes fromReader(BinaryReader reader) {
	var temp,len;var location = reader.tgReadObject();var offset = reader.readInt();		return new GetFileHashes(location : location, offset : offset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3338819889,4),(this.location.getBytes() as List<int>),readBufferFromBigInt(this.offset,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}