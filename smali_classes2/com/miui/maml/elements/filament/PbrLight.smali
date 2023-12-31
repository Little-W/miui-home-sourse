.class public Lcom/miui/maml/elements/filament/PbrLight;
.super Ljava/lang/Object;
.source "PbrLight.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Light"


# instance fields
.field private mCastShadows:Z

.field private mDirectionXYZ:[Lcom/miui/maml/data/Expression;

.field private mDirectionXYZArray:[F

.field private mFalloff:F

.field private mFalloffExp:Lcom/miui/maml/data/Expression;

.field private mIntensity:F

.field private mIntensityExp:Lcom/miui/maml/data/Expression;

.field private mLight:I

.field private mLinearRGB:[Lcom/miui/maml/data/Expression;

.field private mLinearRGBArray:[F

.field private mPositionXYZ:[Lcom/miui/maml/data/Expression;

.field private mPositionXYZArray:[F

.field private mType:Lcom/google/android/filament/LightManager$Type;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 21
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLinearRGBArray:[F

    new-array v1, v0, [F

    .line 22
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mDirectionXYZArray:[F

    new-array v1, v0, [F

    .line 23
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mPositionXYZArray:[F

    const v1, 0x47c35000    # 100000.0f

    .line 24
    iput v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mIntensity:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    iput v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mFalloff:F

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mCastShadows:Z

    .line 28
    iput v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLight:I

    const-string v2, "lightLinearRGB"

    .line 31
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLinearRGB:[Lcom/miui/maml/data/Expression;

    const-string v2, "lightDirection"

    .line 32
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/maml/elements/filament/PbrLight;->mDirectionXYZ:[Lcom/miui/maml/data/Expression;

    const-string v2, "lightPosition"

    .line 33
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/maml/elements/filament/PbrLight;->mPositionXYZ:[Lcom/miui/maml/data/Expression;

    const-string v2, "lightIntensity"

    .line 34
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/maml/elements/filament/PbrLight;->mIntensityExp:Lcom/miui/maml/data/Expression;

    const-string v2, "linghtFallOff"

    .line 35
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/filament/PbrLight;->mFalloffExp:Lcom/miui/maml/data/Expression;

    const-string p2, "lightCastShadows"

    .line 36
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/elements/filament/PbrLight;->mCastShadows:Z

    const-string p2, "lightType"

    .line 38
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "focused_spot"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_1

    :sswitch_1
    const-string p2, "point"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string p2, "spot"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string p2, "sun"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_4
    const-string p2, "directional"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    .line 56
    sget-object p1, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mType:Lcom/google/android/filament/LightManager$Type;

    goto :goto_2

    .line 53
    :cond_1
    sget-object p1, Lcom/google/android/filament/LightManager$Type;->SPOT:Lcom/google/android/filament/LightManager$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mType:Lcom/google/android/filament/LightManager$Type;

    goto :goto_2

    .line 50
    :cond_2
    sget-object p1, Lcom/google/android/filament/LightManager$Type;->FOCUSED_SPOT:Lcom/google/android/filament/LightManager$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mType:Lcom/google/android/filament/LightManager$Type;

    goto :goto_2

    .line 47
    :cond_3
    sget-object p1, Lcom/google/android/filament/LightManager$Type;->POINT:Lcom/google/android/filament/LightManager$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mType:Lcom/google/android/filament/LightManager$Type;

    goto :goto_2

    .line 44
    :cond_4
    sget-object p1, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mType:Lcom/google/android/filament/LightManager$Type;

    goto :goto_2

    .line 41
    :cond_5
    sget-object p1, Lcom/google/android/filament/LightManager$Type;->SUN:Lcom/google/android/filament/LightManager$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mType:Lcom/google/android/filament/LightManager$Type;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6143d016 -> :sswitch_4
        0x1be4c -> :sswitch_3
        0x35f902 -> :sswitch_2
        0x65e5590 -> :sswitch_1
        0x14b0b8ca -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private evaluateExpressions([Lcom/miui/maml/data/Expression;[F)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 94
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_1

    .line 95
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 97
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 98
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createLight(Lcom/google/android/filament/Engine;)I
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLinearRGB:[Lcom/miui/maml/data/Expression;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLinearRGBArray:[F

    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/filament/PbrLight;->evaluateExpressions([Lcom/miui/maml/data/Expression;[F)V

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mDirectionXYZ:[Lcom/miui/maml/data/Expression;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mDirectionXYZArray:[F

    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/filament/PbrLight;->evaluateExpressions([Lcom/miui/maml/data/Expression;[F)V

    .line 64
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mPositionXYZ:[Lcom/miui/maml/data/Expression;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mPositionXYZArray:[F

    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/filament/PbrLight;->evaluateExpressions([Lcom/miui/maml/data/Expression;[F)V

    .line 65
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mIntensityExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mIntensity:F

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mFalloffExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mFalloff:F

    .line 72
    :cond_1
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/EntityManager;->create()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLight:I

    .line 73
    new-instance v0, Lcom/google/android/filament/LightManager$Builder;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mType:Lcom/google/android/filament/LightManager$Type;

    invoke-direct {v0, v1}, Lcom/google/android/filament/LightManager$Builder;-><init>(Lcom/google/android/filament/LightManager$Type;)V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLinearRGBArray:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v1, v1, v6

    .line 74
    invoke-virtual {v0, v3, v5, v1}, Lcom/google/android/filament/LightManager$Builder;->color(FFF)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mIntensity:F

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager$Builder;->intensity(F)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mDirectionXYZArray:[F

    aget v3, v1, v2

    aget v5, v1, v4

    aget v1, v1, v6

    .line 76
    invoke-virtual {v0, v3, v5, v1}, Lcom/google/android/filament/LightManager$Builder;->direction(FFF)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mPositionXYZArray:[F

    aget v2, v1, v2

    aget v3, v1, v4

    aget v1, v1, v6

    .line 77
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/filament/LightManager$Builder;->position(FFF)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mFalloff:F

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager$Builder;->falloff(F)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mCastShadows:Z

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager$Builder;->castShadows(Z)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLight:I

    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/google/android/filament/LightManager$Builder;->build(Lcom/google/android/filament/Engine;I)V

    .line 81
    iget p0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLight:I

    return p0
.end method

.method public onDestroy(Lcom/google/android/filament/Engine;)V
    .locals 1

    .line 85
    iget v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLight:I

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyEntity(I)V

    .line 87
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object p1

    iget v0, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLight:I

    invoke-virtual {p1, v0}, Lcom/google/android/filament/EntityManager;->destroy(I)V

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/miui/maml/elements/filament/PbrLight;->mLight:I

    :cond_0
    return-void
.end method
