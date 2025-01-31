enum Level {
	EZ, HD, IN, AT
}

struct Summary {
	1: required string saveUrl;
	2: required i16 challenge;
	3: required double rks;
	4: required i8 version;
	5: required string avater;
}

struct SongLevel {
	1: required string id;
	2: required Level level;
	3: required i32 score;
	4: required double acc;
	5: required bool fc;
	6: required double difficulty;
	7: required double rks;
}

struct SongExpect {
	1: required string id;
	2: required Level level;
	3: required double acc;
	4: required double expect;
}

service Phigros {
	Summary getSaveUrl(1:string sessionToken);
	list<SongLevel> best19(1:string saveUrl);
	list<SongLevel> bestn(1:string saveUrl, 2:i8 num);
	list<SongExpect> songExpects(1:string saveUrl);
}