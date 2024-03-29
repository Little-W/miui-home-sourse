.class public Lcom/miui/home/recents/OneHandedModeInputConsumer;
.super Ljava/lang/Object;
.source "OneHandedModeInputConsumer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsOneHandedModeEnabled:Z

.field private final mOneHandedModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mIsOneHandedModeEnabled:Z

    .line 35
    new-instance v0, Lcom/miui/home/recents/OneHandedModeInputConsumer$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/OneHandedModeInputConsumer$1;-><init>(Lcom/miui/home/recents/OneHandedModeInputConsumer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mOneHandedModeObserver:Landroid/database/ContentObserver;

    .line 31
    iput-object p1, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->setOneHandModeEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/OneHandedModeInputConsumer;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->setOneHandModeEnabled()V

    return-void
.end method

.method private setOneHandModeEnabled()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_handed_mode_enabled"

    .line 55
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mIsOneHandedModeEnabled:Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneHandedModeEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mIsOneHandedModeEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHome:OneHandedModeInputConsumer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isOneHandedModeActive()Z
    .locals 2

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getSystemUiStateFlags()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/high16 v1, 0x10000

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isOneHandedModeEnabled()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mIsOneHandedModeEnabled:Z

    return p0
.end method

.method public registerOneHandModeObserver()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_handed_mode_enabled"

    .line 44
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mOneHandedModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public startOrStopOneHandMode(Landroid/content/Context;FF)V
    .locals 1

    sub-float/2addr p2, p3

    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startOrStopOneHandMode: yDistance = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MiuiHome:OneHandedModeInputConsumer"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->isOneHandedModeActive()Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    cmpg-float p0, p2, p3

    if-gez p0, :cond_1

    .line 80
    sget-object p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->stopOneHandedMode()V

    goto :goto_0

    :cond_0
    cmpl-float p0, p2, p3

    if-lez p0, :cond_1

    .line 85
    sget-object p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startOneHandedMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterOneHandModeObserver()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    iget-object p0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer;->mOneHandedModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
