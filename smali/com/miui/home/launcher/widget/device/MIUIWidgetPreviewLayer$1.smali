.class Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;
.super Landroid/view/ViewOutlineProvider;
.source "MIUIWidgetPreviewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setPreviewCorner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field final synthetic val$radius:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;F)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;->this$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iput p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;->val$radius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
