.class Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;
.super Ljava/lang/Object;
.source "OverviewCommandHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsActivityCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/home/launcher/BaseActivity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/AppToOverviewAnimationProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCreateTime:J

.field protected final mHelper:Lcom/miui/home/recents/ActivityControlHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/ActivityControlHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

.field final synthetic this$0:Lcom/miui/home/recents/OverviewCommandHelper;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper;)V
    .locals 2

    .line 110
    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lcom/miui/home/recents/OverviewCommandHelper;->access$100(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getActivityControlHelper()Lcom/miui/home/recents/ActivityControlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    .line 113
    new-instance v0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    iget-object v1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    .line 114
    invoke-static {p1}, Lcom/miui/home/recents/OverviewCommandHelper;->access$200(Lcom/miui/home/recents/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskId()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;-><init>(Lcom/miui/home/recents/ActivityControlHelper;I)V

    iput-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    return-void
.end method

.method private createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;->unregister()V

    .line 155
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 156
    new-instance v0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$1;-><init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public static synthetic lambda$-A5JQ7fECQOy4rJRJG94ONEgRas(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$x2jas03n6V6lRAIc-zCiYGIcCOs(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->onActivityReady(Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private onActivityReady(Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->onActivityReady(Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected handleCommand(J)Z
    .locals 4

    .line 172
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper;->getVisibleRecentsViewIgnoringWinFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(J)V

    return v1

    .line 180
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onTransitionComplete()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 8

    .line 119
    iget-wide v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    iget-object v2, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v2}, Lcom/miui/home/recents/OverviewCommandHelper;->access$300(Lcom/miui/home/recents/OverviewCommandHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 120
    iget-object v2, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    iget-wide v3, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    invoke-static {v2, v3, v4}, Lcom/miui/home/recents/OverviewCommandHelper;->access$302(Lcom/miui/home/recents/OverviewCommandHelper;J)J

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->handleCommand(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$200(Lcom/miui/home/recents/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "navigation_bar"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper;->switchToRecentsIfVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onEnterRecentsFromApp()V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$x2jas03n6V6lRAIc-zCiYGIcCOs;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$x2jas03n6V6lRAIc-zCiYGIcCOs;-><init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V

    invoke-interface {v0, v1}, Lcom/miui/home/recents/ActivityControlHelper;->createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

    .line 142
    iget-object v1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$100(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$-A5JQ7fECQOy4rJRJG94ONEgRas;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$-A5JQ7fECQOy4rJRJG94ONEgRas;-><init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V

    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    .line 143
    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$200(Lcom/miui/home/recents/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$400(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/launcher/MainThreadExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    .line 144
    invoke-virtual {v0}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v6

    .line 142
    invoke-interface/range {v1 .. v7}, Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;->registerAndStartActivity(Landroid/content/Intent;Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V

    return-void
.end method
