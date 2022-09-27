.class public abstract Lcom/miui/home/launcher/compat/LauncherCellCountCompat;
.super Lcom/miui/home/launcher/compat/LauncherCellCount;
.source "LauncherCellCountCompat.java"


# static fields
.field private static volatile sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;
    .locals 4

    .line 22
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    instance-of v1, v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-nez v1, :cond_1

    .line 25
    sput-object v2, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    instance-of v1, v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v1, :cond_1

    .line 29
    sput-object v2, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    .line 32
    :cond_1
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    if-nez v1, :cond_a

    .line 33
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 36
    :cond_2
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Lotus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDeviceLotus;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDeviceLotus;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto/16 :goto_2

    .line 38
    :cond_3
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "laurus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevicesLaurus;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevicesLaurus;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_2

    .line 40
    :cond_4
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "grus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDeviceGrus;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDeviceGrus;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_2

    .line 42
    :cond_5
    sget-object v1, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->FOG_SERIES:Landroid/util/ArraySet;

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevicesFog;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevicesFog;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_2

    .line 44
    :cond_6
    sget-object v1, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevicesDandelion;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevicesDandelion;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_2

    .line 46
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 47
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_2

    .line 49
    :cond_8
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_2

    .line 35
    :cond_9
    :goto_1
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatJP;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatJP;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    :goto_2
    const-string v1, "Launcher.CellCount"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new compat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_a
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
