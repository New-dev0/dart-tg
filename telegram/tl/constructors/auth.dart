import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class SentCode {
    static const CONSTRUCTOR_ID = 1577067778;
    static const SUBCLASS_OF_ID = 1827172481;
    final classType = "constructor";
    final ID = 1577067778;
	var type;
	String phoneCodeHash;
	var nextType;
	int timeout;


	SentCode({required this.type, required this.phoneCodeHash, required this.nextType, required this.timeout});

	static SentCode fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var type = reader.tgReadObject();var phoneCodeHash = reader.tgReadString();var nextType;if ((flags & 2)==1){var nextType = reader.tgReadObject(); } else {nextType=null;}var timeout;if ((flags & 4)==1){var timeout = reader.readInt(); } else {timeout=null;}		return new SentCode(type : type, phoneCodeHash : phoneCodeHash, nextType : nextType, timeout : timeout);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1577067778,4),[0,0,0,0],(this.type.getBytes() as List<int>),serializeBytes(this.phoneCodeHash),(this.nextType==null||this.nextType==false)?<int>[]:[(this.nextType.getBytes() as List<int>)].expand((element) => element).toList(),(this.timeout==null||this.timeout==false)?<int>[]:[readBufferFromBigInt(this.timeout,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class Authorization {
    static const CONSTRUCTOR_ID = 3439659286;
    static const SUBCLASS_OF_ID = 3118485049;
    final classType = "constructor";
    final ID = 3439659286;
	int tmpSessions;
	var user;


	Authorization({required this.tmpSessions, required this.user});

	static Authorization fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var tmpSessions;if ((flags & 1)==1){var tmpSessions = reader.readInt(); } else {tmpSessions=null;}var user = reader.tgReadObject();		return new Authorization(tmpSessions : tmpSessions, user : user);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3439659286,4),[0,0,0,0],(this.tmpSessions==null||this.tmpSessions==false)?<int>[]:[readBufferFromBigInt(this.tmpSessions,4,little:true,signed:true)].expand((element) => element).toList(),(this.user.getBytes() as List<int>),].expand((element) => element).toList();}

}

class AuthorizationSignUpRequired {
    static const CONSTRUCTOR_ID = 1148485274;
    static const SUBCLASS_OF_ID = 3118485049;
    final classType = "constructor";
    final ID = 1148485274;
	var termsOfService;


	AuthorizationSignUpRequired({required this.termsOfService});

	static AuthorizationSignUpRequired fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var termsOfService;if ((flags & 1)==1){var termsOfService = reader.tgReadObject(); } else {termsOfService=null;}		return new AuthorizationSignUpRequired(termsOfService : termsOfService);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1148485274,4),[0,0,0,0],(this.termsOfService==null||this.termsOfService==false)?<int>[]:[(this.termsOfService.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ExportedAuthorization {
    static const CONSTRUCTOR_ID = 3751189549;
    static const SUBCLASS_OF_ID = 1607593041;
    final classType = "constructor";
    final ID = 3751189549;
	int id;
	List<int> bytes;


	ExportedAuthorization({required this.id, required this.bytes});

	static ExportedAuthorization fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();var bytes = reader.tgReadBytes();		return new ExportedAuthorization(id : id, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3751189549,4),readBufferFromBigInt(this.id,4,little:true,signed:true),serializeBytes(this.bytes),].expand((element) => element).toList();}

}

class PasswordRecovery {
    static const CONSTRUCTOR_ID = 326715557;
    static const SUBCLASS_OF_ID = 4201829434;
    final classType = "constructor";
    final ID = 326715557;
	String emailPattern;


	PasswordRecovery({required this.emailPattern});

	static PasswordRecovery fromReader(BinaryReader reader) {
	var temp,len;var emailPattern = reader.tgReadString();		return new PasswordRecovery(emailPattern : emailPattern);
	}
	List<int> getBytes(){return [readBufferFromBigInt(326715557,4),serializeBytes(this.emailPattern),].expand((element) => element).toList();}

}

class CodeTypeSms {
    static const CONSTRUCTOR_ID = 1923290508;
    static const SUBCLASS_OF_ID = 3019105281;
    final classType = "constructor";
    final ID = 1923290508;


	CodeTypeSms();

	static CodeTypeSms fromReader(BinaryReader reader) {
	var temp,len;		return new CodeTypeSms();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1923290508,4),].expand((element) => element).toList();}

}

class CodeTypeCall {
    static const CONSTRUCTOR_ID = 1948046307;
    static const SUBCLASS_OF_ID = 3019105281;
    final classType = "constructor";
    final ID = 1948046307;


