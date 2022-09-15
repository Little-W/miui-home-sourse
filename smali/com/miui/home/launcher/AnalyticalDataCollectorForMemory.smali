.class Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;
.super Ljava/lang/Object;
.source "AnalyticalDataCollectorForMemory.java"


# static fields
.field private static day:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static countInstancesOfClass(Ljava/lang/Class;)J
    .locals 2

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static countInstancesOfClass(Ljava/lang/Class;Z)J
    .locals 7

    :try_start_0
    const-string v0, "dalvik.system.VMDebug"

    .line 77
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "countInstancesOfClass"

    const/4 v2, 0x2

    .line 78
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

    .line 79
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

    .line 81
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static getAppMemoryInfo()Landroid/os/Debug$MemoryInfo;
    .locals 9

    const/4 v0, 0x0

    .line 51
    :try_start_0
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    const-string v2, "android.os.Debug"

    .line 52
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getMemoryInfo"

    const/4 v4, 0x2

    .line 53
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Debug$MemoryInfo;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 54
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

    .line 57
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I
    .locals 3

    .line 64
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

    .line 66
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static trackMemoryEvent()V
    .locals 5

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getAppMemoryInfo()Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "Day"

    .line 29
    sget v3, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->day:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "JavaHeap"

    const-string v3, "getSummaryJavaHeap"

    .line 30
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NativeHeap"

    const-string v3, "getSummaryNativeHeap"

    .line 31
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Code"

    const-string v3, "getSummaryCode"

    .line 32
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Stack"

    const-string v3, "getSummaryStack"

    .line 33
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Graphics"

    const-string v3, "getSummaryGraphics"

    .line 34
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PrivateOther"

    const-string v3, "getSummaryPrivateOther"

    .line 35
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "System"

    const-string v3, "getSummarySystem"

    .line 36
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TotalPss"

    const-string v3, "getSummaryTotalPss"

    .line 37
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TotalSwap"

    const-string v3, "getSummaryTotalSwap"

    .line 38
    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Launcher"

    .line 39
    const-class v2, Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Views"

    .line 40
    const-class v2, Landroid/view/View;

    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Bitmaps"

    .line 41
    const-class v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DefaultTheme"

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isDefaultThemeApplied()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "home_memory"

    .line 43
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
