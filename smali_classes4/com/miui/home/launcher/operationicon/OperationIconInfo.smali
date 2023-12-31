.class public final Lcom/miui/home/launcher/operationicon/OperationIconInfo;
.super Ljava/lang/Object;
.source "OperationIconCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconCache.kt\ncom/miui/home/launcher/operationicon/OperationIconInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,316:1\n1819#2,2:317\n*E\n*S KotlinDebug\n*F\n+ 1 OperationIconCache.kt\ncom/miui/home/launcher/operationicon/OperationIconInfo\n*L\n246#1,2:317\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconInfo$Companion;


# instance fields
.field private delayDeepLink:Ljava/lang/String;

.field private transient delayDeepLinkIntent:Landroid/content/Intent;

.field private delayDeepLinkType:I

.field private dpEndTimestamp:Ljava/lang/Long;

.field private dpStartTimestamp:Ljava/lang/Long;

.field private exposeCheckInterval:Ljava/lang/Integer;

.field private exposeIntervalSec:Ljava/lang/Integer;

.field private icon:Ljava/lang/String;

.field private iconEndTimestamp:Ljava/lang/Long;

.field private iconId:Ljava/lang/String;

.field private iconStartTimestamp:Ljava/lang/Long;

.field private isEnable:Z

.field private isOpenDp:Z

.field private transient lastExposeTimestamp:J

.field private localIconUri:Ljava/lang/String;

.field private operateId:Ljava/lang/Integer;

.field private transient originData:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->icon:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconId:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconStartTimestamp:Ljava/lang/Long;

    iput-object p7, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEndTimestamp:Ljava/lang/Long;

    iput-object p8, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    iput p9, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkType:I

    iput-object p10, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpStartTimestamp:Ljava/lang/Long;

    iput-object p11, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEndTimestamp:Ljava/lang/Long;

    iput-object p12, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeCheckInterval:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeIntervalSec:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isEnable:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 179
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 180
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 181
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 182
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 183
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 184
    move-object v7, v2

    check-cast v7, Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 185
    move-object v8, v2

    check-cast v8, Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 186
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x2

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 188
    move-object v11, v2

    check-cast v11, Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 189
    check-cast v2, Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    const/16 v12, 0x1388

    .line 190
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const/16 v0, 0xb4

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_c
    move-object/from16 v0, p13

    :goto_c
    move-object p1, v1

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v2

    move-object/from16 p12, v12

    move-object/from16 p13, v0

    invoke-direct/range {p0 .. p13}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final isDpIntentAvailable(Landroid/content/Intent;)Z
    .locals 5

    .line 246
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const-string v0, "Application.getInstance(\u2026tentActivities(intent, 0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 317
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 250
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_1

    .line 249
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method private final isInDpExpiryDate(J)Z
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEndTimestamp:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, p1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpStartTimestamp:Ljava/lang/Long;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    cmp-long p0, p1, v1

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    and-int p0, v0, v3

    return p0
.end method

.method private final isInIconExpiryDate(J)Z
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEndTimestamp:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, p1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconStartTimestamp:Ljava/lang/Long;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    cmp-long p0, p1, v1

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    and-int p0, v0, v3

    return p0
.end method

.method private final runAsyncIfNeed(Ljava/lang/Runnable;)V
    .locals 1

    .line 282
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 283
    invoke-static {p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final dpEnable(J)Z
    .locals 3

    .line 304
    iget-boolean v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isInDpExpiryDate(J)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEnable(J)Z

    move-result p0

    and-int/2addr p0, v0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->icon:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->icon:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconId:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconStartTimestamp:Ljava/lang/Long;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconStartTimestamp:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEndTimestamp:Ljava/lang/Long;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEndTimestamp:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkType:I

    iget v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpStartTimestamp:Ljava/lang/Long;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpStartTimestamp:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEndTimestamp:Ljava/lang/Long;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEndTimestamp:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeCheckInterval:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeCheckInterval:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeIntervalSec:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeIntervalSec:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final generateDeepLinkIntent()Landroid/content/Intent;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 227
    :try_start_0
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10200000

    .line 228
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "launchIntent"

    .line 231
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isDpIntentAvailable(Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateDeepLinkIntent error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OperationIconInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public final getDelayDeepLink()Ljava/lang/String;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    return-object p0
.end method

.method public final getDelayDeepLinkIntent()Landroid/content/Intent;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getDelayDeepLinkType()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkType:I

    return p0
.end method

.method public final getExposeCheckInterval()Ljava/lang/Integer;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeCheckInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getExposeIntervalSec()Ljava/lang/Integer;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeIntervalSec:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getIconId()Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastExposeTimestamp()J
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->lastExposeTimestamp:J

    return-wide v0
.end method

.method public final getLocalIconUri()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    return-object p0
.end method

.method public final getOperateId()Ljava/lang/Integer;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getOriginData()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->originData:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->icon:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconStartTimestamp:Ljava/lang/Long;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEndTimestamp:Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpStartTimestamp:Ljava/lang/Long;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEndTimestamp:Ljava/lang/Long;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeCheckInterval:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeIntervalSec:Ljava/lang/Integer;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_b
    add-int/2addr v0, v1

    return v0
.end method

.method public final iconEnable(J)Z
    .locals 2

    .line 299
    iget-boolean v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isEnable:Z

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isValid()Z

    move-result v1

    and-int/2addr v0, v1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isInIconExpiryDate(J)Z

    move-result p0

    and-int/2addr p0, v0

    return p0
.end method

.method public final isEnable()Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isEnable:Z

    return p0
.end method

.method public final isOpenDp()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp:Z

    return p0
.end method

.method public final isRetainLocalData(J)Z
    .locals 4

    .line 296
    iget-boolean v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isInDpExpiryDate(J)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final isSameOperatePlan(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)Z
    .locals 1

    const-string v0, "newIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isValid()Z
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    if-nez v0, :cond_3

    return v2

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    return v2

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconStartTimestamp:Ljava/lang/Long;

    if-nez v0, :cond_7

    return v2

    .line 263
    :cond_7
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEndTimestamp:Ljava/lang/Long;

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public final setDelayDeepLinkIntent(Landroid/content/Intent;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkIntent:Landroid/content/Intent;

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isEnable:Z

    return-void
.end method

.method public final setLastExposeTimestamp(J)V
    .locals 0

    .line 205
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->lastExposeTimestamp:J

    return-void
.end method

.method public final setLocalIconUri(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    return-void
.end method

.method public final setOpenDp(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp:Z

    return-void
.end method

.method public final setOriginData(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->originData:Ljava/lang/String;

    return-void
.end method

.method public final syncIconEnableState(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isEnable:Z

    .line 276
    new-instance p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo$syncIconEnableState$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/operationicon/OperationIconInfo$syncIconEnableState$1;-><init>(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->runAsyncIfNeed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final syncOpenDpState(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp:Z

    .line 269
    new-instance p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo$syncOpenDpState$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/operationicon/OperationIconInfo$syncOpenDpState$1;-><init>(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->runAsyncIfNeed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationIconInfo(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->operateId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localIconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->localIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconStartTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconStartTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconEndTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEndTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delayDeepLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delayDeepLinkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dpStartTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpStartTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dpEndTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEndTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exposeCheckInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeCheckInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exposeIntervalSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->exposeIntervalSec:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDeepLinkIntent()V
    .locals 4

    .line 218
    iget-boolean v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp:Z

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLink:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEndTimestamp:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    :goto_2
    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_3

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->generateDeepLinkIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->delayDeepLinkIntent:Landroid/content/Intent;

    :cond_4
    :goto_3
    return-void
.end method
