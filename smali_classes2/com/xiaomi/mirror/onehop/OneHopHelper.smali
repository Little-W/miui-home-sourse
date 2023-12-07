.class public Lcom/xiaomi/mirror/onehop/OneHopHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;,
        Lcom/xiaomi/mirror/onehop/OneHopHelper$Holder;
    }
.end annotation


# static fields
.field public static final ABORT_BROADCAST:Z = true

.field private static final ACTION_ONEHOP_MIRROR:Ljava/lang/String; = "com.miui.onehop.action.MIRROR"

.field private static final EXTRA_ABILITY_LYRA:Ljava/lang/String; = "_ability_lyra"

.field private static final EXTRA_BT_MAC:Ljava/lang/String; = "_bt_mac"

.field private static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "_device_type"

.field private static final FILESHARE_PRIORITY:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "OneHopHelper"

.field private static final METADATA_KEY_LYRA:Ljava/lang/String; = "com.xiaomi.continuity.VERSION_NAME"

.field private static final METADATA_KEY_MIRROR:Ljava/lang/String; = "com.xiaomi.mirror.nfc"

.field private static final METADATA_KEY_MISHARE:Ljava/lang/String; = "com.miui.mishare.connectivity.nfc"

.field public static final NOT_ABORT_BROADCAST:Z = false

.field public static final ONE_HOP_VERSION_INVALID:I = -0x1

.field public static final ONE_HOP_VERSION_MIRROR:I = 0x0

.field public static final ONE_HOP_VERSION_MISHARE:I = 0x1

.field private static final PACKAGE_LYRA:Ljava/lang/String; = "com.xiaomi.mi_connect_service"

.field private static final PACKAGE_MIRROR:Ljava/lang/String; = "com.xiaomi.mirror"

.field private static final PACKAGE_MISHARE:Ljava/lang/String; = "com.miui.mishare.connectivity"

.field private static final PERMISSION_ONEHOP_MIRROR:Ljava/lang/String; = "com.miui.onehop.permission.MIRROR"

.field private static volatile sManager:Lcom/xiaomi/mirror/onehop/OneHopHelper;


# instance fields
.field private mHasInitialize:Z

.field private mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

.field private mSelfIsSupportLyra:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mHasInitialize:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mirror/onehop/OneHopHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mirror/onehop/OneHopHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->checkAbilitySupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkAbilitySupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0, p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private checkIsSupportLyra(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.xiaomi.mi_connect_service"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "com.xiaomi.continuity.VERSION_NAME"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public static getInstance()Lcom/xiaomi/mirror/onehop/OneHopHelper;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mirror/onehop/OneHopHelper$Holder;->access$100()Lcom/xiaomi/mirror/onehop/OneHopHelper;

    move-result-object v0

    return-object v0
.end method

.method private getMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OneHopHelper"

    const-string p2, "name not found"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public registerOneHopShareReceiver(Landroid/content/Context;Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "OneHopHelper"

    if-eq v0, v1, :cond_0

    const-string p0, "register oneHopShareReceiver must in mainThread"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mHasInitialize:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->checkIsSupportLyra(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mHasInitialize:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "self is support lyra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->unregisterOneHopShareReceiver(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;-><init>(Lcom/xiaomi/mirror/onehop/OneHopHelper;Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v0, "com.miui.onehop.action.MIRROR"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    const-string v1, "com.miui.onehop.permission.MIRROR"

    invoke-virtual {p1, p0, p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterOneHopShareReceiver(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p0, "OneHopHelper"

    const-string p1, "unregister oneHopShareReceiver must in mainThread"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method
