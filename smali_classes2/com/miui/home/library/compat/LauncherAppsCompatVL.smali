.class public Lcom/miui/home/library/compat/LauncherAppsCompatVL;
.super Lcom/miui/home/library/compat/LauncherAppsCompat;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            "Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mCallbacks:Landroid/util/ArrayMap;

    .line 30
    iput-object p1, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method


# virtual methods
.method public addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;

    invoke-direct {v0, p1}, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;-><init>(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 70
    iget-object v1, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object p1, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 46
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 50
    iget-object p2, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    :cond_0
    return-object v1

    .line 54
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 57
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x800000

    and-int/2addr p2, p3

    if-eqz p2, :cond_3

    :cond_2
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_4

    :cond_3
    return-object v1

    :cond_4
    return-object p1

    :catch_0
    return-object v1
.end method

.method public hasShortcutHostPermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    return-object p1
.end method
