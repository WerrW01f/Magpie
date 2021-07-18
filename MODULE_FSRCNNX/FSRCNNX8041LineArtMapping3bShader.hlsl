// (FSRCNNX_x2_8-0-4-1_LA) mapping 3_2


cbuffer constants : register(b0) {
	int2 srcSize : packoffset(c0.x);
};


#define MAGPIE_INPUT_COUNT 2
#include "common.hlsli"

#define get(i, pos) uncompressTan(SampleInput(i, pos))


D2D_PS_ENTRY(main) {
	InitMagpieSampleInput();

	float2 leftTop = max(0, Coord(0).xy - Coord(0).zw);
	float2 rightBottom = min(maxCoord0.xy, Coord(0).xy + Coord(0).zw);

	float4 res = { 0.0120743932202458,-0.0392544493079185,0.0073779639787972,0.0674902275204659 };
	res += mul(get(0, leftTop), float4x4(-0.0253207311034203, -0.0178817976266146, -0.0941111445426941, -0.0096205184236169, -0.0948953703045845, -0.1085971817374229, -0.1137845888733864, -0.1022860705852509, 0.0362259782850742, 0.0741802081465721, -0.0426849052309990, 0.1004608497023582, -0.0553506910800934, -0.0631089508533478, 0.0144856451079249, -0.0129664530977607));
	res += mul(get(1, leftTop), float4x4(0.1779767572879791, 0.0777176544070244, 0.3302779793739319, -0.0630711168050766, 0.0130759663879871, -0.0583435148000717, 0.0534219592809677, -0.0205510091036558, -0.1502479761838913, 0.0436260215938091, -0.3180699944496155, 0.1497740298509598, -0.0714024156332016, -0.0304171387106180, -0.1271478682756424, -0.0160594787448645));
	res += mul(get(0, float2(leftTop.x, Coord(0).y)), float4x4(-0.2060592919588089, 0.0177838709205389, 0.2679423391819000, 0.0484818480908871, -0.1020416766405106, -0.0875749215483665, 0.2993223369121552, 0.0260893367230892, -0.0320936217904091, -0.0193585660308599, 0.1074631884694099, -0.0031519578769803, -0.1419622153043747, -0.0621272362768650, -0.2517412602901459, -0.1112222597002983));
	res += mul(get(1, float2(leftTop.x, Coord(0).y)), float4x4(0.0975706353783607, -0.1846135258674622, -0.2201799452304840, -0.0123737258836627, 0.0554487742483616, -0.0255174264311790, -0.2444359511137009, -0.1069484427571297, -0.0487980805337429, -0.0570272766053677, 0.1149747893214226, -0.0176141038537025, -0.1059966161847115, 0.1263166964054108, 0.1091895326972008, 0.0400139950215816));
	res += mul(get(0, float2(leftTop.x, rightBottom.y)), float4x4(-0.0971131697297096, 0.1365687996149063, -0.1780374944210052, 0.2879253029823303, -0.0652871504426003, -0.0537611208856106, -0.0763697773218155, 0.0455291420221329, 0.0246813204139471, -0.0074042826890945, 0.2309278100728989, 0.0046464367769659, -0.0692639946937561, 0.0042336005717516, -0.2525716722011566, 0.3263924717903137));
	res += mul(get(1, float2(leftTop.x, rightBottom.y)), float4x4(-0.0798230320215225, -0.1135407239198685, -0.4427868127822876, 0.0395730547606945, 0.0537165030837059, 0.0225568320602179, -0.1189213171601295, -0.0707803219556808, -0.0074193109758198, -0.0493272021412849, 0.1401828378438950, 0.1580671072006226, -0.0574450828135014, 0.0058684512041509, -0.1626979410648346, 0.0857749953866005));
	res += mul(get(0, float2(Coord(0).x, leftTop.y)), float4x4(-0.0715018808841705, 0.0310761369764805, -0.3861580789089203, 0.0770959705114365, 0.1908793896436691, 0.2067244797945023, 0.1176377162337303, 0.0705406218767166, -0.0944501385092735, 0.1110353469848633, -0.2772715091705322, -0.0079436022788286, 0.1045550853013992, 0.0076957782730460, 0.0220303647220135, 0.0434708297252655));
	res += mul(get(1, float2(Coord(0).x, leftTop.y)), float4x4(-0.4399432241916656, -0.0885980203747749, 0.2042984664440155, 0.0499991811811924, 0.0443918742239475, -0.0322260186076164, 0.0960535407066345, 0.0173596814274788, 0.0851852819323540, -0.0549903102219105, -0.2807548046112061, -0.1112457811832428, 0.0906120762228966, 0.1066406965255737, -0.3857226073741913, 0.1345559209585190));
	res += mul(get(0, Coord(0).xy), float4x4(0.2723454833030701, -0.1252564936876297, 0.3694194555282593, 0.0895726680755615, 0.2200681418180466, 0.3019879162311554, 0.4471587240695953, 0.2883224189281464, 0.0264542233198881, 0.3020884990692139, 0.2432236075401306, 0.5683830380439758, -0.0914180725812912, -0.1473430246114731, -0.5914288163185120, -0.1922498643398285));
	res += mul(get(1, Coord(0).xy), float4x4(0.2161763310432434, -0.0415927544236183, -0.0378856658935547, -0.0317508913576603, -0.2287719398736954, -0.4885228574275970, -0.2818722724914551, -0.3797133862972260, 0.4456195533275604, 0.7929218411445618, -0.1307591795921326, 0.2016224861145020, 0.2801168859004974, -0.0006753758061677, 0.5686879754066467, 0.0415142513811588));
	res += mul(get(0, float2(Coord(0).x, rightBottom.y)), float4x4(0.0530648417770863, -0.2444190829992294, 0.0235249921679497, 0.0224611610174179, 0.0651976913213730, -0.0449720136821270, 0.1208736971020699, -0.0743656828999519, 0.1318923383951187, 0.1823218315839767, 0.5197241306304932, 0.1862808614969254, 0.2317387014627457, -0.2857755720615387, 0.1650039553642273, -0.1755792349576950));
	res += mul(get(1, float2(Coord(0).x, rightBottom.y)), float4x4(-0.0835669562220573, 0.0129750147461891, -0.4473843872547150, -0.5028023719787598, -0.0481940247118473, -0.0905050709843636, -0.6921447515487671, -0.2693449556827545, 0.2342379540205002, 0.0392520241439342, 0.4797120690345764, 0.1215118318796158, 0.1369755119085312, -0.1010836884379387, -0.0070533878169954, -0.2589581906795502));
	res += mul(get(0, float2(rightBottom.x, leftTop.y)), float4x4(0.1088275387883186, 0.0839678123593330, -0.3048903048038483, -0.0084876483306289, 0.3669581115245819, 0.0472131110727787, -0.1243446245789528, -0.1012610718607903, 0.1622449755668640, -0.1317851245403290, -0.0711368247866631, -0.1593778431415558, -0.0104977218434215, -0.0608197152614594, 0.0286014154553413, 0.0388568006455898));
	res += mul(get(1, float2(rightBottom.x, leftTop.y)), float4x4(0.0885753333568573, 0.1340429484844208, -0.0027331225574017, -0.0736069232225418, -0.1520483642816544, 0.1104429140686989, 0.1728315353393555, 0.1210049912333488, 0.0688045620918274, -0.1218316256999969, -0.0629790797829628, -0.1348981261253357, 0.0943875387310982, -0.0730865821242332, -0.2342475503683090, -0.0808216184377670));
	res += mul(get(0, float2(rightBottom.x, Coord(0).y)), float4x4(-0.1263358592987061, -0.7069915533065796, 0.1411920040845871, -0.2682386934757233, 0.2957956194877625, 0.1127238497138023, 0.3032427430152893, 0.2759581208229065, 0.8320354819297791, -0.0136295817792416, 0.0530097521841526, -0.0727380812168121, 0.0614950619637966, 0.0339637212455273, -0.0386842861771584, -0.0550391897559166));
	res += mul(get(1, float2(rightBottom.x, Coord(0).y)), float4x4(-0.0998953506350517, -0.2231116443872452, 0.0948988571763039, 0.1258799731731415, -0.6855500936508179, -0.4546283185482025, -0.3335786461830139, 0.0718025788664818, 0.6456025242805481, -0.2023779749870300, 0.1325027197599411, -0.1078727394342422, 0.3024467229843140, 0.1703380942344666, 0.2321108430624008, 0.2143797874450684));
	res += mul(get(0, rightBottom), float4x4(0.0542521663010120, -0.2265717238187790, -0.0289179943501949, 0.0697252005338669, -0.1518151611089706, 0.0225123148411512, 0.0370684377849102, -0.1546901017427444, 0.0753403753042221, -0.0465561784803867, 0.1635994315147400, 0.1127668544650078, 0.0738654434680939, 0.1077028661966324, -0.1282461881637573, -0.0510208979249001));
	res += mul(get(1, rightBottom), float4x4(-0.1740311384201050, 0.0542572811245918, 0.0551791004836559, 0.1728909015655518, -0.0078740902245045, 0.0999085083603859, -0.0136023676022887, 0.0501077920198441, 0.0529310964047909, -0.0859082415699959, -0.0285708475857973, -0.0186515673995018, -0.0793913751840591, 0.0688859447836876, -0.1684362143278122, 0.0473327860236168));
	res = max(res, ZEROS4) + float4(-0.1339675635099411, 0.3599768280982971, -0.1313954293727875, 0.8648772835731506) * min(res, ZEROS4);

	return compressTan(res);
}
