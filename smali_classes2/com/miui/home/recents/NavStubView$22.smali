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

    .line 6268
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 6271
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6272
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$8400(Lcom/miui/home/recents/NavStubView;)V

    .line 6273
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 6274
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView;->access$8500(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6275
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$8600(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6276
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/recents/NavStubView;->access$8700(Lcom/miui/home/recents/NavStubView;IZ)V

    .line 6277
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->postFinishRunnable()V

    goto :goto_0

    .line 6280
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView;->finishDirectly(Z)V

    .line 6281
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)I

    move-result v3

    invoke-static {v0, v3, v1}, Lcom/miui/home/recents/NavStubView;->access$8700(Lcom/miui/home/recents/NavStubView;IZ)V

    .line 6282
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView;->access$8800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6284
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v0, "mStartNewTaskRunnable"

    invoke-static {p0, v0}, Lcom/miui/home/recents/NavStubView;->access$8900(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V

    return-void
.end method
