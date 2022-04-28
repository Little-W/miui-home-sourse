.class Lcom/miui/home/recents/NavStubView$15;
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

    .line 3721
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3724
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3725
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$7000(Lcom/miui/home/recents/NavStubView;)V

    .line 3726
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3727
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7100(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3728
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7200(Lcom/miui/home/recents/NavStubView;I)V

    .line 3729
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->postFinishRunnable()V

    goto :goto_0

    .line 3732
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->finishDirectly(Z)V

    .line 3733
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView;->access$7200(Lcom/miui/home/recents/NavStubView;I)V

    .line 3734
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7300(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3736
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v1, "mStartNewTaskRunnable"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7400(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V

    return-void
.end method
