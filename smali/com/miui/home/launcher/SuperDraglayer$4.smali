.class Lcom/miui/home/launcher/SuperDraglayer$4;
.super Ljava/lang/Object;
.source "SuperDraglayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SuperDraglayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SuperDraglayer;

.field final synthetic val$wrapIconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$4;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer$4;->val$wrapIconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 635
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 636
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$4;->val$wrapIconView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 637
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$4;->val$wrapIconView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
