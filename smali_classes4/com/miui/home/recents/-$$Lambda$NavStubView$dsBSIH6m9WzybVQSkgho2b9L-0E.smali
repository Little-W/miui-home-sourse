.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$dsBSIH6m9WzybVQSkgho2b9L-0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dsBSIH6m9WzybVQSkgho2b9L-0E;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dsBSIH6m9WzybVQSkgho2b9L-0E;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dsBSIH6m9WzybVQSkgho2b9L-0E;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dsBSIH6m9WzybVQSkgho2b9L-0E;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dsBSIH6m9WzybVQSkgho2b9L-0E;->f$1:F

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dsBSIH6m9WzybVQSkgho2b9L-0E;->f$2:F

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$startHomeFadeInAnim$0$NavStubView(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
