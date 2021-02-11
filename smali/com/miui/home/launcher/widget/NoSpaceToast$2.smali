.class Lcom/miui/home/launcher/widget/NoSpaceToast$2;
.super Ljava/lang/Object;
.source "NoSpaceToast.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/NoSpaceToast;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/NoSpaceToast;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->setAlpha(F)V

    return-void
.end method
