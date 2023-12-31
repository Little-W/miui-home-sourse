.class public final Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor;
.super Ljava/lang/Object;
.source "OperationIconClickInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconClickInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconClickInterceptor.kt\ncom/miui/home/launcher/operationicon/OperationIconClickInterceptor\n*L\n1#1,45:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor$Companion;

    .line 12
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor;->instance$delegate:Lkotlin/Lazy;

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
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final isFirstLaunch(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 43
    iget p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 p1, 0x4

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getLaunchDpIntent(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    .line 21
    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 24
    sget-object v3, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {v3}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->dpEnable(J)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getDelayDeepLinkIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->generateDeepLinkIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->setDelayDeepLinkIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 31
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    check-cast v0, Landroid/os/Parcelable;

    const-string v3, "profile"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->syncOpenDpState(Z)V

    .line 36
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    move-result-object v0

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconClickInterceptor;->isFirstLaunch(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    invoke-virtual {v0, v2, v4, p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->onAppDeepLinkClick(Lcom/miui/home/launcher/operationicon/OperationIconInfo;ZZ)V

    :cond_4
    return-object v1
.end method
