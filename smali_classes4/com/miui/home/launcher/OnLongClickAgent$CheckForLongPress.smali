.class Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;
.super Ljava/lang/Object;
.source "OnLongClickAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/OnLongClickAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/OnLongClickAgent;

.field private zOriginalVersionTag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/OnLongClickAgent;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberVersionTag()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$200(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$000(Lcom/miui/home/launcher/OnLongClickAgent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 103
    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 104
    invoke-static {v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$200(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 105
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentClosingAnimRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 110
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LongClickMessage;

    iget-object v2, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v2}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v3}, Lcom/miui/home/launcher/OnLongClickAgent;->access$400(Lcom/miui/home/launcher/OnLongClickAgent;)F

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v4}, Lcom/miui/home/launcher/OnLongClickAgent;->access$500(Lcom/miui/home/launcher/OnLongClickAgent;)F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/home/launcher/common/messages/LongClickMessage;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$602(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$002(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z

    :cond_1
    return-void
.end method
