.class Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;
.super Ljava/lang/Object;
.source "MultiAnimationEndDetector.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


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

.field final synthetic val$springAnim:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iput-object p2, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;->val$springAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p2, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;->val$springAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$000(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;->this$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-static {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->access$100(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;->val$springAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method
