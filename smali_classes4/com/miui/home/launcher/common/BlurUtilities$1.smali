.class Lcom/miui/home/launcher/common/BlurUtilities$1;
.super Landroid/view/ViewOutlineProvider;
.source "BlurUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$radius:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$left:I

    iput p2, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$top:I

    iput p3, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$right:I

    iput p4, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$bottom:I

    iput p5, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$radius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 108
    iget v1, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$left:I

    iget v2, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$top:I

    iget v3, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$right:I

    iget v4, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$bottom:I

    iget p0, p0, Lcom/miui/home/launcher/common/BlurUtilities$1;->val$radius:I

    int-to-float v5, p0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
