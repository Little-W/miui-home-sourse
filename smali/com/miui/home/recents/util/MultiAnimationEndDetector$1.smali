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

    .line 85
    iput-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iput-object p2, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->val$rectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->val$rectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {p1, v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$000(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-static {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$100(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->val$rectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
