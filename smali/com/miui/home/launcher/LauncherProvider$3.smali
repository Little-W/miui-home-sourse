.class Lcom/miui/home/launcher/LauncherProvider$3;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherProvider;->runOnUiThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherProvider;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherProvider;Ljava/lang/Runnable;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$3;->this$0:Lcom/miui/home/launcher/LauncherProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherProvider$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$3;->val$runnable:Ljava/lang/Runnable;

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 689
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$3;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 690
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
