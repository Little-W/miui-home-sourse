.class Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;
.super Ljava/lang/Object;
.source "AnalyticalDataCollectorForMemory.java"


# static fields
.field private static day:I = 0x1

.field private static uploaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static commonCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    :try_start_0
    const-string v0, "miui.mqsas.sdk.MQSEventManagerDelegate"

    .line 234
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 235
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "commonCaptureLog"

    const/4 v4, 0x4

    .line 236
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    .line 237
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    aput-object p3, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "HomeMemory"

    const-string p2, "commonCaptureLog"

    .line 239
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static countInstancesOfClass(Ljava/lang/Class;)J
    .locals 2

    const/4 v0, 0x1

    .line 91
    invoke-static {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static countInstancesOfClass(Ljava/lang/Class;Z)J
    .locals 7

    :try_start_0
    const-string v0, "dalvik.system.VMDebug"

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "countInstancesOfClass"

    const/4 v2, 0x2

    .line 97
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "HomeMemory"

    const-string v0, "countInstancesOfClass"

    .line 100
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static dumpHprofData(Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 4

    .line 200
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$BNfImsYoLnaVLV8iLc13kBmbS5c;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$BNfImsYoLnaVLV8iLc13kBmbS5c;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$No63sYy-qJXLOfogJrNwvPIUumM;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$No63sYy-qJXLOfogJrNwvPIUumM;-><init>(Ljava/io/File;Ljava/lang/Runnable;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    .line 217
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 213
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static getAppMemoryInfo()Landroid/os/Debug$MemoryInfo;
    .locals 9

    const/4 v0, 0x0

    .line 70
    :try_start_0
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    const-string v2, "android.os.Debug"

    .line 71
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getMemoryInfo"

    const/4 v4, 0x2

    .line 72
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Debug$MemoryInfo;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "HomeMemory"

    const-string v3, "getAppMemoryInfo"

    .line 76
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getHprofDir()Ljava/io/File;
    .locals 5

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/MIUI/Home/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I
    .locals 3

    .line 83
    :try_start_0
    const-class v0, Landroid/os/Debug$MemoryInfo;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "HomeMemory"

    const-string v0, "getMemoryInfo"

    .line 85
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method private static getRules(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.mqsas.sdk.MQSEventManagerDelegate"

    .line 222
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    .line 223
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getRules"

    const/4 v5, 0x1

    .line 224
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 225
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "HomeMemory"

    const-string v2, "getRules"

    .line 227
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 2

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$dumpHprofData$1(Ljava/io/File;)V
    .locals 8

    :try_start_0
    const-string v0, "dalvik.system.VMDebug"

    .line 204
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dumpHprofData"

    const/4 v2, 0x3

    .line 205
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 206
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HomeMemory"

    const-string v1, "dumpHprofData"

    .line 208
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$dumpHprofData$2(Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    .line 214
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 215
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$uploadHprofIfNeeded$0(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    .line 127
    sput-boolean v0, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->uploaded:Z

    const-string v0, "MiuiHome"

    const-string v1, "ps,mlog,slog,elog,top,meminfo,cpuinfo,binderinfo,kernellog"

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->commonCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static parseRules(Ljava/util/List;I)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_c

    .line 134
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 136
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "device"

    .line 137
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "miuiVersion"

    .line 138
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v5

    .line 140
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v5

    :goto_3
    if-eqz p0, :cond_c

    if-eqz v3, :cond_c

    const-string p0, ""

    const-string v3, ""

    const-string v4, "customized"

    .line 147
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v7, v2

    move v8, v7

    move v9, v8

    move-object v6, v3

    move-object v3, p0

    move p0, v9

    .line 148
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge p0, v10, :cond_8

    .line 149
    invoke-virtual {v4, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "key"

    .line 150
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "value"

    .line 151
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, -0x1

    .line 152
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string/jumbo v13, "version"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    goto :goto_6

    :sswitch_1
    const-string v13, "class_name"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x2

    goto :goto_6

    :sswitch_2
    const-string v13, "class_count"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x3

    goto :goto_6

    :sswitch_3
    const-string v13, "enable"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v2

    goto :goto_6

    :sswitch_4
    const-string v13, "threshold"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v5

    goto :goto_6

    :cond_4
    :goto_5
    move v11, v12

    :goto_6
    packed-switch v11, :pswitch_data_0

    goto :goto_8

    .line 166
    :pswitch_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_7

    :cond_5
    move v7, v2

    goto :goto_8

    :cond_6
    :goto_7
    move v7, v5

    goto :goto_8

    :pswitch_1
    move-object v6, v10

    goto :goto_8

    :pswitch_2
    move-object v3, v10

    goto :goto_8

    .line 157
    :pswitch_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x400

    if-le p1, v9, :cond_7

    move v9, v5

    goto :goto_8

    :cond_7
    move v9, v2

    goto :goto_8

    :pswitch_4
    const-string v8, "true"

    .line 154
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    :goto_8
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_4

    .line 171
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_9

    move p0, v5

    goto :goto_9

    .line 175
    :cond_9
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide p0

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v3, v3

    cmp-long p0, p0, v3

    if-lez p0, :cond_a

    move p0, v5

    goto :goto_9

    :cond_a
    move p0, v2

    goto :goto_9

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "HomeMemory"

    const-string v3, "checkClassCount"

    .line 178
    invoke-static {p1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, v2

    :goto_9
    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    if-eqz p0, :cond_b

    if-eqz v7, :cond_b

    move v2, v5

    :cond_b
    if-eqz v2, :cond_c

    const-string p0, "id"

    .line 184
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception p0

    const-string p1, "HomeMemory"

    const-string v1, "parseRules"

    .line 188
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_a
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c1e1b95 -> :sswitch_4
        -0x4d6ada7d -> :sswitch_3
        -0x194d9c78 -> :sswitch_2
        -0x11504b0e -> :sswitch_1
        0x14f51cd8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static trackMemoryEvent()V
    .locals 5

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getAppMemoryInfo()Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "Day"

    .line 46
    sget v3, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->day:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "JavaHeap"

    const-string v3, "getSummaryJavaHeap"

    .line 47
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NativeHeap"

    const-string v3, "getSummaryNativeHeap"

    .line 48
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Code"

    const-string v3, "getSummaryCode"

    .line 49
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Stack"

    const-string v3, "getSummaryStack"

    .line 50
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Graphics"

    const-string v3, "getSummaryGraphics"

    .line 51
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PrivateOther"

    const-string v3, "getSummaryPrivateOther"

    .line 52
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "System"

    const-string v3, "getSummarySystem"

    .line 53
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "getSummaryTotalPss"

    .line 54
    invoke-static {v1, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v2

    const-string v3, "TotalPss"

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TotalSwap"

    const-string v4, "getSummaryTotalSwap"

    .line 56
    invoke-static {v1, v4}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Launcher"

    .line 57
    const-class v3, Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Views"

    .line 58
    const-class v3, Landroid/view/View;

    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Bitmaps"

    .line 59
    const-class v3, Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DefaultTheme"

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isDefaultThemeApplied()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "home_memory"

    .line 61
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->uploadHprofIfNeeded(I)V

    return-void
.end method

.method private static uploadHprofIfNeeded(I)V
    .locals 2

    .line 121
    sget-boolean v0, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->uploaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MiuiHome"

    .line 122
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-static {v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->parseRules(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 125
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getHprofDir()Ljava/io/File;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$QL5XDsIWAyNPh87xJTRS1_eGaA4;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$QL5XDsIWAyNPh87xJTRS1_eGaA4;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->dumpHprofData(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method
