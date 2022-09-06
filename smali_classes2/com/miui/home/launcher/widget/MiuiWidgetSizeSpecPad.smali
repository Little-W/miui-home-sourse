.class public Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecPad;
.super Ljava/lang/Object;
.source "MiuiWidgetSizeSpecPad.java"

# interfaces
.implements Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J
    .locals 8

    .line 12
    invoke-virtual {p1}, Lcom/miui/home/launcher/DeviceProfile;->getCellWidth()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    add-int/lit8 v2, p2, -0x1

    int-to-long v2, v2

    .line 13
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHorizontalSpacing()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 14
    invoke-virtual {p1}, Lcom/miui/home/launcher/DeviceProfile;->getCellHeight()I

    move-result p1

    int-to-long v2, p1

    int-to-long v4, p3

    mul-long/2addr v2, v4

    add-int/lit8 p1, p3, -0x1

    int-to-long v4, p1

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result p1

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-string p1, "MiuiWidgetSizeSpecPad"

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMiuiWidgetSizeSpec("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") = ("

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x20

    shl-long p1, v0, p1

    or-long/2addr p1, v2

    return-wide p1
.end method
