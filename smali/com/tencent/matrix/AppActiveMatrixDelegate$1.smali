.class Lcom/tencent/matrix/AppActiveMatrixDelegate$1;
.super Ljava/lang/Object;
.source "AppActiveMatrixDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/AppActiveMatrixDelegate;->onDispatchForeground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/AppActiveMatrixDelegate;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$1;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$1;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$102(Lcom/tencent/matrix/AppActiveMatrixDelegate;Z)Z

    .line 77
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$1;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-static {v0}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$200(Lcom/tencent/matrix/AppActiveMatrixDelegate;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$1;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-static {v2}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$200(Lcom/tencent/matrix/AppActiveMatrixDelegate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/matrix/listeners/IAppForeground;

    .line 79
    invoke-interface {v3, v1}, Lcom/tencent/matrix/listeners/IAppForeground;->onForeground(Z)V

    goto :goto_0

    .line 81
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
