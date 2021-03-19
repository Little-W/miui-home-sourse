.class public abstract Lcom/miui/home/launcher/compat/LauncherThemeCompat;
.super Ljava/lang/Object;
.source "LauncherThemeCompat.java"

# interfaces
.implements Lcom/miui/home/launcher/common/IconSizeProvider;


# static fields
.field private static final CLASSIC_DEVICE_V10:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->sInstanceLock:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    .line 20
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    const-string v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    const-string v1, "ginkgo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    const-string v1, "olive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    const-string v1, "crux"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    const-string v1, "willow"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;
    .locals 3

    .line 30
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    if-nez v1, :cond_2

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 35
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_10:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->CLASSIC_DEVICE_V10:Ljava/util/HashSet;

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    .line 42
    :cond_2
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract enableAndResetCache()V
.end method

.method public abstract getTitleMarginTop()I
.end method

.method isThemeOverride(I)Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getThemeValues()Lmiui/content/res/ThemeValues;

    move-result-object v0

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
