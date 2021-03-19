.class public final enum Lcom/tencent/matrix/AppActiveMatrixDelegate;
.super Ljava/lang/Enum;
.source "AppActiveMatrixDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/matrix/AppActiveMatrixDelegate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/matrix/AppActiveMatrixDelegate;

.field public static final enum INSTANCE:Lcom/tencent/matrix/AppActiveMatrixDelegate;


# instance fields
.field private controller:Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;

.field private currentFragmentName:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isAppForeground:Z

.field private isInit:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/matrix/listeners/IAppForeground;",
            ">;"
        }
    .end annotation
.end field

.field private visibleScene:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/matrix/AppActiveMatrixDelegate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->INSTANCE:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lcom/tencent/matrix/AppActiveMatrixDelegate;

    sget-object v1, Lcom/tencent/matrix/AppActiveMatrixDelegate;->INSTANCE:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->$VALUES:[Lcom/tencent/matrix/AppActiveMatrixDelegate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->listeners:Ljava/util/Set;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isAppForeground:Z

    const-string p2, "default"

    .line 31
    iput-object p2, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->visibleScene:Ljava/lang/String;

    .line 32
    new-instance p2, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;-><init>(Lcom/tencent/matrix/AppActiveMatrixDelegate;Lcom/tencent/matrix/AppActiveMatrixDelegate$1;)V

    iput-object p2, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->controller:Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;

    .line 33
    iput-boolean p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isInit:Z

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/matrix/AppActiveMatrixDelegate;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isAppForeground:Z

    return p0
.end method

.method static synthetic access$102(Lcom/tencent/matrix/AppActiveMatrixDelegate;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isAppForeground:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/matrix/AppActiveMatrixDelegate;)Ljava/util/Set;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/matrix/AppActiveMatrixDelegate;Landroid/app/Activity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->updateScene(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/matrix/AppActiveMatrixDelegate;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->onDispatchForeground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/matrix/AppActiveMatrixDelegate;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->onDispatchBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/matrix/AppActiveMatrixDelegate;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->visibleScene:Ljava/lang/String;

    return-object p0
.end method

.method public static getTopActivityName()Ljava/lang/String;
    .locals 9

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "android.app.ActivityThread"

    .line 200
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "currentActivityThread"

    .line 201
    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "mActivities"

    .line 202
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 203
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 206
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-ge v7, v8, :cond_0

    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 211
    :goto_0
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v4, :cond_1

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "[getTopActivityName] Cost:%s"

    .line 229
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/tencent/matrix/util/MatrixLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 214
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "paused"

    .line 216
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 217
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 218
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v5, "activity"

    .line 219
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 220
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 222
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "[getTopActivityName] Cost:%s"

    .line 229
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/tencent/matrix/util/MatrixLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 228
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "[getTopActivityName] Cost:%s"

    .line 229
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v5

    .line 226
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "[getTopActivityName] Cost:%s"

    .line 229
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    :goto_1
    invoke-static {v0, v1, v4}, Lcom/tencent/matrix/util/MatrixLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 228
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 229
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Matrix.AppActiveDelegate"

    const-string v3, "[getTopActivityName] Cost:%s"

    invoke-static {v1, v3, v0}, Lcom/tencent/matrix/util/MatrixLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    throw v2
.end method

.method private onDispatchBackground(Ljava/lang/String;)V
    .locals 4

    .line 88
    iget-boolean v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isAppForeground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isInit:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "onBackground... visibleScene[%s]"

    const/4 v2, 0x1

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/matrix/AppActiveMatrixDelegate$2;

    invoke-direct {v0, p0}, Lcom/tencent/matrix/AppActiveMatrixDelegate$2;-><init>(Lcom/tencent/matrix/AppActiveMatrixDelegate;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private onDispatchForeground(Ljava/lang/String;)V
    .locals 4

    .line 68
    iget-boolean v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isAppForeground:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isInit:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "onForeground... visibleScene[%s]"

    const/4 v2, 0x1

    .line 72
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/matrix/AppActiveMatrixDelegate$1;

    invoke-direct {v0, p0}, Lcom/tencent/matrix/AppActiveMatrixDelegate$1;-><init>(Lcom/tencent/matrix/AppActiveMatrixDelegate;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateScene(Landroid/app/Activity;)V
    .locals 0

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->visibleScene:Ljava/lang/String;

    return-void
.end method

.method private updateScene(Ljava/lang/String;)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "?"

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->visibleScene:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/matrix/AppActiveMatrixDelegate;
    .locals 1

    .line 24
    const-class v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;

    return-object p0
.end method

.method public static values()[Lcom/tencent/matrix/AppActiveMatrixDelegate;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->$VALUES:[Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-virtual {v0}, [Lcom/tencent/matrix/AppActiveMatrixDelegate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/matrix/AppActiveMatrixDelegate;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/tencent/matrix/listeners/IAppForeground;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->listeners:Ljava/util/Set;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentFragmentName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->currentFragmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleScene()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->visibleScene:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isInit:Z

    if-eqz v0, :cond_0

    const-string p1, "Matrix.AppActiveDelegate"

    const-string v0, "has inited!"

    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isInit:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/matrix/util/MatrixHandlerThread;->getDefaultHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->handler:Landroid/os/Handler;

    .line 44
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->controller:Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 45
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->controller:Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public isAppForeground()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isAppForeground:Z

    return v0
.end method

.method public removeListener(Lcom/tencent/matrix/listeners/IAppForeground;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->listeners:Ljava/util/Set;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCurrentFragmentName(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "[setCurrentFragmentName] fragmentName:%s"

    const/4 v2, 0x1

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->currentFragmentName:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->updateScene(Ljava/lang/String;)V

    return-void
.end method
