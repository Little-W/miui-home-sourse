.class Lcom/miui/home/recents/NavStubView$25;
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

    .line 6333
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6336
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$8500(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6337
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$8600(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6338
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6339
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$9100(Lcom/miui/home/recents/NavStubView;)I

    move-result p0

    invoke-virtual {v0, p0, v1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishSoscControllerAsync(IZZ)V

    :cond_0
    return-void
.end method
