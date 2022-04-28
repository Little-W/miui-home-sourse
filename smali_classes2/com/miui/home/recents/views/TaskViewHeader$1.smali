.class Lcom/miui/home/recents/views/TaskViewHeader$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/TaskViewHeader;->showOrHideLockImageView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskViewHeader;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskViewHeader;Z)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader$1;->this$0:Lcom/miui/home/recents/views/TaskViewHeader;

    iput-boolean p2, p0, Lcom/miui/home/recents/views/TaskViewHeader$1;->val$isShow:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 244
    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskViewHeader$1;->val$isShow:Z

    if-nez p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader$1;->this$0:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewHeader;->access$000(Lcom/miui/home/recents/views/TaskViewHeader;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader$1;->this$0:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewHeader;->access$000(Lcom/miui/home/recents/views/TaskViewHeader;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
