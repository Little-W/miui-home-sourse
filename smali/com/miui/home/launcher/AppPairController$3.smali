.class Lcom/miui/home/launcher/AppPairController$3;
.super Ljava/lang/Object;
.source "AppPairController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AppPairController;->removeAppPairStartWindowWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/AppPairController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AppPairController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/AppPairController$3;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 159
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController$3;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-static {v0}, Lcom/miui/home/launcher/AppPairController;->access$300(Lcom/miui/home/launcher/AppPairController;)Lcom/miui/home/launcher/view/AppPairStartView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/AppPairStartView;->animate(F)V

    return-void
.end method
