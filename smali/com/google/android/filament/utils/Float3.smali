.class public final Lcom/google/android/filament/utils/Float3;
.super Ljava/lang/Object;
.source "Vector.kt"


# instance fields
.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p1, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/filament/utils/Float3;->x:F

    iput p2, p0, Lcom/google/android/filament/utils/Float3;->y:F

    iput p3, p0, Lcom/google/android/filament/utils/Float3;->z:F

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 149
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float2;F)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float2;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 151
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Float3;-><init>(Lcom/google/android/filament/utils/Float2;F)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float3;)V
    .locals 2

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget v0, p1, Lcom/google/android/filament/utils/Float3;->x:F

    iget v1, p1, Lcom/google/android/filament/utils/Float3;->y:F

    iget p1, p1, Lcom/google/android/filament/utils/Float3;->z:F

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/google/android/filament/utils/Float3;->x:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/google/android/filament/utils/Float3;->y:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/google/android/filament/utils/Float3;->z:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Float3;->copy(FFF)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float3;->y:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float3;->z:F

    return v0
.end method

.method public final copy(FFF)Lcom/google/android/filament/utils/Float3;
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final dec()Lcom/google/android/filament/utils/Float3;
    .locals 2

    .line 305
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    .line 306
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float3;->y:F

    .line 307
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float3;->z:F

    return-object p0
.end method

.method public final div(F)Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 314
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    div-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final div(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    div-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final div(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    div-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Float3;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Float3;

    iget v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    iget v1, p1, Lcom/google/android/filament/utils/Float3;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/filament/utils/Float3;->y:F

    iget v1, p1, Lcom/google/android/filament/utils/Float3;->y:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/filament/utils/Float3;->z:F

    iget p1, p1, Lcom/google/android/filament/utils/Float3;->z:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 246
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 245
    :pswitch_0
    iget p1, p0, Lcom/google/android/filament/utils/Float3;->z:F

    goto :goto_0

    .line 244
    :pswitch_1
    iget p1, p0, Lcom/google/android/filament/utils/Float3;->y:F

    goto :goto_0

    .line 243
    :pswitch_2
    iget p1, p0, Lcom/google/android/filament/utils/Float3;->x:F

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;)F
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/google/android/filament/utils/Float3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 231
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 230
    :pswitch_0
    iget p1, p0, Lcom/google/android/filament/utils/Float3;->z:F

    goto :goto_0

    .line 229
    :pswitch_1
    iget p1, p0, Lcom/google/android/filament/utils/Float3;->y:F

    goto :goto_0

    .line 228
    :pswitch_2
    iget p1, p0, Lcom/google/android/filament/utils/Float3;->x:F

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(II)Lcom/google/android/filament/utils/Float2;
    .locals 1

    .line 249
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Float2;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float3;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final get(III)Lcom/google/android/filament/utils/Float3;
    .locals 1

    .line 251
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Float3;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float3;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Float3;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getB()F
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    return v0
.end method

.method public final getG()F
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    return v0
.end method

.method public final getP()F
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    return v0
.end method

.method public final getR()F
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    return v0
.end method

.method public final getRg()Lcom/google/android/filament/utils/Float2;
    .locals 3

    .line 193
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getRgb()Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 206
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getS()F
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    return v0
.end method

.method public final getSt()Lcom/google/android/filament/utils/Float2;
    .locals 3

    .line 199
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getStp()Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 220
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getT()F
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    return v0
.end method

.method public final getXy()Lcom/google/android/filament/utils/Float2;
    .locals 3

    .line 187
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getXyz()Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 213
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getY()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->y:F

    return v0
.end method

.method public final getZ()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/filament/utils/Float3;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/filament/utils/Float3;->z:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final inc()Lcom/google/android/filament/utils/Float3;
    .locals 2

    .line 298
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float3;->x:F

    .line 299
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float3;->y:F

    .line 300
    iget v0, p0, Lcom/google/android/filament/utils/Float3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float3;->z:F

    return-object p0
.end method

.method public final invoke(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p1

    return p1
.end method

.method public final minus(F)Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 312
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final minus(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final minus(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final plus(F)Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 311
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final plus(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final plus(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final set(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 260
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 259
    :pswitch_0
    iput p2, p0, Lcom/google/android/filament/utils/Float3;->z:F

    goto :goto_0

    .line 258
    :pswitch_1
    iput p2, p0, Lcom/google/android/filament/utils/Float3;->y:F

    goto :goto_0

    .line 257
    :pswitch_2
    iput p2, p0, Lcom/google/android/filament/utils/Float3;->x:F

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(IIF)V
    .locals 0

    .line 264
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Float3;->set(IF)V

    .line 265
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float3;->set(IF)V

    return-void
.end method

.method public final set(IIIF)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Float3;->set(IF)V

    .line 270
    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Float3;->set(IF)V

    .line 271
    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Float3;->set(IF)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;F)V
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/google/android/filament/utils/Float3$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 278
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 277
    :pswitch_0
    iput p2, p0, Lcom/google/android/filament/utils/Float3;->z:F

    goto :goto_0

    .line 276
    :pswitch_1
    iput p2, p0, Lcom/google/android/filament/utils/Float3;->y:F

    goto :goto_0

    .line 275
    :pswitch_2
    iput p2, p0, Lcom/google/android/filament/utils/Float3;->x:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;F)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Float3;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 283
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float3;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;F)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Float3;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 292
    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Float3;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 293
    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Float3;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    return-void
.end method

.method public final setB(F)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-void
.end method

.method public final setG(F)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    return-void
.end method

.method public final setP(F)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-void
.end method

.method public final setR(F)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    return-void
.end method

.method public final setRg(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 196
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    return-void
.end method

.method public final setRgb(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 209
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    .line 210
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-void
.end method

.method public final setS(F)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    return-void
.end method

.method public final setSt(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 202
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    return-void
.end method

.method public final setStp(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 223
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    .line 224
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-void
.end method

.method public final setT(F)V
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    return-void
.end method

.method public final setX(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/google/android/filament/utils/Float3;->x:F

    return-void
.end method

.method public final setXy(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 190
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    return-void
.end method

.method public final setXyz(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 216
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    .line 217
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-void
.end method

.method public final setY(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/google/android/filament/utils/Float3;->y:F

    return-void
.end method

.method public final setZ(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/google/android/filament/utils/Float3;->z:F

    return-void
.end method

.method public final times(F)Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 313
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final times(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final times(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Float3(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float3;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lkotlin/jvm/functions/Function1;)Lcom/google/android/filament/utils/Float3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/filament/utils/Float3;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 328
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    .line 329
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-object p0
.end method

.method public final unaryMinus()Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 296
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    iget v1, p0, Lcom/google/android/filament/utils/Float3;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/google/android/filament/utils/Float3;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/google/android/filament/utils/Float3;->z:F

    neg-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method
