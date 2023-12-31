.class public abstract Lcom/miui/home/library/compat/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/library/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;
    .locals 2

    .line 53
    sget-object v0, Lcom/miui/home/library/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/miui/home/library/compat/LauncherAppsCompat;->sInstance:Lcom/miui/home/library/compat/LauncherAppsCompat;

    if-nez v1, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 58
    :cond_0
    sget-boolean v1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO:Z

    if-eqz v1, :cond_1

    .line 59
    new-instance v1, Lcom/miui/home/library/compat/LauncherAppsCompatVO;

    invoke-direct {v1, p0}, Lcom/miui/home/library/compat/LauncherAppsCompatVO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/library/compat/LauncherAppsCompat;->sInstance:Lcom/miui/home/library/compat/LauncherAppsCompat;

    goto :goto_0

    .line 60
    :cond_1
    sget-boolean v1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Lcom/miui/home/library/compat/LauncherAppsCompatVN_MR1;

    invoke-direct {v1, p0}, Lcom/miui/home/library/compat/LauncherAppsCompatVN_MR1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/library/compat/LauncherAppsCompat;->sInstance:Lcom/miui/home/library/compat/LauncherAppsCompat;

    goto :goto_0

    .line 63
    :cond_2
    new-instance v1, Lcom/miui/home/library/compat/LauncherAppsCompatVL;

    invoke-direct {v1, p0}, Lcom/miui/home/library/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/library/compat/LauncherAppsCompat;->sInstance:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 66
    :cond_3
    :goto_0
    sget-object p0, Lcom/miui/home/library/compat/LauncherAppsCompat;->sInstance:Lcom/miui/home/library/compat/LauncherAppsCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
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
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
.end method
