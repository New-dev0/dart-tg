import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetCallConfig {
    static const CONSTRUCTOR_ID = 1430593449;
    static const SUBCLASS_OF_ID = 2902676200;
    final classType = "request";
    final ID = 1430593449;


	GetCallConfig();

	static GetCallConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetCallConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1430593449,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RequestCall {
    static const CONSTRUCTOR_ID = 1124046573;
    static const SUBCLASS_OF_ID = 3565878863;
    final classType = "request";
    final ID = 1124046573;
	bool video;
	var userId;
	int randomId;
	List<int> gAHash;
	var protocol;


	RequestCall({required this.video, required this.userId, required this.randomId, required this.gAHash, required this.protocol});

	static RequestCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var userId = reader.tgReadObject();var randomId = reader.readInt();var gAHash = reader.tgReadBytes();var protocol = reader.tgReadObject();		return new RequestCall(video : video, userId : userId, randomId : randomId, gAHash : gAHash, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1124046573,4),[0,0,0,0],(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.randomId,4,little:true,signed:true),serializeBytes(this.gAHash),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AcceptCall {
    static const CONSTRUCTOR_ID = 1003664544;
    static const SUBCLASS_OF_ID = 3565878863;
    final classType = "request";
    final ID = 1003664544;
	var peer;
	List<int> gB;
	var protocol;


	AcceptCall({required this.peer, required this.gB, required this.protocol});

	static AcceptCall fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var gB = reader.tgReadBytes();var protocol = reader.tgReadObject();		return new AcceptCall(peer : peer, gB : gB, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1003664544,4),(this.peer.getBytes() as List<int>),serializeBytes(this.gB),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ConfirmCall {
    static const CONSTRUCTOR_ID = 788404002;
    static const SUBCLASS_OF_ID = 3565878863;
    final classType = "request";
    final ID = 788404002;
	var peer;
	List<int> gA;
	BigInt keyFingerprint;
	var protocol;


	ConfirmCall({required this.peer, required this.gA, required this.keyFingerprint, required this.protocol});

	static ConfirmCall fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var gA = reader.tgReadBytes();var keyFingerprint = reader.readLong();var protocol = reader.tgReadObject();		return new ConfirmCall(peer : peer, gA : gA, keyFingerprint : keyFingerprint, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(788404002,4),(this.peer.getBytes() as List<int>),serializeBytes(this.gA),readBufferFromBigInt(this.keyFingerprint,8,little:true,signed:true),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReceivedCall {
    static const CONSTRUCTOR_ID = 399855457;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 399855457;
	var peer;


	ReceivedCall({required this.peer});

	static ReceivedCall fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new ReceivedCall(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(399855457,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DiscardCall {
    static const CONSTRUCTOR_ID = 2999697856;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2999697856;
	bool video;
	var peer;
	int duration;
	var reason;
	BigInt connectionId;


	DiscardCall({required this.video, required this.peer, required this.duration, required this.reason, required this.connectionId});

	static DiscardCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var peer = reader.tgReadObject();var duration = reader.readInt();var reason = reader.tgReadObject();var connectionId = reader.readLong();		return new DiscardCall(video : video, peer : peer, duration : duration, reason : reason, connectionId : connectionId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2999697856,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.duration,4,little:true,signed:true),(this.reason.getBytes() as List<int>),readBufferFromBigInt(this.connectionId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetCallRating {
    static const CONSTRUCTOR_ID = 1508562471;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1508562471;
	bool userInitiative;
	var peer;
	int rating;
	String comment;


	SetCallRating({required this.userInitiative, required this.peer, required this.rating, required this.comment});

	static SetCallRating fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final userInitiative = false;var peer = reader.tgReadObject();var rating = reader.readInt();var comment = reader.tgReadString();		return new SetCallRating(userInitiative : userInitiative, peer : peer, rating : rating, comment : comment);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1508562471,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.rating,4,little:true,signed:true),serializeBytes(this.comment),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveCallDebug {
    static const CONSTRUCTOR_ID = 662363518;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 662363518;
	var peer;
	var debug;


	SaveCallDebug({required this.peer, required this.debug});

	static SaveCallDebug fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var debug = reader.tgReadObject();		return new SaveCallDebug(peer : peer, debug : debug);
	}
	List<int> getBytes(){return [readBufferFromBigInt(662363518,4),(this.peer.getBytes() as List<int>),(this.debug.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}