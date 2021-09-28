.class public Lcom/miui/home/library/utils/CustomPinyinDict;
.super Lcom/github/promeg/pinyinhelper/PinyinMapDict;
.source "CustomPinyinDict.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/CustomPinyinDict$Holder;
    }
.end annotation


# static fields
.field private static CITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    .line 12
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "阿图什"

    const-string v2, "A"

    const-string v3, "TU"

    const-string v4, "SHI"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "蚌埠"

    const-string v2, "BENG"

    const-string v3, "BU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "泌阳"

    const-string v2, "BI"

    const-string v3, "YANG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长安"

    const-string v2, "CHANG"

    const-string v3, "AN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长白"

    const-string v2, "CHANG"

    const-string v3, "BAI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长春"

    const-string v2, "CHANG"

    const-string v3, "CHUN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长岛"

    const-string v2, "CHANG"

    const-string v3, "DAO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长丰"

    const-string v2, "CHANG"

    const-string v3, "FENG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长葛"

    const-string v2, "CHANG"

    const-string v3, "GE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长海"

    const-string v2, "CHANG"

    const-string v3, "HAI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长乐"

    const-string v2, "CHANG"

    const-string v3, "LE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长岭"

    const-string v2, "CHANG"

    const-string v3, "LING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长宁"

    const-string v2, "CHANG"

    const-string v3, "NING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长清"

    const-string v2, "CHANG"

    const-string v3, "QING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长沙"

    const-string v2, "CHANG"

    const-string v3, "SHA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长寿"

    const-string v2, "CHANG"

    const-string v3, "SHOU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长顺"

    const-string v2, "CHANG"

    const-string v3, "SHUN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长泰"

    const-string v2, "CHANG"

    const-string v3, "TAI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长汀"

    const-string v2, "CHANG"

    const-string v3, "TING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长武"

    const-string v2, "CHANG"

    const-string v3, "WU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长阳"

    const-string v2, "CHANG"

    const-string v3, "YANG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长兴"

    const-string v2, "CHANG"

    const-string v3, "XING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长垣"

    const-string v2, "CHANG"

    const-string v3, "YUAN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "长治"

    const-string v2, "CHANG"

    const-string v3, "ZHI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "重庆"

    const-string v2, "CHONG"

    const-string v3, "QING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "都市"

    const-string v2, "DU"

    const-string v3, "SHI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "都匀"

    const-string v2, "DU"

    const-string v3, "YUN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "都江堰"

    const-string v2, "DU"

    const-string v3, "JIANG"

    const-string v4, "YAN"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "都安"

    const-string v2, "DU"

    const-string v3, "AN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "都昌"

    const-string v2, "DU"

    const-string v3, "CHANG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "涡阳"

    const-string v2, "GUO"

    const-string v3, "YANG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "还呗"

    const-string v2, "HUAN"

    const-string v3, "BEI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "还钱"

    const-string v2, "HUAN"

    const-string v3, "QIAN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "且末"

    const-string v2, "JU"

    const-string v3, "MO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "筠连"

    const-string v2, "JUN"

    const-string v3, "LIAN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "会计"

    const-string v2, "KUAI"

    const-string v3, "JI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "乐亭"

    const-string v2, "LAO"

    const-string v3, "TING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "萝卜"

    const-string v2, "LUO"

    const-string v3, "BO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "番禺"

    const-string v2, "PAN"

    const-string v3, "YU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "犍为"

    const-string v2, "QIAN"

    const-string v3, "WEI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "单县"

    const-string v2, "SHAN"

    const-string v3, "XIAN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "莘县"

    const-string v2, "SHEN"

    const-string v3, "XIAN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "率土之滨"

    const-string v2, "SHUAI"

    const-string v3, "TU"

    const-string v4, "ZHI"

    const-string v5, "BIN"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "水浒传"

    const-string v2, "SHUI"

    const-string v3, "HU"

    const-string v4, "ZHUAN"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "蔚来"

    const-string v2, "WEI"

    const-string v3, "LAI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "厦门"

    const-string v2, "XIA"

    const-string v3, "MEN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "猇亭"

    const-string v2, "XIAO"

    const-string v3, "TING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "荥阳"

    const-string v2, "XING"

    const-string v3, "YANG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "畜牧"

    const-string v2, "XU"

    const-string v3, "MU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "银行"

    const-string v2, "YIN"

    const-string v3, "HANG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "音乐"

    const-string v2, "YIN"

    const-string v3, "YUE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "尉犁"

    const-string v2, "YU"

    const-string v3, "LI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string/jumbo v1, "乐清"

    const-string v2, "YUE"

    const-string v3, "QING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/github/promeg/pinyinhelper/PinyinMapDict;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/library/utils/CustomPinyinDict$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/library/utils/CustomPinyinDict;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/library/utils/CustomPinyinDict;
    .locals 1

    .line 80
    invoke-static {}, Lcom/miui/home/library/utils/CustomPinyinDict$Holder;->access$100()Lcom/miui/home/library/utils/CustomPinyinDict;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public mapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    return-object v0
.end method
