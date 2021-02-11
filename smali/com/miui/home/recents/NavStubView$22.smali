.class Lcom/miui/home/recents/NavStubView$22;
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

    .line 2809
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/recents/NavStubView$22;)V
    .locals 2

    .line 2817
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7000(Lcom/miui/home/recents/NavStubView;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2812
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6402(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2813
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;)V

    .line 2814
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6900(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView;->access$7000(Lcom/miui/home/recents/NavStubView;I)V

    goto :goto_0

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v2, 0x1

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$22$9VIDH_RDrUXzdixiSS1HgOdCcJU;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$22$9VIDH_RDrUXzdixiSS1HgOdCcJU;-><init>(Lcom/miui/home/recents/NavStubView$22;)V

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    .line 2819
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6700(Lcom/miui/home/recents/NavStubView;)V

    .line 2820
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v2, "mStartNewTaskRunnable"

    invoke-static {v0, v1, v1, v1, v2}, Lcom/miui/home/recents/NavStubView;->access$7100(Lcom/miui/home/recents/NavStubView;ZZZLjava/lang/String;)V

    return-void
.end method
