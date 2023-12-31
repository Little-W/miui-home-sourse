.class public final synthetic Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:F

.field private final synthetic f$3:I

.field private final synthetic f$4:F

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;Landroid/view/View;FIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iput-object p2, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$2:F

    iput p4, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$3:I

    iput p5, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$4:F

    iput p6, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$5:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$2:F

    iget v3, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$3:I

    iget v4, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$4:F

    iget v5, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;->f$5:I

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->lambda$startNormalEnterEditAnim$0$NormalEditEnterAnim(Landroid/view/View;FIFIF)V

    return-void
.end method
