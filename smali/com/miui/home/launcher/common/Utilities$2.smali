.class final Lcom/miui/home/launcher/common/Utilities$2;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/Utilities;->startBlurAnim(Landroid/view/Window;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$win:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .locals 0

    .line 2084
    iput-object p1, p0, Lcom/miui/home/launcher/common/Utilities$2;->val$win:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2087
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2088
    iget-object v0, p0, Lcom/miui/home/launcher/common/Utilities$2;->val$win:Landroid/view/Window;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->fastBlur(FLandroid/view/Window;)V

    return-void
.end method
