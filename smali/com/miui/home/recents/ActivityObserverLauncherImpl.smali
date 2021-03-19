.class public Lcom/miui/home/recents/ActivityObserverLauncherImpl;
.super Ljava/lang/Object;
.source "ActivityObserverLauncherImpl.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityObserverLauncher;
.implements Ljava/lang/Runnable;


# static fields
.field private static instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private final mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

.field private mTopActivity:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;-><init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)V

    iput-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMainHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "activity_observer_thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/ActivityObserverLauncherImpl;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mTopActivity:Landroid/content/ComponentName;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;
    .locals 2

    .line 44
    sget-object v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-direct {v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;-><init>()V

    sput-object v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTopActivity()Landroid/content/ComponentName;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mTopActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public registerMiuiActivityObserver(Landroid/content/Context;Landroid/app/IMiuiActivityObserver;)V
    .locals 8

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "activity"

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_1

    const-string p1, "ActivityObserverLauncherImpl"

    const-string p2, "registerMiuiActivityObserver am = null"

    .line 168
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x0

    .line 172
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 173
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "registerActivityObserver"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/IMiuiActivityObserver;

    aput-object v6, v5, v2

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 174
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v2

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    aput-object p2, v0, v7

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ActivityObserverLauncherImpl"

    const-string p2, "registerMiuiActivityObserver success"

    .line 177
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ActivityObserverLauncherImpl"

    const-string v0, "registerMiuiActivityObserver error"

    .line 179
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->registerMiuiActivityObserver(Landroid/content/Context;Landroid/app/IMiuiActivityObserver;)V

    return-void
.end method
