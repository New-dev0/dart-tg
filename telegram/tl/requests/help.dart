import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetConfig {
    static const CONSTRUCTOR_ID = 3304659051;
    static const SUBCLASS_OF_ID = 3542493770;


	GetConfig();

	static GetConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3304659051,4),].expand((element) => element).toList();}

}

class GetNearestDc {
    static const CONSTRUCTOR_ID = 531836966;
    static const SUBCLASS_OF_ID = 947323999;


	GetNearestDc();

	static GetNearestDc fromReader(BinaryReader reader) {
	var temp,len;		return new GetNearestDc();
	}
	List<int> getBytes(){return [readBufferFromBigInt(531836966,4),].expand((element) => element).toList();}

}

class GetAppUpdate {
    static const CONSTRUCTOR_ID = 1378703997;
    static const SUBCLASS_OF_ID = 1486292638;
	String source;


	GetAppUpdate({this.source});

	static GetAppUpdate fromReader(BinaryReader reader) {
	var temp,len;var source = reader.tgReadString();		return new GetAppUpdate(source : source);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1378703997,4),serializeBytes(this.source),].expand((element) => element).toList();}

}

class GetInviteText {
    static const CONSTRUCTOR_ID = 1295590211;
    static const SUBCLASS_OF_ID = 3480267317;


	GetInviteText();

	static GetInviteText fromReader(BinaryReader reader) {
	var temp,len;		return new GetInviteText();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1295590211,4),].expand((element) => element).toList();}

}

class GetSupport {
    static const CONSTRUCTOR_ID = 2631862477;
    static const SUBCLASS_OF_ID = 1901706475;


	GetSupport();

	static GetSupport fromReader(BinaryReader reader) {
	var temp,len;		return new GetSupport();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2631862477,4),].expand((element) => element).toList();}

}

class GetAppChangelog {
    static const CONSTRUCTOR_ID = 2417028975;
    static const SUBCLASS_OF_ID = 2331323052;
	String prevAppVersion;


	GetAppChangelog({this.prevAppVersion});

	static GetAppChangelog fromReader(BinaryReader reader) {
	var temp,len;var prevAppVersion = reader.tgReadString();		return new GetAppChangelog(prevAppVersion : prevAppVersion);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2417028975,4),serializeBytes(this.prevAppVersion),].expand((element) => element).toList();}

}

class SetBotUpdatesStatus {
    static const CONSTRUCTOR_ID = 3961704397;
    static const SUBCLASS_OF_ID = 4122188204;
	int pendingUpdatesCount;
	String message;


	SetBotUpdatesStatus({this.pendingUpdatesCount, this.message});

	static SetBotUpdatesStatus fromReader(BinaryReader reader) {
	var temp,len;var pendingUpdatesCount = reader.readInt();var message = reader.tgReadString();		return new SetBotUpdatesStatus(pendingUpdatesCount : pendingUpdatesCount, message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3961704397,4),readBufferFromBigInt(this.pendingUpdatesCount,4,little:true,signed:true),serializeBytes(this.message),].expand((element) => element).toList();}

}

class GetCdnConfig {
    static const CONSTRUCTOR_ID = 1375900482;
    static const SUBCLASS_OF_ID = 3973724540;


	GetCdnConfig();

	static GetCdnConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetCdnConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1375900482,4),].expand((element) => element).toList();}

}

class GetRecentMeUrls {
    static const CONSTRUCTOR_ID = 1036054804;
    static const SUBCLASS_OF_ID = 4067017847;
	String referer;


	GetRecentMeUrls({this.referer});

	static GetRecentMeUrls fromReader(BinaryReader reader) {
	var temp,len;var referer = reader.tgReadString();		return new GetRecentMeUrls(referer : referer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1036054804,4),serializeBytes(this.referer),].expand((element) => element).toList();}

}

class GetProxyData {
    static const CONSTRUCTOR_ID = 1031231713;
    static const SUBCLASS_OF_ID = 568501320;


