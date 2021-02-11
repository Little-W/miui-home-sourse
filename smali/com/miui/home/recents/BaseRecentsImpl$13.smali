.class Lcom/miui/home/recents/BaseRecentsImpl$13;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1900(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 727
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    :cond_0
    return-void
.end method
