.class Lcom/miui/home/launcher/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->onDropAnimationFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 1777
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$8;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1780
    new-instance v0, Lcom/miui/home/launcher/Workspace$8$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$8$1;-><init>(Lcom/miui/home/launcher/Workspace$8;)V

    .line 1785
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object v1

    .line 1780
    invoke-static {v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->doUIConsumerSerialized(Ljava8/util/function/Consumer;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    return-void
.end method
