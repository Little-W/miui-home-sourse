.class public final Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;
.super Ljava/lang/Object;
.source "OperationIconEventTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconEventTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconEventTracker.kt\ncom/miui/home/launcher/operationicon/OperationIconEventTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1819#2,2:131\n1819#2,2:133\n1819#2,2:135\n*E\n*S KotlinDebug\n*F\n+ 1 OperationIconEventTracker.kt\ncom/miui/home/launcher/operationicon/OperationIconEventTracker\n*L\n62#1,2:131\n62#1,2:133\n94#1,2:135\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private exposeCheckInterval:I

.field private lastExposeCheckTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

    .line 26
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 32
    iput v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->exposeCheckInterval:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildEventList(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->buildEventList(Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$sendMarketService(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->sendMarketService(Ljava/lang/String;)V

    return-void
.end method

.method private final buildEventJson(Ljava/lang/String;ZZLcom/miui/home/launcher/operationicon/OperationIconInfo;)Lorg/json/JSONObject;
    .locals 3

    .line 101
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "eventName"

    .line 102
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "package_name"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getOperateId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    const-string v2, "operate_id"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getIconId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-string v2, "icon_style_id"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getDelayDeepLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    const-string v1, "delay_deeplink"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "return_result"

    .line 108
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "is_first_open"

    .line 109
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getExposeIntervalSec()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_4
    const/16 p2, 0xb4

    :goto_4
    const-string p3, "icon_expose_interval"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "ref"

    const-string p3, "miui_desktop"

    .line 112
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getDelayDeepLinkType()I

    move-result p2

    const-string p3, "delay_dp_type"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "eventParams"

    .line 103
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method private final buildEventList(Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 94
    check-cast p4, Ljava/lang/Iterable;

    .line 135
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 95
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->buildEventJson(Ljava/lang/String;ZZLcom/miui/home/launcher/operationicon/OperationIconInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private final checkIconExposeTime(JLcom/miui/home/launcher/operationicon/OperationIconInfo;)Z
    .locals 2

    .line 88
    invoke-virtual {p3}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getLastExposeTimestamp()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const/16 p0, 0x3e8

    int-to-long v0, p0

    div-long/2addr p1, v0

    invoke-virtual {p3}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getExposeIntervalSec()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xb4

    :goto_0
    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final getExposeIcons(Lcom/miui/home/launcher/Launcher;J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "J)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 64
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "it"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Iterable;

    .line 131
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutIcon;

    .line 65
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v7, :cond_1

    move-object v6, v4

    :cond_1
    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v6, :cond_0

    .line 66
    sget-object v7, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {v7}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object v7

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v6, v1, v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEnable(J)Z

    move-result v7

    invoke-direct {p0, p2, p3, v6}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->checkIconExposeTime(JLcom/miui/home/launcher/operationicon/OperationIconInfo;)Z

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 68
    invoke-virtual {v6, p2, p3}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->setLastExposeTimestamp(J)V

    .line 69
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    .line 133
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutIcon;

    .line 75
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v6, :cond_4

    move-object v3, v4

    :cond_4
    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_3

    .line 76
    sget-object v6, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {v6}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 77
    invoke-virtual {v3, v1, v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEnable(J)Z

    move-result v6

    invoke-direct {p0, p2, p3, v3}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->checkIconExposeTime(JLcom/miui/home/launcher/operationicon/OperationIconInfo;)Z

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 78
    invoke-virtual {v3, p2, p3}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->setLastExposeTimestamp(J)V

    .line 79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_5
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final sendMarketService(Ljava/lang/String;)V
    .locals 1

    .line 119
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.trace_event"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.xiaomi.market"

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.event_list"

    .line 121
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMarketService error="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OperationIconEventTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final onAppDeepLinkClick(Lcom/miui/home/launcher/operationicon/OperationIconInfo;ZZ)V
    .locals 1

    const-string v0, "iconInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;-><init>(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Lcom/miui/home/launcher/operationicon/OperationIconInfo;ZZ)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V
    .locals 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->lastExposeCheckTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->exposeCheckInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->getExposeIcons(Lcom/miui/home/launcher/Launcher;J)Ljava/util/List;

    move-result-object p1

    .line 49
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getExposeCheckInterval()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x1388

    :goto_0
    iput v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->exposeCheckInterval:I

    .line 51
    new-instance v2, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;-><init>(Ljava/util/List;Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    .line 58
    :cond_2
    iput-wide v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->lastExposeCheckTime:J

    return-void
.end method
