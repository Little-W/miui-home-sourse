.class Lcom/miui/home/recents/TouchInteractionService$2;
.super Landroid/content/BroadcastReceiver;
.source "TouchInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/TouchInteractionService$2$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/TouchInteractionService;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$2;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/TouchInteractionService$2;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/TouchInteractionService$2;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/miui/home/recents/TouchInteractionService$2;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$2;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService;->access$400(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$2$H_suGmf857GaTXloIDj21PgE8L4;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$2$H_suGmf857GaTXloIDj21PgE8L4;-><init>(Lcom/miui/home/recents/TouchInteractionService$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "TouchInteractionService"

    const-string p2, "onReceive    ACTION_USER_UNLOCKED"

    .line 190
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/TouchInteractionService$2$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/TouchInteractionService$2;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
