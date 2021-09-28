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
.field final synthetic val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field final synthetic val$skipViewChanges:Z

.field final synthetic val$taskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-boolean p2, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    iput-object p3, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 203
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 201
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->release()V

    .line 202
    iget-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    if-nez p1, :cond_0

    .line 203
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$nRsKTMBDeLDFN1AMfmALFf31QPw;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$nRsKTMBDeLDFN1AMfmALFf31QPw;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 205
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "openAppAnimFromRecents"

    .line 193
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 195
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    :cond_0
    return-void
.end method
