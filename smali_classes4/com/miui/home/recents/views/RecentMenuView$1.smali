.class Lcom/miui/home/recents/views/RecentMenuView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentMenuView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentMenuView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$000(Lcom/miui/home/recents/views/RecentMenuView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ios_recent"

    invoke-static {v1}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    goto :goto_0

    .line 170
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 178
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$000(Lcom/miui/home/recents/views/RecentMenuView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    const/high16 p1, 0x41200000    # 10.0f

    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/HideMemoryAndDockEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/messages/HideMemoryAndDockEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {v1}, Lcom/miui/home/recents/views/RecentMenuView;->access$200(Lcom/miui/home/recents/views/RecentMenuView;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 168
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentMenuView;->access$300(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->scrollToNearestMotionlessPosition()V

    :goto_0
    return-void
.end method
