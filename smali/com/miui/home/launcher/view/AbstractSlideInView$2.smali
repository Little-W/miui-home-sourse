.class Lcom/miui/home/launcher/view/AbstractSlideInView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractSlideInView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/AbstractSlideInView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/miui/home/launcher/view/AbstractSlideInView$2;->this$0:Lcom/miui/home/launcher/view/AbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/view/AbstractSlideInView$2;->this$0:Lcom/miui/home/launcher/view/AbstractSlideInView;

    iget-object p1, p1, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/view/AbstractSlideInView$2;->this$0:Lcom/miui/home/launcher/view/AbstractSlideInView;

    invoke-static {p1}, Lcom/miui/home/launcher/view/AbstractSlideInView;->access$000(Lcom/miui/home/launcher/view/AbstractSlideInView;)V

    return-void
.end method
