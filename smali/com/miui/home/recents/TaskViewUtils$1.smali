.class Lcom/miui/home/recents/TaskViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;Z[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field final synthetic val$skipViewChanges:Z

.field final synthetic val$taskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-boolean p2, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    iput-object p3, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->release()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$1(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 199
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 195
    sget-object p1, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$eTFZgpsbivm0TjdgCgM4GJk0BkU;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$eTFZgpsbivm0TjdgCgM4GJk0BkU;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 198
    iget-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    if-nez p1, :cond_0

    .line 199
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$PS6y9eTM996JiSpx2hNWkyPKeOg;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$PS6y9eTM996JiSpx2hNWkyPKeOg;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 202
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->isCanceled:Z

    if-nez p1, :cond_1

    .line 203
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 206
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "openAppAnimFromRecents"

    .line 187
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 189
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    :cond_0
    return-void
.end method
