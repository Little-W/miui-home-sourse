.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;
.super Ljava/lang/Object;
.source "QuickstepAppTransitionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 929
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
