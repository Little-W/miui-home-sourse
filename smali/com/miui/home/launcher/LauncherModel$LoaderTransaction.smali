.class public Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderTransaction"
.end annotation


# instance fields
.field private final mTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 2764
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2765
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$1600(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2766
    :try_start_0
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$2500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 2769
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->mTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    const/4 p2, 0x0

    .line 2770
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->access$2602(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 2771
    monitor-exit v0

    return-void

    .line 2767
    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Loader already stopped"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2771
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 2760
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2783
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1600(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2785
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$2500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->mTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-ne v1, v2, :cond_0

    .line 2786
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->access$2502(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 2788
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

.method public commit()V
    .locals 3

    .line 2775
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1600(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2777
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->access$2602(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 2778
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
