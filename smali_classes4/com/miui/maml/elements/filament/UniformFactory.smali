.class public Lcom/miui/maml/elements/filament/UniformFactory;
.super Ljava/lang/Object;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;,
        Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;,
        Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;,
        Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;,
        Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;,
        Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;,
        Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;,
        Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Uniform"

.field public static final TYPE_BOOL:I = 0x3

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_IMAGE_TEXTURE:I = 0x4

.field public static final TYPE_INT:I = 0x1

.field public static final TYPE_OFFSCREEN_TEXTURE:I = 0x5

.field public static final TYPE_VIDEO_TEXTURE:I = 0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUniform(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;)Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
    .locals 7

    const-string v0, "type"

    .line 47
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "bool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "offscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_1
    new-instance v0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-object v0

    .line 58
    :cond_2
    new-instance v0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-object v0

    .line 56
    :cond_3
    new-instance v0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-object v0

    .line 54
    :cond_4
    new-instance v0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-object v0

    .line 52
    :cond_5
    new-instance v0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;

    invoke-direct {v0, p0, p1, p2, v5}, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-object v0

    .line 50
    :cond_6
    new-instance v0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;

    invoke-direct {v0, p0, p1, p2, v6}, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74faa165 -> :sswitch_5
        0x197ef -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x5d0225c -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch
.end method
