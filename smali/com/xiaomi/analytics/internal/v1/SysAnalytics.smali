.class public Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
.super Ljava/lang/Object;
.source "SysAnalytics.java"

# interfaces
.implements Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;


# instance fields
.field private mAnalytics:Lcom/miui/analytics/ICore;

.field private final mConnLock:Ljava/lang/Object;

.field private mConnected:Z

.field private mConnecting:Z

.field private mContext:Landroid/content/Context;

.field private mOnline:Z

.field private final mPendingEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSyncGuard:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    .line 30
    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    .line 31
    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    .line 85
    new-instance v0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;-><init>(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 39
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->isServiceBuiltIn(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    .line 41
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->bindService()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Lcom/miui/analytics/ICore;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->drainPendingEvents()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    return-object p0
.end method

.method private bindService()V
    .locals 4

    .line 45
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.AnalyticsService"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 50
    iput-boolean v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    const-string v0, "SysAnalytics"

    const-string v1, "try bind sys service"

    .line 51
    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SysAnalytics"

    .line 53
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind service exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private drainPendingEvents()V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;-><init>(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private ensureService()V
    .locals 8

    .line 75
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->bindService()V

    goto :goto_1

    :cond_1
    const-string v1, "SysAnalytics"

    const-string v2, "ensureService mConnecting:%s, mConnected:%s, mAnalytics:%d"

    const/4 v3, 0x3

    .line 80
    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 4

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 161
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string v0, "com.miui.analytics.ICore"

    .line 162
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVersionName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 163
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SysAnalytics"

    .line 167
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getVersionName exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v0, "0.0.0"

    return-object v0
.end method

.method public static isServiceBuiltIn(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 60
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.AnalyticsService"

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "SysAnalytics"

    .line 69
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isServiceBuiltIn exception:"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public deleteAllEvents(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "SysAnalytics"

    const-string v1, "deleteAllEvents"

    .line 286
    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 288
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string v0, "com.miui.analytics.ICore"

    .line 289
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "deleteAllEvents"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 290
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 291
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SysAnalytics"

    .line 294
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteAllEvents exception:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getClientExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 221
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string v0, "com.miui.analytics.ICore"

    .line 222
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getClientExtra"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 223
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SysAnalytics"

    .line 227
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClientExtra exception:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/Version;
    .locals 2

    .line 174
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isOnline()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    return v0
.end method

.method public isPolicyReady(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 236
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_0

    const-string v1, "com.miui.analytics.ICore"

    .line 237
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isPolicyReady"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 238
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v1, "SysAnalytics"

    .line 242
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPolicyReady exception:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public setDebugOn(Z)V
    .locals 6

    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 251
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string v0, "com.miui.analytics.ICore"

    .line 252
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDebugOn"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 253
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v2, v2, [Ljava/lang/Object;

    .line 254
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SysAnalytics"

    .line 257
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDebugOn exception:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 264
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 265
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string v0, "com.miui.analytics.ICore"

    .line 266
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDefaultPolicy"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 267
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    .line 268
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SysAnalytics"

    .line 271
    invoke-static {p2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "setDefaultPolicy exception:"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 6

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 181
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "SysAnalytics"

    const-string v0, "add 1 event into pending event list"

    .line 185
    invoke-static {p1, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 184
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_0
    const-string v0, "com.miui.analytics.ICore"

    .line 187
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "trackEvent"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 188
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SysAnalytics"

    .line 192
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackEvent exception:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackEvents([Ljava/lang/String;)V
    .locals 6

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 200
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 202
    :try_start_1
    array-length v3, p1

    if-lez v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    invoke-static {v3, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 205
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "SysAnalytics"

    const-string v3, "add %d events into pending event list"

    .line 206
    new-array v1, v1, [Ljava/lang/Object;

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    array-length p1, p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 205
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_2
    const-string v0, "com.miui.analytics.ICore"

    .line 208
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "trackEvents"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    aput-object v5, v4, v2

    .line 209
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 210
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "SysAnalytics"

    .line 213
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackEvents exception:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public waitForConnected()V
    .locals 4

    .line 144
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    if-eqz v0, :cond_1

    .line 145
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    sget v2, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_SECOND_IN_MS:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SysAnalytics"

    .line 152
    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "waitForConnected mSyncGuard.wait exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method
