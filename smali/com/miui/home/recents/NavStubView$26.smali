.class Lcom/miui/home/recents/NavStubView$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startHomeAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 3456
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$26;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$26;->val$type:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 3472
    iget p1, p0, Lcom/miui/home/recents/NavStubView$26;->val$type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3473
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startHomeAnimation: shortcutMenuLayer().setVisibility(View.GONE)"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$26;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 3476
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3477
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$26;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    const-string v1, "startHomeAnimation"

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7100(Lcom/miui/home/recents/NavStubView;ZZZLjava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 3459
    iget p1, p0, Lcom/miui/home/recents/NavStubView$26;->val$type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3460
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3462
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 3463
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ignore_bring_to_front"

    const/4 v1, 0x1

    .line 3464
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "filter_flag"

    .line 3465
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3466
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$26;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
