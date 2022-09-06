.class Lcom/miui/home/launcher/widget/device/PadMIUIWidgetDeviceAdapter;
.super Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;
.source "PadMIUIWidgetDeviceAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    const-string p1, "isLargeScreenMode"

    const/4 p3, 0x1

    .line 18
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/PadMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    return-void
.end method
