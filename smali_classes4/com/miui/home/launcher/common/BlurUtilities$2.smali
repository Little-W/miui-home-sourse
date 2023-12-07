.class Lcom/miui/home/launcher/common/BlurUtilities$2;
.super Landroid/view/ViewOutlineProvider;
.source "BlurUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$radius:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/miui/home/launcher/common/BlurUtilities$2;->val$radius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p0, p0, Lcom/miui/home/launcher/common/BlurUtilities$2;->val$radius:I

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
