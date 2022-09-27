.class public Lcom/miui/maml/elements/filament/EnvironmentLight;
.super Ljava/lang/Object;
.source "EnvironmentLight.java"


# static fields
.field private static final DEFAULT_INTENSITY:F = 30000.0f

.field private static final LOG_TAG:Ljava/lang/String; = "EnvironmentLight"

.field private static final TYPE_KTX:Ljava/lang/String; = "ktx"

.field private static final TYPE_MANUAL:Ljava/lang/String; = "manual"

.field private static final TYPE_RGB32F:Ljava/lang/String; = "rgb32f"


# instance fields
.field private mIndirectLight:Lcom/google/android/filament/IndirectLight;

.field private mIndirectLightTexture:Lcom/google/android/filament/Texture;

.field private mLightIntensity:F

.field private mPath:Ljava/lang/String;

.field private mResMgr:Lcom/miui/maml/ResourceManager;

.field private mSkybox:Lcom/google/android/filament/Skybox;

.field private mSkyboxColor:[F

.field private mSkyboxTexture:Lcom/google/android/filament/Texture;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mResMgr:Lcom/miui/maml/ResourceManager;

    const-string p2, "envSrc"

    .line 46
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mPath:Ljava/lang/String;

    const-string p2, "envType"

    .line 47
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mType:Ljava/lang/String;

    const-string p2, "envIntensity"

    const v0, 0x46ea6000    # 30000.0f

    .line 48
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mLightIntensity:F

    const-string p2, "skyboxColor"

    .line 49
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ","

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 52
    array-length p2, p1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 53
    new-array p2, v0, [F

    iput-object p2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxColor:[F

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxColor:[F

    aget-object v2, p1, p2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadCubemap(Lcom/google/android/filament/Texture;Ljava/lang/String;Lcom/google/android/filament/Engine;Ljava/lang/String;I)Z
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p5

    .line 175
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    .line 176
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->getWidth(I)I

    move-result v4

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->getHeight(I)I

    move-result v5

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    const/4 v6, 0x6

    .line 179
    new-array v7, v6, [I

    aput v3, v7, v3

    const/4 v8, 0x1

    aput v4, v7, v8

    mul-int/lit8 v9, v4, 0x2

    const/4 v10, 0x2

    aput v9, v7, v10

    mul-int/lit8 v9, v4, 0x3

    const/4 v10, 0x3

    aput v9, v7, v10

    mul-int/lit8 v9, v4, 0x4

    aput v9, v7, v5

    mul-int/lit8 v5, v4, 0x5

    const/4 v9, 0x5

    aput v5, v7, v9

    mul-int/2addr v4, v6

    .line 181
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v9, "px"

    const-string v10, "nx"

    const-string v11, "py"

    const-string v12, "ny"

    const-string v13, "pz"

    const-string v14, "nz"

    .line 182
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v5

    move v9, v3

    :goto_0
    if-ge v9, v6, :cond_2

    move-object/from16 v10, p0

    .line 185
    iget-object v11, v10, Lcom/miui/maml/elements/filament/EnvironmentLight;->mResMgr:Lcom/miui/maml/ResourceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v5, v9

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".rgb32f"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v12, 0x0

    .line 187
    invoke-static {v11, v12, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 189
    invoke-virtual {v12, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 192
    :cond_0
    :try_start_0
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 194
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v3

    :cond_1
    return v3

    :cond_2
    move-object/from16 v10, p0

    .line 201
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 202
    new-instance v2, Lcom/google/android/filament/Texture$PixelBufferDescriptor;

    sget-object v3, Lcom/google/android/filament/Texture$Format;->RGB:Lcom/google/android/filament/Texture$Format;

    sget-object v5, Lcom/google/android/filament/Texture$Type;->UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$Type;

    invoke-direct {v2, v4, v3, v5}, Lcom/google/android/filament/Texture$PixelBufferDescriptor;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;)V

    move-object/from16 v3, p3

    invoke-virtual {v0, v3, v1, v2, v7}, Lcom/google/android/filament/Texture;->setImage(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$PixelBufferDescriptor;[I)V

    return v8
.end method

.method private peekSize(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mResMgr:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 160
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 161
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 164
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    new-instance p1, Landroid/util/Pair;

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createIndirectLight(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;
    .locals 10

    .line 99
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x379ec206

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x1a02f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "rgb32f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 109
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/m0_nx.rgb32f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/filament/EnvironmentLight;->peekSize(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 111
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    add-int/2addr v1, v4

    .line 112
    new-instance v2, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 113
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/filament/Texture$Builder;->width(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/filament/Texture$Builder;->height(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->levels(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/android/filament/Texture$InternalFormat;->R11F_G11F_B10F:Lcom/google/android/filament/Texture$InternalFormat;

    .line 116
    invoke-virtual {v0, v2}, Lcom/google/android/filament/Texture$Builder;->format(Lcom/google/android/filament/Texture$InternalFormat;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

    .line 117
    invoke-virtual {v0, v2}, Lcom/google/android/filament/Texture$Builder;->sampler(Lcom/google/android/filament/Texture$Sampler;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/android/filament/Texture$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLightTexture:Lcom/google/android/filament/Texture;

    :goto_2
    if-ge v3, v1, :cond_4

    .line 120
    iget-object v5, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLightTexture:Lcom/google/android/filament/Texture;

    iget-object v6, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v7, p1

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/maml/elements/filament/EnvironmentLight;->loadCubemap(Lcom/google/android/filament/Texture;Ljava/lang/String;Lcom/google/android/filament/Engine;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "EnvironmentLight"

    const-string v1, "Unable to load cubemap."

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    :cond_4
    :goto_3
    new-instance v0, Lcom/google/android/filament/IndirectLight$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/IndirectLight$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLightTexture:Lcom/google/android/filament/Texture;

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/filament/IndirectLight$Builder;->reflections(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/IndirectLight$Builder;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mLightIntensity:F

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/android/filament/IndirectLight$Builder;->intensity(F)Lcom/google/android/filament/IndirectLight$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lcom/google/android/filament/IndirectLight$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLight:Lcom/google/android/filament/IndirectLight;

    goto :goto_4

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mResMgr:Lcom/miui/maml/ResourceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ibl.ktx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/elements/filament/Io;->readAsset(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 103
    sget-object v1, Lcom/google/android/filament/utils/KtxLoader;->INSTANCE:Lcom/google/android/filament/utils/KtxLoader;

    new-instance v2, Lcom/google/android/filament/utils/KtxLoader$Options;

    invoke-direct {v2}, Lcom/google/android/filament/utils/KtxLoader$Options;-><init>()V

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/filament/utils/KtxLoader;->createIndirectLight(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/IndirectLight;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLight:Lcom/google/android/filament/IndirectLight;

    .line 104
    iget-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLight:Lcom/google/android/filament/IndirectLight;

    iget v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mLightIntensity:F

    invoke-virtual {p1, v0}, Lcom/google/android/filament/IndirectLight;->setIntensity(F)V

    .line 135
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLight:Lcom/google/android/filament/IndirectLight;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createSkybox(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4075183a

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x379ec206

    if-eq v1, v2, :cond_1

    const v2, 0x1a02f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "rgb32f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxColor:[F

    if-eqz v0, :cond_4

    .line 88
    new-instance v0, Lcom/google/android/filament/Skybox$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Skybox$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxColor:[F

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Skybox$Builder;->color([F)Lcom/google/android/filament/Skybox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Skybox$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkybox:Lcom/google/android/filament/Skybox;

    goto/16 :goto_2

    .line 71
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/nx.rgb32f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/filament/EnvironmentLight;->peekSize(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 73
    new-instance v1, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Texture$Builder;->width(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Texture$Builder;->height(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Lcom/google/android/filament/Texture$Builder;->levels(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$InternalFormat;->R11F_G11F_B10F:Lcom/google/android/filament/Texture$InternalFormat;

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->format(Lcom/google/android/filament/Texture$InternalFormat;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->sampler(Lcom/google/android/filament/Texture$Sampler;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Lcom/google/android/filament/Texture$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxTexture:Lcom/google/android/filament/Texture;

    .line 80
    iget-object v2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxTexture:Lcom/google/android/filament/Texture;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mPath:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/elements/filament/EnvironmentLight;->loadCubemap(Lcom/google/android/filament/Texture;Ljava/lang/String;Lcom/google/android/filament/Engine;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    new-instance v0, Lcom/google/android/filament/Skybox$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Skybox$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxTexture:Lcom/google/android/filament/Texture;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Skybox$Builder;->environment(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/Skybox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Skybox$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkybox:Lcom/google/android/filament/Skybox;

    goto :goto_2

    .line 64
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mResMgr:Lcom/miui/maml/ResourceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_skybox.ktx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/elements/filament/Io;->readAsset(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66
    sget-object v1, Lcom/google/android/filament/utils/KtxLoader;->INSTANCE:Lcom/google/android/filament/utils/KtxLoader;

    new-instance v2, Lcom/google/android/filament/utils/KtxLoader$Options;

    invoke-direct {v2}, Lcom/google/android/filament/utils/KtxLoader$Options;-><init>()V

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/filament/utils/KtxLoader;->createSkybox(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/Skybox;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkybox:Lcom/google/android/filament/Skybox;

    .line 95
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkybox:Lcom/google/android/filament/Skybox;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy(Lcom/google/android/filament/Engine;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLight:Lcom/google/android/filament/IndirectLight;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyIndirectLight(Lcom/google/android/filament/IndirectLight;)V

    .line 141
    iput-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLight:Lcom/google/android/filament/IndirectLight;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLightTexture:Lcom/google/android/filament/Texture;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyTexture(Lcom/google/android/filament/Texture;)V

    .line 145
    iput-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mIndirectLightTexture:Lcom/google/android/filament/Texture;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkybox:Lcom/google/android/filament/Skybox;

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroySkybox(Lcom/google/android/filament/Skybox;)V

    .line 149
    iput-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkybox:Lcom/google/android/filament/Skybox;

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxTexture:Lcom/google/android/filament/Texture;

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyTexture(Lcom/google/android/filament/Texture;)V

    .line 153
    iput-object v1, p0, Lcom/miui/maml/elements/filament/EnvironmentLight;->mSkyboxTexture:Lcom/google/android/filament/Texture;

    :cond_3
    return-void
.end method
