.class Lcom/miui/home/recents/NavStubView$23;
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

    .line 6288
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6291
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$8200(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6292
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$8400(Lcom/miui/home/recents/NavStubView;)V

    .line 6293
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6294
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$8500(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6295
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$8600(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6296
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/recents/NavStubView;->access$8700(Lcom/miui/home/recents/NavStubView;IZ)V

    .line 6297
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->postFinishSoscRunnable()V

    goto :goto_0

    .line 6300
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->finishSoscDirectly(Z)V

    .line 6301
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/recents/NavStubView;->access$8700(Lcom/miui/home/recents/NavStubView;IZ)V

    .line 6302
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$9000(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6304
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v0, "mStartHalfNewTaskRunnable"

    invoke-static {p0, v0}, Lcom/miui/home/recents/NavStubView;->access$8900(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V

    return-void
.end method
