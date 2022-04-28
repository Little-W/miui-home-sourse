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

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getLargeScreenOptions()Landroid/os/Bundle;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/miuiwidget/views/MIUIWidgetViewFlipper;->options:Landroid/os/Bundle;

    return-object v0
.end method

.method public supportLargeScreenEditPreviewMode(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/miui/miuiwidget/views/MIUIWidgetViewFlipper;->options:Landroid/os/Bundle;

    return-void
.end method
