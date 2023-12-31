.class Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;
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

.field final synthetic val$rectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iput-object p2, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->val$rectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$MultiAnimationEndDetector$1(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-static {v0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$000(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-static {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$100(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 95
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->val$rectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$1$QBQqsB4-44fI5KNxlKEq5yGmra8;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$1$QBQqsB4-44fI5KNxlKEq5yGmra8;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 100
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->val$rectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
