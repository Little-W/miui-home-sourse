.class Lcom/miui/home/recents/views/CircleAndTickAnimView$2;
.super Ljava/lang/Object;
.source "CircleAndTickAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/CircleAndTickAnimView;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/CircleAndTickAnimView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/CircleAndTickAnimView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView$2;->this$0:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView$2;->this$0:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->access$102(Lcom/miui/home/recents/views/CircleAndTickAnimView;F)F

    .line 87
    iget-object p0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView$2;->this$0:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->invalidate()V

    return-void
.end method
