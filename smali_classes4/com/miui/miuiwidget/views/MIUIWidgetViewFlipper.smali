.class public Lcom/miui/miuiwidget/views/MIUIWidgetViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "MIUIWidgetViewFlipper.java"

# interfaces
.implements Lcom/miui/miuiwidget/LargeScreenSupporter;


# instance fields
.field private options:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getLargeScreenOptions()Landroid/os/Bundle;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/miuiwidget/views/MIUIWidgetViewFlipper;->options:Landroid/os/Bundle;

    return-object p0
.end method

.method public setPadding(IIII)V
    .locals 0

    int-to-float p1, p1

    .line 41
    invoke-static {p0, p1}, Lcom/miui/miuiwidget/MIUIWidgetScaleUtil;->getScaledSize(Landroid/view/View;F)F

    move-result p1

    float-to-int p1, p1

    int-to-float p2, p2

    .line 42
    invoke-static {p0, p2}, Lcom/miui/miuiwidget/MIUIWidgetScaleUtil;->getScaledSize(Landroid/view/View;F)F

    move-result p2

    float-to-int p2, p2

    int-to-float p3, p3

    .line 43
    invoke-static {p0, p3}, Lcom/miui/miuiwidget/MIUIWidgetScaleUtil;->getScaledSize(Landroid/view/View;F)F

    move-result p3

    float-to-int p3, p3

    int-to-float p4, p4

    .line 44
    invoke-static {p0, p4}, Lcom/miui/miuiwidget/MIUIWidgetScaleUtil;->getScaledSize(Landroid/view/View;F)F

    move-result p4

    float-to-int p4, p4

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ViewFlipper;->setPadding(IIII)V

    return-void
.end method

.method public supportLargeScreenEditPreviewMode(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/miui/miuiwidget/views/MIUIWidgetViewFlipper;->options:Landroid/os/Bundle;

    return-void
.end method
