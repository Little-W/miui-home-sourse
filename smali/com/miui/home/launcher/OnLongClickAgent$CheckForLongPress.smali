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

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$200(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$000(Lcom/miui/home/launcher/OnLongClickAgent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 103
    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 104
    invoke-static {v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$200(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress$1;-><init>(Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method
