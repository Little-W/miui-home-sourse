.class public Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecFactory;
.super Ljava/lang/Object;
.source "MiuiWidgetSizeSpecFactory.java"


# direct methods
.method public static getWidgetSpec()Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;
    .locals 1

    .line 7
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecPad;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecPad;-><init>()V

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecPhone;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecPhone;-><init>()V

    return-object v0
.end method
