.class Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;
.super Landroid/app/IMiuiActivityObserver$Stub;
.source "ActivityObserverLauncherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/ActivityObserverLauncherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-direct {p0}, Landroid/app/IMiuiActivityObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-static {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->access$100(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$5;-><init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activityIdle(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-static {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->access$100(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$1;-><init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activityPaused(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-static {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->access$100(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;-><init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activityResumed(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-static {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->access$100(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$2;-><init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activityStopped(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-static {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->access$100(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$4;-><init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method