	GetProxyData();

	static GetProxyData fromReader(BinaryReader reader) {
	var temp,len;		return new GetProxyData();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1031231713,4),].expand((element) => element).toList();}

}

class GetTermsOfServiceUpdate {
    static const CONSTRUCTOR_ID = 749019089;
    static const SUBCLASS_OF_ID = 691808631;


	GetTermsOfServiceUpdate();

	static GetTermsOfServiceUpdate fromReader(BinaryReader reader) {
	var temp,len;		return new GetTermsOfServiceUpdate();
	}
	List<int> getBytes(){return [readBufferFromBigInt(749019089,4),].expand((element) => element).toList();}

}

class AcceptTermsOfService {
    static const CONSTRUCTOR_ID = 4000511898;
    static const SUBCLASS_OF_ID = 4122188204;
	var id;


	AcceptTermsOfService({this.id});

	static AcceptTermsOfService fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new AcceptTermsOfService(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4000511898,4),this.id.getBytes(),].expand((element) => element).toList();}

}

class GetDeepLinkInfo {
    static const CONSTRUCTOR_ID = 1072547679;
    static const SUBCLASS_OF_ID = 2555030584;
	String path;


	GetDeepLinkInfo({this.path});

	static GetDeepLinkInfo fromReader(BinaryReader reader) {
	var temp,len;var path = reader.tgReadString();		return new GetDeepLinkInfo(path : path);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1072547679,4),serializeBytes(this.path),].expand((element) => element).toList();}

}

class GetAppConfig {
    static const CONSTRUCTOR_ID = 2559656208;
    static const SUBCLASS_OF_ID = 3952707507;


	GetAppConfig();

	static GetAppConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetAppConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2559656208,4),].expand((element) => element).toList();}

}

class SaveAppLog {
    static const CONSTRUCTOR_ID = 1862465352;
    static const SUBCLASS_OF_ID = 4122188204;
	List<dynamic> events;


	SaveAppLog({this.events});

	static SaveAppLog fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> events = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		events.add(reader.tgReadObject());
}		return new SaveAppLog(events : events);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1862465352,4),readBufferFromBigInt(0x15c4b51c,4),readBufferFromBigInt(this.events.length,4,little:true,signed:true),this.events.map((x)=>x.getBytes()),].expand((element) => element).toList();}

}

class GetPassportConfig {
    static const CONSTRUCTOR_ID = 3328290056;
    static const SUBCLASS_OF_ID = 3328622765;
	int hash;


	GetPassportConfig({this.hash});

	static GetPassportConfig fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readInt();		return new GetPassportConfig(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3328290056,4),readBufferFromBigInt(this.hash,4,little:true,signed:true),].expand((element) => element).toList();}

}

class GetSupportName {
    static const CONSTRUCTOR_ID = 3546343212;
    static const SUBCLASS_OF_ID = 2135996354;


	GetSupportName();

	static GetSupportName fromReader(BinaryReader reader) {
	var temp,len;		return new GetSupportName();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3546343212,4),].expand((element) => element).toList();}

}

class GetUserInfo {
    static const CONSTRUCTOR_ID = 59377875;
    static const SUBCLASS_OF_ID = 1548998616;
	var userId;


	GetUserInfo({this.userId});

	static GetUserInfo fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();		return new GetUserInfo(userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(59377875,4),this.userId.getBytes(),].expand((element) => element).toList();}

}

class EditUserInfo {
    static const CONSTRUCTOR_ID = 1723407216;
    static const SUBCLASS_OF_ID = 1548998616;
	var userId;
	String message;
	List<dynamic> entities;


	EditUserInfo({this.userId, this.message, this.entities});

	static EditUserInfo fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();var message = reader.tgReadString();reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
}		return new EditUserInfo(userId : userId, message : message, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1723407216,4),this.userId.getBytes(),serializeBytes(this.message),readBufferFromBigInt(0x15c4b51c,4),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>x.getBytes()),].expand((element) => element).toList();}

}