	CodeTypeCall();

	static CodeTypeCall fromReader(BinaryReader reader) {
	var temp,len;		return new CodeTypeCall();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1948046307,4),].expand((element) => element).toList();}

}

class CodeTypeFlashCall {
    static const CONSTRUCTOR_ID = 577556219;
    static const SUBCLASS_OF_ID = 3019105281;
    final classType = "constructor";
    final ID = 577556219;


	CodeTypeFlashCall();

	static CodeTypeFlashCall fromReader(BinaryReader reader) {
	var temp,len;		return new CodeTypeFlashCall();
	}
	List<int> getBytes(){return [readBufferFromBigInt(577556219,4),].expand((element) => element).toList();}

}

class SentCodeTypeApp {
    static const CONSTRUCTOR_ID = 1035688326;
    static const SUBCLASS_OF_ID = 4284159374;
    final classType = "constructor";
    final ID = 1035688326;
	int length;


	SentCodeTypeApp({required this.length});

	static SentCodeTypeApp fromReader(BinaryReader reader) {
	var temp,len;var length = reader.readInt();		return new SentCodeTypeApp(length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1035688326,4),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SentCodeTypeSms {
    static const CONSTRUCTOR_ID = 3221273506;
    static const SUBCLASS_OF_ID = 4284159374;
    final classType = "constructor";
    final ID = 3221273506;
	int length;


	SentCodeTypeSms({required this.length});

	static SentCodeTypeSms fromReader(BinaryReader reader) {
	var temp,len;var length = reader.readInt();		return new SentCodeTypeSms(length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3221273506,4),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SentCodeTypeCall {
    static const CONSTRUCTOR_ID = 1398007207;
    static const SUBCLASS_OF_ID = 4284159374;
    final classType = "constructor";
    final ID = 1398007207;
	int length;


	SentCodeTypeCall({required this.length});

	static SentCodeTypeCall fromReader(BinaryReader reader) {
	var temp,len;var length = reader.readInt();		return new SentCodeTypeCall(length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1398007207,4),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SentCodeTypeFlashCall {
    static const CONSTRUCTOR_ID = 2869151449;
    static const SUBCLASS_OF_ID = 4284159374;
    final classType = "constructor";
    final ID = 2869151449;
	String pattern;


	SentCodeTypeFlashCall({required this.pattern});

	static SentCodeTypeFlashCall fromReader(BinaryReader reader) {
	var temp,len;var pattern = reader.tgReadString();		return new SentCodeTypeFlashCall(pattern : pattern);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2869151449,4),serializeBytes(this.pattern),].expand((element) => element).toList();}

}

class LoginToken {
    static const CONSTRUCTOR_ID = 1654593920;
    static const SUBCLASS_OF_ID = 1800795702;
    final classType = "constructor";
    final ID = 1654593920;
	int expires;
	List<int> token;


	LoginToken({required this.expires, required this.token});

	static LoginToken fromReader(BinaryReader reader) {
	var temp,len;var expires = reader.readInt();var token = reader.tgReadBytes();		return new LoginToken(expires : expires, token : token);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1654593920,4),readBufferFromBigInt(this.expires,4,little:true,signed:true),serializeBytes(this.token),].expand((element) => element).toList();}

}

class LoginTokenMigrateTo {
    static const CONSTRUCTOR_ID = 110008598;
    static const SUBCLASS_OF_ID = 1800795702;
    final classType = "constructor";
    final ID = 110008598;
	int dcId;
	List<int> token;


	LoginTokenMigrateTo({required this.dcId, required this.token});

	static LoginTokenMigrateTo fromReader(BinaryReader reader) {
	var temp,len;var dcId = reader.readInt();var token = reader.tgReadBytes();		return new LoginTokenMigrateTo(dcId : dcId, token : token);
	}
	List<int> getBytes(){return [readBufferFromBigInt(110008598,4),readBufferFromBigInt(this.dcId,4,little:true,signed:true),serializeBytes(this.token),].expand((element) => element).toList();}

}

class LoginTokenSuccess {
    static const CONSTRUCTOR_ID = 957176926;
    static const SUBCLASS_OF_ID = 1800795702;
    final classType = "constructor";
    final ID = 957176926;
	var authorization;


	LoginTokenSuccess({required this.authorization});

	static LoginTokenSuccess fromReader(BinaryReader reader) {
	var temp,len;var authorization = reader.tgReadObject();		return new LoginTokenSuccess(authorization : authorization);
	}
	List<int> getBytes(){return [readBufferFromBigInt(957176926,4),(this.authorization.getBytes() as List<int>),].expand((element) => element).toList();}

}