.class public final Lcom/miui/home/launcher/operationicon/OperationIconManager;
.super Ljava/lang/Object;
.source "OperationIconManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconManager.kt\ncom/miui/home/launcher/operationicon/OperationIconManager\n*L\n1#1,103:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconManager;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;

    .line 14
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final updateProgressIconInfo(Ljava/lang/String;Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V
    .locals 0

    .line 84
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->setLocalIconUri(Ljava/lang/String;)V

    .line 85
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->update(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    return-void
.end method


# virtual methods
.method public final updateIconInfo(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V
    .locals 5

    if-eqz p1, :cond_d

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIconInfo status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isFirstAdd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",fromIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->isFromIntentSource()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n iconInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getOperationIconInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationIconManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getOperationIconInfo()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

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
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->isFromIntentSource()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 51
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->removeIfNeed(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    .line 60
    :cond_4
    sget-object p2, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 61
    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getOriginData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getOperationIconInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 62
    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getLocalIconUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_8

    .line 63
    :cond_6
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->setEnable(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/operationicon/OperationIconManager;->updateProgressIconInfo(Ljava/lang/String;Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    :cond_8
    return-void

    :cond_9
    move-object p2, v0

    .line 70
    :cond_a
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getOperationIconInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 71
    sget-object v3, Lcom/miui/home/launcher/operationicon/OperationIconManager;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;

    const/4 v4, 0x2

    invoke-static {v3, v2, v0, v4, v0}, Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;->generateIconInfo$default(Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;Ljava/lang/String;Lcom/squareup/moshi/Moshi;ILjava/lang/Object;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz p2, :cond_b

    .line 72
    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isSameOperatePlan(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)Z

    move-result v3

    if-ne v3, v1, :cond_b

    invoke-virtual {v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getDelayDeepLinkType()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 74
    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp()Z

    move-result p2

    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->setOpenDp(Z)V

    .line 76
    :cond_b
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/operationicon/OperationIconManager;->updateProgressIconInfo(Ljava/lang/String;Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    :cond_d
    return-void
.end method

.method public final updateIconInfoList(Ljava/lang/String;)V
    .locals 0

    .line 92
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    return-void

    .line 93
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconManager;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;->access$generateIconInfoList(Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 95
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->clearExpiredData()V

    return-void

    .line 100
    :cond_3
    sget-object p1, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->updateList(Ljava/util/List;)V

    :cond_4
    return-void
.end method
