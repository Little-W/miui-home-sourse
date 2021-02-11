.class final Lcom/miui/home/recents/TaskViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;Z[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field final synthetic val$skipViewChanges:Z

.field final synthetic val$taskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(ZLcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    iput-object p2, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    iput-object p3, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->release()V

    .line 249
    iget-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    if-nez p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 251
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 252
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 253
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 254
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 255
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 257
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "openAppAnimFromRecents"

    .line 239
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 240
    iget-boolean p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$skipViewChanges:Z

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 242
    iget-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$1;->val$taskView:Lcom/miui/home/recents/views/TaskView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    :cond_0
    return-void
.end method
