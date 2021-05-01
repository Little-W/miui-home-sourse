.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:F

.field private final synthetic f$2:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(FFLandroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;->f$0:F

    iput p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;->f$1:F

    iput-object p3, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;->f$2:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;->f$0:F

    iget v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;->f$1:F

    iget-object v2, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;->f$2:Landroid/view/Window;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/common/BlurUtils;->lambda$startBlurAnim$486(FFLandroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method
