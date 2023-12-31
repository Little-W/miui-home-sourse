.class public Lcom/miui/home/launcher/util/PowerKeeperManager;
.super Ljava/lang/Object;
.source "PowerKeeperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/PowerKeeperManager$Status;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/util/PowerKeeperManager;


# instance fields
.field private mCallingPowerKeeper:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsPowerKeeperPermissionGranted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/PowerKeeperManager;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager;->sInstance:Lcom/miui/home/launcher/util/PowerKeeperManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mCallingPowerKeeper:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    iput-boolean v1, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mIsPowerKeeperPermissionGranted:Z

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager;->sInstance:Lcom/miui/home/launcher/util/PowerKeeperManager;

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$notifyPowerKeeperGesture$0$PowerKeeperManager(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V
    .locals 7

    .line 44
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mIsPowerKeeperPermissionGranted:Z

    const-string v1, "PowerKeeperManager"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "status"

    .line 47
    invoke-static {p1}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->access$000(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mCallingPowerKeeper:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.miui.powerkeeper.configure"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "notifyPowerKeeperGesture"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 50
    iget-object v2, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mCallingPowerKeeper:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPowerKeeperGesture status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mCallingPowerKeeper:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "notifyPowerKeeperGesture: "

    .line 54
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "notifyPowerKeeperGesture, hasn\'t permissino:miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mCallingPowerKeeper:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/util/-$$Lambda$PowerKeeperManager$fcPdk6-YeV64gEVMUEPSTK8CpIA;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/util/-$$Lambda$PowerKeeperManager$fcPdk6-YeV64gEVMUEPSTK8CpIA;-><init>(Lcom/miui/home/launcher/util/PowerKeeperManager;Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setPowerKeeperPermissionGranted(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/PowerKeeperManager;->mIsPowerKeeperPermissionGranted:Z

    return-void
.end method
