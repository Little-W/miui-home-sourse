.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F

.field private final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$2:F

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$3:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$1:F

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$2:F

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$CNP_MySy3jT1dOoIH17GFTbZrRI;->f$3:F

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$startHomeFadeOutAnim$2$NavStubView(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
