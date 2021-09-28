.class public abstract Lcom/miui/home/smallwindow/SmallWindowStateHelper;
.super Ljava/lang/Object;
.source "SmallWindowStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/smallwindow/SmallWindowStateHelper;


# instance fields
.field public final mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

.field public mContext:Landroid/content/Context;

.field public mSmallWindowStateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->mSmallWindowStateCallbacks:Ljava/util/Set;

    .line 60
    invoke-static {}, Lcom/miui/home/smallwindow/BackgroundExecutor;->get()Lcom/miui/home/smallwindow/BackgroundExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;
    .locals 1

    .line 39
    sget-object v0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->sInstance:Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isMiuiFreeFormManagerClassExit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-direct {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;-><init>()V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-direct {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;-><init>()V

    :goto_0
    sput-object v0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->sInstance:Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    .line 44
    :cond_1
    sget-object v0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->sInstance:Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    return-object v0
.end method

.method private static isMiuiFreeFormManagerClassExit()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.app.MiuiFreeFormManager"

    .line 49
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchFreeFormStackModeChanged"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    const-class v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "isMiuiFreeFormManagerClassExit = true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return v5

    :catch_0
    move-exception v1

    const-string v2, "SmallWindowStateHelper"

    const-string v3, "isMiuiFreeFormManagerClassExit = false"

    .line 54
    return v0
.end method


# virtual methods
.method public addCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->mSmallWindowStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract canEnterSmallWindow()Z
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public abstract isInSmallWindowMode()Z
.end method

.method public abstract isLastValidSmallWindowPackageName(Ljava/lang/String;)Z
.end method

.method public abstract isPkgInSmallWindowMode(Ljava/lang/String;)Z
.end method

.method public launchFullScreenFromFreeform(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 4

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action_launch_fullscreen_from_freeform"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const-string v1, "rootStackID"

    .line 70
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "packageName"

    .line 73
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v1, "userID"

    .line 75
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SmallWindowStateHelper"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchFullScreenFromFreeform, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", packageName="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", userId="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public removeCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->mSmallWindowStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
