.class public Lcom/xiaomi/analytics/internal/v1/DexAnalytics;
.super Ljava/lang/Object;
.source "DexAnalytics.java"

# interfaces
.implements Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mContext:Landroid/content/Context;

.field private mDexPath:Ljava/lang/String;

.field private volatile mInitialized:Z

.field private mLibPath:Ljava/lang/String;

.field private mVersion:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mDexPath:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mLibPath:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 31
    iget p2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p2, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersion:I

    .line 32
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    return-void
.end method

.method private initAnalytics()V
    .locals 8

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.miui.analytics.Analytics"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initialize"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 38
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersion:I

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "DexAnalytics"

    .line 41
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initAnalytics exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteAllEvents(Ljava/lang/String;)V
    .locals 5

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 162
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v0, "com.miui.analytics.Analytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "deleteAllEvents"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 163
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 164
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "DexAnalytics"

    .line 166
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "deleteAllEvents exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getClientExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 84
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.miui.analytics.Analytics"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

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

    .line 85
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "DexAnalytics"

    .line 88
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getClientExtra exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/Version;
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 6

    const-string v0, "DexAnalytics"

    .line 55
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mInitialized:Z

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mDexPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    const-string v4, "dex"

    const/4 v5, 0x0

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mLibPath:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->initAnalytics()V

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mInitialized:Z

    const-string p0, "initialized"

    .line 68
    invoke-static {v0, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "init e"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isPolicyReady(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 97
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isPolicyReady"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 98
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "DexAnalytics"

    .line 101
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isPolicyReady exception"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setDebugOn(Z)V
    .locals 5

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 134
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v0, "com.miui.analytics.Analytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "setDebugOn"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 135
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "DexAnalytics"

    .line 138
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setDebugOn exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 150
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v0, "com.miui.analytics.Analytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "setDefaultPolicy"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 151
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    .line 152
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "DexAnalytics"

    .line 154
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "setDefaultPolicy exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 5

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 110
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v0, "com.miui.analytics.Analytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "trackEvent"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 111
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 112
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "DexAnalytics"

    .line 114
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "trackEvent exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public trackEvents([Ljava/lang/String;)V
    .locals 5

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 122
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v0, "com.miui.analytics.Analytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "trackEvents"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 123
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 124
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "DexAnalytics"

    .line 126
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "trackEvents exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
