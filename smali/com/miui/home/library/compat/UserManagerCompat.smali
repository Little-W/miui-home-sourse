.class public abstract Lcom/miui/home/library/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# static fields
.field private static sInstance:Lcom/miui/home/library/compat/UserManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/library/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;
    .locals 2

    .line 36
    sget-object v0, Lcom/miui/home/library/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/miui/home/library/compat/UserManagerCompat;->sInstance:Lcom/miui/home/library/compat/UserManagerCompat;

    if-nez v1, :cond_3

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 41
    :cond_0
    sget-boolean v1, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_P:Z

    if-eqz v1, :cond_1

    .line 42
    new-instance v1, Lcom/miui/home/library/compat/UserManagerCompatVP;

    invoke-direct {v1, p0}, Lcom/miui/home/library/compat/UserManagerCompatVP;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/library/compat/UserManagerCompat;->sInstance:Lcom/miui/home/library/compat/UserManagerCompat;

    goto :goto_0

    .line 43
    :cond_1
    sget-boolean v1, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_NOUGAT:Z

    if-eqz v1, :cond_2

    .line 44
    new-instance v1, Lcom/miui/home/library/compat/UserManagerCompatVN;

    invoke-direct {v1, p0}, Lcom/miui/home/library/compat/UserManagerCompatVN;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/library/compat/UserManagerCompat;->sInstance:Lcom/miui/home/library/compat/UserManagerCompat;

    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Lcom/miui/home/library/compat/UserManagerCompatVL;

    invoke-direct {v1, p0}, Lcom/miui/home/library/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/library/compat/UserManagerCompat;->sInstance:Lcom/miui/home/library/compat/UserManagerCompat;

    .line 49
    :cond_3
    :goto_0
    sget-object p0, Lcom/miui/home/library/compat/UserManagerCompat;->sInstance:Lcom/miui/home/library/compat/UserManagerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isWorkUser(Landroid/os/UserHandle;)Z
    .locals 1

    .line 105
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract enableAndResetCache()V
.end method

.method public abstract getSerialNumberForUser(Landroid/os/UserHandle;)J
.end method

.method public abstract getUserForSerialNumber(J)Landroid/os/UserHandle;
.end method

.method public abstract getUserForUserId(I)Landroid/os/UserHandle;
.end method

.method public abstract getUserProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end method

.method public hasWorkUser()Z
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 97
    invoke-static {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->isWorkUser(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAnyProfileQuietModeEnabled()Z
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 76
    invoke-static {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->isWorkUser(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isQuietModeEnabled(Landroid/os/UserHandle;)Z
.end method

.method public abstract isUserUnlocked(Landroid/os/UserHandle;)Z
.end method

.method public requestQuietModeEnabled(Landroid/content/Context;Z)V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 88
    invoke-static {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->isWorkUser(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->requestQuietModeEnabled(Landroid/content/Context;ZLandroid/os/UserHandle;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract requestQuietModeEnabled(Landroid/content/Context;ZLandroid/os/UserHandle;)Z
.end method
