.class Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;
.super Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;
.source "PersistentLauncherOverlayConnection.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LauncherClient.PersistentConnection"

.field private static final sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLauncherClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/launcher/overlay/client/LauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field public mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

.field private mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->sInstanceMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x21

    .line 36
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private cleanUp()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method private getClient()Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherClient:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/launcher/overlay/client/LauncherClient;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;
    .locals 2

    const-class v0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-direct {v1, p0, p1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    .line 77
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    invoke-virtual {p1, p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherClient:Ljava/lang/ref/WeakReference;

    .line 41
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherClient.PersistentConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p2}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    .line 72
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->cleanUp()V

    return-void
.end method

.method public final setStopped(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mStopped:Z

    .line 85
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->cleanUp()V

    return-void
.end method

.method final declared-synchronized unbindClient(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V
    .locals 1

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherClient:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->disconnect()V

    .line 50
    sget-object p1, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
