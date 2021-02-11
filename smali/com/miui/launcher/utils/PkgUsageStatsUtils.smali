.class public Lcom/miui/launcher/utils/PkgUsageStatsUtils;
.super Ljava/lang/Object;
.source "PkgUsageStatsUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAllPackageUsageStats(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStatsGte_21(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 28
    :cond_0
    invoke-static {p0, p3}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStatsLte_19(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static loadAllPackageUsageStats(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 21
    invoke-static {p0, v0, v1, p1}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStats(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static loadAllPackageUsageStatsGte_21(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/miui/launcher/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "android.app.usage.UsageStats"

    .line 35
    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "usagestats"

    .line 41
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 42
    const-class v2, Ljava/util/List;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "queryUsageStats"

    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v7

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v8

    .line 44
    invoke-static {v4, p0, v5, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 48
    invoke-static {p0}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 51
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getPackageName"

    .line 52
    const-class v2, Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 53
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "getLastTimeUsed"

    .line 56
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v4, v6, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 57
    new-instance v2, Lcom/miui/launcher/common/AppUsageStat;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, p2, v3, v4}, Lcom/miui/launcher/common/AppUsageStat;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static loadAllPackageUsageStatsLte_19(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/miui/launcher/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "com.android.internal.os.PkgUsageStats"

    .line 64
    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "activity"

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 69
    const-class v1, [Ljava/lang/Object;

    const-string v2, "getAllPackageUsageStats"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    if-eqz p0, :cond_6

    .line 70
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_3

    .line 73
    :cond_1
    array-length v1, p0

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v2, p0, v4

    const-string v3, "packageName"

    .line 74
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "componentResumeTimes"

    .line 78
    invoke-static {v2, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-wide/16 v5, 0x0

    .line 80
    invoke-static {v2}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 81
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    move-wide v5, v7

    goto :goto_1

    .line 85
    :cond_4
    new-instance v2, Lcom/miui/launcher/common/AppUsageStat;

    invoke-direct {v2, v3, v5, v6}, Lcom/miui/launcher/common/AppUsageStat;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    return-object v0
.end method
