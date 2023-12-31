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
    .locals 12

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    .line 12
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "SHI"

    const-string v2, "TU"

    const-string v3, "A"

    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u963f\u56fe\u4ec0"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v3, "BENG"

    const-string v4, "BU"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u868c\u57e0"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v3, "YANG"

    const-string v4, "BI"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6ccc\u9633"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v4, "AN"

    const-string v5, "CHANG"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u5b89"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "BAI"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u767d"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "CHUN"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u6625"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "DAO"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u5c9b"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "FENG"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u4e30"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "GE"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u845b"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "HAI"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u6d77"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "LE"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u4e50"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "LING"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u5cad"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "NING"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u957f\u5b81"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v6, "QING"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u957f\u6e05"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v7, "SHA"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u957f\u6c99"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v7, "SHOU"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u957f\u5bff"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v7, "SHUN"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u957f\u987a"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v7, "TAI"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u957f\u6cf0"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v7, "TING"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u957f\u6c40"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v8, "WU"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u957f\u6b66"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u957f\u9633"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v8, "XING"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u957f\u5174"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v9, "YUAN"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u957f\u57a3"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v9, "ZHI"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u957f\u6cbb"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v10, "CHONG"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u91cd\u5e86"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v10, "DU"

    filled-new-array {v10, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v11, "\u90fd\u5e02"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "YUN"

    filled-new-array {v10, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v11, "\u90fd\u5300"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "JIANG"

    const-string v11, "YAN"

    filled-new-array {v10, v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const-string v11, "\u90fd\u6c5f\u5830"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u90fd\u5b89"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    filled-new-array {v10, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u90fd\u660c"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "GUO"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u6da1\u9633"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "HUAN"

    const-string v4, "BEI"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u8fd8\u5457"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v4, "QIAN"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u8fd8\u94b1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "JU"

    const-string v5, "MO"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u4e14\u672b"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "JUN"

    const-string v5, "LIAN"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u7b60\u8fde"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "KUAI"

    const-string v5, "JI"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u4f1a\u8ba1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "LAO"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u4e50\u4ead"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "LUO"

    const-string v5, "BO"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u841d\u535c"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "YU"

    const-string v5, "PAN"

    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v10, "\u756a\u79ba"

    invoke-virtual {v0, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v5, "WEI"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v10, "\u728d\u4e3a"

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v4, "XIAN"

    const-string v10, "SHAN"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u5355\u53bf"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v10, "SHEN"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v10, "\u8398\u53bf"

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v4, "SHUAI"

    const-string v10, "BIN"

    filled-new-array {v4, v2, v9, v10}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u7387\u571f\u4e4b\u6ee8"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "SHUI"

    const-string v4, "HU"

    const-string v9, "ZHUAN"

    filled-new-array {v2, v4, v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u6c34\u6d52\u4f20"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "LAI"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u851a\u6765"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "XIA"

    const-string v4, "MEN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u53a6\u95e8"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "XIAO"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u7307\u4ead"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    filled-new-array {v8, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8365\u9633"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "XU"

    const-string v3, "MU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u755c\u7267"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "YIN"

    const-string v3, "HANG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u94f6\u884c"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "YIN"

    const-string v3, "YUE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u97f3\u4e50"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v2, "LI"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c09\u7281"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    const-string v1, "YUE"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e50\u6e05"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 0
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
    sget-object p0, Lcom/miui/home/library/utils/CustomPinyinDict;->CITY:Ljava/util/HashMap;

    return-object p0
.end method
