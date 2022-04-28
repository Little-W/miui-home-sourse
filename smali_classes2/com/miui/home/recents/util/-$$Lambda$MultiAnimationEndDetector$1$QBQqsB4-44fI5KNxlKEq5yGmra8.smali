.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$1$QBQqsB4-44fI5KNxlKEq5yGmra8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;

.field private final synthetic f$1:Lcom/miui/home/recents/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$1$QBQqsB4-44fI5KNxlKEq5yGmra8;->f$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$1$QBQqsB4-44fI5KNxlKEq5yGmra8;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$1$QBQqsB4-44fI5KNxlKEq5yGmra8;->f$0:Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;

    iget-object v1, p0, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$1$QBQqsB4-44fI5KNxlKEq5yGmra8;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;->lambda$onAnimationEnd$0(Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method
