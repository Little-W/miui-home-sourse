.class public final Lcom/google/android/filament/textured/TextureLoaderKt;
.super Ljava/lang/Object;


# static fields
.field public static final SKIP_BITMAP_COPY:Z = true


# direct methods
.method private static final format(Landroid/graphics/Bitmap;)Lcom/google/android/filament/Texture$Format;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "RGB_565"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Format;->RGB:Lcom/google/android/filament/Texture$Format;

    goto :goto_0

    :sswitch_1
    const-string v0, "RGBA_F16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Format;->RGBA:Lcom/google/android/filament/Texture$Format;

    goto :goto_0

    :sswitch_2
    const-string v0, "ARGB_8888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Format;->RGBA:Lcom/google/android/filament/Texture$Format;

    goto :goto_0

    :sswitch_3
    const-string v0, "ALPHA_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Format;->ALPHA:Lcom/google/android/filament/Texture$Format;

    :goto_0
    return-object p0

    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown bitmap configuration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0xb519289 -> :sswitch_3
        0xd4fdd93 -> :sswitch_2
        0x665adb60 -> :sswitch_1
        0x6eb51b22 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final internalFormat(Lcom/google/android/filament/textured/TextureType;)Lcom/google/android/filament/Texture$InternalFormat;
    .locals 1

    sget-object v0, Lcom/google/android/filament/textured/TextureLoaderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/google/android/filament/textured/TextureType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$InternalFormat;->RGBA8:Lcom/google/android/filament/Texture$InternalFormat;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/google/android/filament/Texture$InternalFormat;->RGBA8:Lcom/google/android/filament/Texture$InternalFormat;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/filament/Texture$InternalFormat;->SRGB8_A8:Lcom/google/android/filament/Texture$InternalFormat;

    :goto_0
    return-object p0
.end method

.method public static final loadTexture(Lcom/google/android/filament/Engine;Landroid/content/res/Resources;ILcom/google/android/filament/textured/TextureType;)Lcom/google/android/filament/Texture;
    .locals 3

    const-string v0, "engine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Lcom/google/android/filament/textured/TextureType;->COLOR:Lcom/google/android/filament/textured/TextureType;

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/filament/Texture$Builder;->width(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/filament/Texture$Builder;->height(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object p2

    sget-object v0, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {p2, v0}, Lcom/google/android/filament/Texture$Builder;->sampler(Lcom/google/android/filament/Texture$Sampler;)Lcom/google/android/filament/Texture$Builder;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/filament/textured/TextureLoaderKt;->internalFormat(Lcom/google/android/filament/textured/TextureType;)Lcom/google/android/filament/Texture$InternalFormat;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/filament/Texture$Builder;->format(Lcom/google/android/filament/Texture$InternalFormat;)Lcom/google/android/filament/Texture$Builder;

    move-result-object p2

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Lcom/google/android/filament/Texture$Builder;->levels(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/filament/Texture$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object p2

    const-string p3, "Texture.Builder()\n      \u2026           .build(engine)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, v2, p1}, Lcom/google/android/filament/android/TextureHelper;->setBitmap(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture;ILandroid/graphics/Bitmap;)V

    invoke-virtual {p2, p0}, Lcom/google/android/filament/Texture;->generateMipmaps(Lcom/google/android/filament/Engine;)V

    return-object p2
.end method

.method private static final type(Landroid/graphics/Bitmap;)Lcom/google/android/filament/Texture$Type;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "RGB_565"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Type;->USHORT_565:Lcom/google/android/filament/Texture$Type;

    goto :goto_0

    :sswitch_1
    const-string v0, "RGBA_F16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Type;->HALF:Lcom/google/android/filament/Texture$Type;

    goto :goto_0

    :sswitch_2
    const-string v0, "ARGB_8888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Type;->UBYTE:Lcom/google/android/filament/Texture$Type;

    goto :goto_0

    :sswitch_3
    const-string v0, "ALPHA_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$Type;->USHORT:Lcom/google/android/filament/Texture$Type;

    :goto_0
    return-object p0

    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported bitmap configuration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0xb519289 -> :sswitch_3
        0xd4fdd93 -> :sswitch_2
        0x665adb60 -> :sswitch_1
        0x6eb51b22 -> :sswitch_0
    .end sparse-switch
.end method
