.class Lcom/miui/home/recents/NavStubView$18;
.super Landroid/content/BroadcastReceiver;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/NavStubView$18$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3363
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/NavStubView$18;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView$18;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$273(Lcom/miui/home/recents/NavStubView$18;)V
    .locals 2

    .line 3369
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6900(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/AntiMistakeTouchView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3370
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6900(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/AntiMistakeTouchView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 3371
    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$7000(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 3370
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    :cond_1
    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "com.android.systemui.fullscreen.statechange"

    .line 3366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3367
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v0, "isEnter"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/NavStubView;->access$6802(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 3368
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$NavStubView$18$HVWX0tZHUtZK5VHUNz6Fn1g6vvc;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$18$HVWX0tZHUtZK5VHUNz6Fn1g6vvc;-><init>(Lcom/miui/home/recents/NavStubView$18;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/NavStubView$18$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/NavStubView$18;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
