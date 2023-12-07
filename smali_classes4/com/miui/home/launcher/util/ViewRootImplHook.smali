.class public Lcom/miui/home/launcher/util/ViewRootImplHook;
.super Ljava/lang/Object;
.source "ViewRootImplHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/ViewRootImplHook$ViewRootImplDisplayListenerHooker;
    }
.end annotation


# instance fields
.field private mDisplayListenerHook:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mHooked:Z

.field private mScheduleTraversals:Ljava/lang/reflect/Method;

.field private mViewRootImpl:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mHooked:Z

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/util/ViewRootImplHook;
    .locals 1

    .line 31
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;-><init>()V

    return-object v0
.end method


# virtual methods
.method public hookViewRootImpl(Lcom/miui/home/launcher/Launcher;)V
    .locals 8

    const-string v0, "Launcher_ViewRootImplHook"

    .line 38
    iget-boolean v1, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mHooked:Z

    if-eqz v1, :cond_0

    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "android.view.ViewRootImpl"

    .line 45
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mDisplayListener"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    .line 47
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    new-instance v5, Lcom/miui/home/launcher/util/ViewRootImplHook$ViewRootImplDisplayListenerHooker;

    invoke-direct {v5, v2}, Lcom/miui/home/launcher/util/ViewRootImplHook$ViewRootImplDisplayListenerHooker;-><init>(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    .line 50
    invoke-static {v6, v7, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object v5, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mDisplayListenerHook:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-string v5, "mHandler"

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 54
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v6

    check-cast v2, Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {v6, v2}, Lcom/miui/home/launcher/common/Utilities;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    iget-object v6, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mDisplayListenerHook:Landroid/hardware/display/DisplayManager$DisplayListener;

    check-cast v5, Landroid/os/Handler;

    invoke-static {v2, v6, v5}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mViewRootImpl:Ljava/lang/Object;

    const-string p1, "scheduleTraversals"

    new-array v2, v3, [Ljava/lang/Class;

    .line 60
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mScheduleTraversals:Ljava/lang/reflect/Method;

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mScheduleTraversals:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string p1, "hook success"

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-boolean v4, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mHooked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "hookViewRootImpl"

    .line 65
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public releaseHook()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mDisplayListenerHook:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/Utilities;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public scheduleTraversal()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mScheduleTraversals:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/util/ViewRootImplHook;->mViewRootImpl:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher_ViewRootImplHook"

    const-string v1, "scheduleTraversal"

    .line 78
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
