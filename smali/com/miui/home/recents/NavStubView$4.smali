.class Lcom/miui/home/recents/NavStubView$4;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 407
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 409
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2800(Lcom/miui/home/recents/NavStubView;)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 410
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1, p1, v0}, Lcom/miui/home/recents/NavStubView;->access$2900(Lcom/miui/home/recents/NavStubView;FF)V

    return-void
.end method
