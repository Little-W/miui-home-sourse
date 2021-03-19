.class Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiAnimationEndDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iput-object p2, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$000(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-static {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$100(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
