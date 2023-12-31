.class public Lcom/miui/maml/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ColorToHex(I)Ljava/lang/String;
    .locals 5

    .line 7
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 8
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 10
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 12
    invoke-static {v0}, Lcom/miui/maml/util/ColorUtils;->toHex(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v1}, Lcom/miui/maml/util/ColorUtils;->toHex(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v2}, Lcom/miui/maml/util/ColorUtils;->toHex(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {p0}, Lcom/miui/maml/util/ColorUtils;->toHex(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toHex(I)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
