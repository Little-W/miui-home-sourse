.class public Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecPhone;
.super Ljava/lang/Object;
.source "MiuiWidgetSizeSpecPhone.java"

# interfaces
.implements Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J
    .locals 8

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/miui/home/launcher/DeviceProfile;->getCellWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHorizontalSpacing()I

    move-result v2

    add-int/2addr v1, v2

    .line 37
    invoke-virtual {p1}, Lcom/miui/home/launcher/DeviceProfile;->getCellHeight()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, p3, -0x1

    mul-int/2addr v3, v2

    .line 40
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    const/4 v5, 0x1

    if-ne p3, v5, :cond_0

    if-eq p2, v5, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v3

    int-to-long v3, v3

    .line 48
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x0

    mul-int/lit8 v6, v1, 0x2

    .line 50
    invoke-virtual {p1}, Lcom/miui/home/launcher/DeviceProfile;->getCellHeight()I

    move-result p1

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v7

    add-int/2addr p1, v7

    .line 52
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v7

    add-int/2addr p1, v7

    sub-int/2addr v6, p1

    .line 50
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 54
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    sub-int v0, v1, v0

    sub-int p1, v0, p1

    int-to-float v5, p1

    int-to-float v6, v0

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    float-to-int p1, v6

    :cond_1
    sub-int/2addr v0, p1

    mul-int/2addr v1, p2

    sub-int/2addr v1, v0

    int-to-long v0, v1

    if-nez p4, :cond_2

    mul-int/2addr v2, p3

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    int-to-long v3, v2

    :cond_2
    const-string p1, "MiuiWidgetSizeSpecPhone"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMiuiWidgetSizeSpec("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") = ("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x20

    shl-long p1, v0, p1

    or-long/2addr p1, v3

    return-wide p1
.end method
