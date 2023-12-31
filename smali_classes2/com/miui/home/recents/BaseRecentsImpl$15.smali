.class Lcom/miui/home/recents/BaseRecentsImpl$15;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$15$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/BaseRecentsImpl$15;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$15;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 771
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object p1, p1, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$15$-a1eBWf4rxNJqnLfz5CvpmvCXKw;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$15$-a1eBWf4rxNJqnLfz5CvpmvCXKw;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$15;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$BaseRecentsImpl$15(Landroid/content/Intent;)V
    .locals 2

    .line 772
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.fsgesture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "isEnter"

    .line 773
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "typeFrom"

    .line 774
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 775
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$15$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/BaseRecentsImpl$15;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
