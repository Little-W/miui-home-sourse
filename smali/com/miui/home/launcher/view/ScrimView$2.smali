.class Lcom/miui/home/launcher/view/ScrimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/ScrimView;->setProgressAnim(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/ScrimView;

.field final synthetic val$saveAlpha:I

.field final synthetic val$saveColor:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/ScrimView;II)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/view/ScrimView$2;->this$0:Lcom/miui/home/launcher/view/ScrimView;

    iput p2, p0, Lcom/miui/home/launcher/view/ScrimView$2;->val$saveColor:I

    iput p3, p0, Lcom/miui/home/launcher/view/ScrimView$2;->val$saveAlpha:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/miui/home/launcher/view/ScrimView$2;->this$0:Lcom/miui/home/launcher/view/ScrimView;

    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView$2;->val$saveColor:I

    iput v0, p1, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColor:I

    .line 122
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView$2;->val$saveAlpha:I

    iput v0, p1, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/miui/home/launcher/view/ScrimView$2;->this$0:Lcom/miui/home/launcher/view/ScrimView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/ScrimView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0601ed

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/view/ScrimView$2;->this$0:Lcom/miui/home/launcher/view/ScrimView;

    iput p1, v0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColor:I

    .line 116
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, v0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    return-void
.end method
