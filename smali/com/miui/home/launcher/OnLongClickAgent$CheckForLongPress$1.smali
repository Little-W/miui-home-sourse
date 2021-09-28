.class Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;
.super Ljava/lang/Object;
.source "OnLongClickAgent.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v0, v0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v0, v0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v1, v1, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 111
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LongClickMessage;

    iget-object v2, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v2, v2, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v2}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v3, v3, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v3}, Lcom/miui/home/launcher/OnLongClickAgent;->access$400(Lcom/miui/home/launcher/OnLongClickAgent;)F

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v4, v4, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v4}, Lcom/miui/home/launcher/OnLongClickAgent;->access$500(Lcom/miui/home/launcher/OnLongClickAgent;)F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/home/launcher/common/messages/LongClickMessage;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v0, v0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$602(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;->this$1:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-object v0, v0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$002(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z

    return v1
.end method
