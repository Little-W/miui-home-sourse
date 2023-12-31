.class Lcom/miui/home/recents/TaskViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/TaskViewUtils;->createSpringAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFZI)Lcom/miui/home/recents/util/RectFSpringAnim;
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

    .line 344
    iput-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-boolean p2, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    iput-object p3, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 2

    const-string v0, "TaskViewUtils"

    const-string v1, "onAnimationEnd, release animation"

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->release()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onAnimationEnd$1(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 368
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TaskViewUtils"

    const-string v0, "AnimOpen, recent, onAnimationCancel"

    .line 380
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "TaskViewUtils"

    const-string v0, "AnimOpen, recent, onAnimationEnd"

    .line 358
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-boolean p1, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isAnimRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 360
    :cond_0
    sget-object p1, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$eTFZgpsbivm0TjdgCgM4GJk0BkU;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$eTFZgpsbivm0TjdgCgM4GJk0BkU;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 367
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    if-nez p1, :cond_2

    .line 368
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$PS6y9eTM996JiSpx2hNWkyPKeOg;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$PS6y9eTM996JiSpx2hNWkyPKeOg;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 371
    :cond_2
    iget-boolean p0, p0, Lcom/miui/home/recents/TaskViewUtils$1;->isCanceled:Z

    if-nez p0, :cond_3

    .line 372
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 375
    :cond_3
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TaskViewUtils"

    const-string v0, "AnimOpen, recent, onAnimationStart"

    .line 349
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "MHWAnimation#  OpenAppAnimFromRecents  # createSpringAnim:TaskViewUtils"

    .line 350
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 351
    iget-object p0, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result p0

    if-nez p0, :cond_0

    .line 352
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    :cond_0
    return-void
.end method
