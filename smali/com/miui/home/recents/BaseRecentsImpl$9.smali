.class Lcom/miui/home/recents/BaseRecentsImpl$9;
.super Landroid/database/ContentObserver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/miui/home/recents/BaseRecentsImpl$9;)V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 558
    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$200(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 556
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$9$B5PcBQCntJPZUO5HVfGo_7Wt6vM;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$9$B5PcBQCntJPZUO5HVfGo_7Wt6vM;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$9;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
