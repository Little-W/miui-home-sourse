.class Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;
.super Ljava/lang/Object;
.source "ActivityObserverLauncherImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->activityPaused(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;Landroid/content/Intent;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;->this$1:Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;

    iput-object p2, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;->this$1:Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;

    iget-object v0, v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-static {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->access$000(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;->this$1:Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;

    iget-object v1, v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;->this$0:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-static {v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->access$000(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    .line 99
    iget-object v3, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1$3;->val$intent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;->activityPaused(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
