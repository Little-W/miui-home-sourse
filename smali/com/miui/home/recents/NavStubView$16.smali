.class Lcom/miui/home/recents/NavStubView$16;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3616
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3619
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6400(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3620
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;)V

    .line 3621
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3622
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3623
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;I)V

    .line 3624
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->postFinishRunnable()V

    goto :goto_0

    .line 3627
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->finishDirectly(Z)V

    .line 3628
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;I)V

    .line 3629
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6900(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3631
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v1, "mStartNewTaskRunnable"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7000(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V

    return-void
.end method
