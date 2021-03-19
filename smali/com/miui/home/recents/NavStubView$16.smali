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

    .line 3058
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3061
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$5200(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3062
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5400(Lcom/miui/home/recents/NavStubView;)V

    .line 3063
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3064
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3600(Lcom/miui/home/recents/NavStubView;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;I)V

    goto :goto_0

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView;->finishDirectly(Z)V

    .line 3067
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3600(Lcom/miui/home/recents/NavStubView;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;I)V

    .line 3069
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView;->access$5600(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3070
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$16;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v2, "mStartNewTaskRunnable"

    invoke-static {v0, v1, v1, v1, v2}, Lcom/miui/home/recents/NavStubView;->access$5700(Lcom/miui/home/recents/NavStubView;ZZZLjava/lang/String;)V

    return-void
.end method
