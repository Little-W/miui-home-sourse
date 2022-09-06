.class public final Lcom/google/android/filament/utils/Float4;
.super Ljava/lang/Object;
.source "Vector.kt"


# instance fields
.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 339
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/filament/utils/Float4;->x:F

    iput p2, p0, Lcom/google/android/filament/utils/Float4;->y:F

    iput p3, p0, Lcom/google/android/filament/utils/Float4;->z:F

    iput p4, p0, Lcom/google/android/filament/utils/Float4;->w:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 338
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float2;FF)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float2;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 340
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float2;FF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float3;F)V
    .locals 2

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 341
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;F)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float4;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget v0, p1, Lcom/google/android/filament/utils/Float4;->x:F

    iget v1, p1, Lcom/google/android/filament/utils/Float4;->y:F

    iget v2, p1, Lcom/google/android/filament/utils/Float4;->z:F

    iget p1, p1, Lcom/google/android/filament/utils/Float4;->w:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Float4;FFFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float4;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/google/android/filament/utils/Float4;->x:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/google/android/filament/utils/Float4;->y:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/google/android/filament/utils/Float4;->z:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/google/android/filament/utils/Float4;->w:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Float4;->copy(FFFF)Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->y:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->z:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->w:F

    return v0
.end method

.method public final copy(FFFF)Lcom/google/android/filament/utils/Float4;
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final dec()Lcom/google/android/filament/utils/Float4;
    .locals 2

    .line 557
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    .line 558
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->y:F

    .line 559
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->z:F

    .line 560
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->w:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->w:F

    return-object p0
.end method

.method public final div(F)Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 567
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final div(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    div-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final div(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    div-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final div(Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 5

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Float4;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Float4;

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    iget v1, p1, Lcom/google/android/filament/utils/Float4;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->y:F

    iget v1, p1, Lcom/google/android/filament/utils/Float4;->y:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->z:F

    iget v1, p1, Lcom/google/android/filament/utils/Float4;->z:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->w:F

    iget p1, p1, Lcom/google/android/filament/utils/Float4;->w:F

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

    .line 481
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 480
    :pswitch_0
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->w:F

    goto :goto_0

    .line 479
    :pswitch_1
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->z:F

    goto :goto_0

    .line 478
    :pswitch_2
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->y:F

    goto :goto_0

    .line 477
    :pswitch_3
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->x:F

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;)F
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/google/android/filament/utils/Float4$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 456
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->w:F

    goto :goto_0

    .line 455
    :pswitch_1
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->z:F

    goto :goto_0

    .line 454
    :pswitch_2
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->y:F

    goto :goto_0

    .line 453
    :pswitch_3
    iget p1, p0, Lcom/google/android/filament/utils/Float4;->x:F

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
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

    .line 484
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(I)F

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

    .line 460
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final get(III)Lcom/google/android/filament/utils/Float3;
    .locals 1

    .line 486
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Float4;->get(I)F

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

    .line 466
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final get(IIII)Lcom/google/android/filament/utils/Float4;
    .locals 1

    .line 489
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p3

    invoke-virtual {p0, p4}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Float4;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p3

    invoke-virtual {p0, p4}, Lcom/google/android/filament/utils/Float4;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final getA()F
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    return v0
.end method

.method public final getB()F
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    return v0
.end method

.method public final getG()F
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v0

    return v0
.end method

.method public final getP()F
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    return v0
.end method

.method public final getQ()F
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    return v0
.end method

.method public final getR()F
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    return v0
.end method

.method public final getRg()Lcom/google/android/filament/utils/Float2;
    .locals 3

    .line 393
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getRgb()Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 406
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getRgba()Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 428
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final getS()F
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    return v0
.end method

.method public final getSt()Lcom/google/android/filament/utils/Float2;
    .locals 3

    .line 399
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getStp()Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 420
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getStpq()Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 444
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final getT()F
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v0

    return v0
.end method

.method public final getW()F
    .locals 1

    .line 338
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->w:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 335
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    return v0
.end method

.method public final getXy()Lcom/google/android/filament/utils/Float2;
    .locals 3

    .line 387
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getXyz()Lcom/google/android/filament/utils/Float3;
    .locals 4

    .line 413
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getXyzw()Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 436
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final getY()F
    .locals 1

    .line 336
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->y:F

    return v0
.end method

.method public final getZ()F
    .locals 1

    .line 337
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->z:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->w:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final inc()Lcom/google/android/filament/utils/Float4;
    .locals 2

    .line 549
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->x:F

    .line 550
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->y:F

    .line 551
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->z:F

    .line 552
    iget v0, p0, Lcom/google/android/filament/utils/Float4;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float4;->w:F

    return-object p0
.end method

.method public final invoke(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 492
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p1

    return p1
.end method

.method public final minus(F)Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 565
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final minus(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final minus(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final minus(Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 5

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final plus(F)Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 564
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final plus(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final plus(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    add-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final plus(Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 5

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final set(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 499
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 498
    :pswitch_0
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->w:F

    goto :goto_0

    .line 497
    :pswitch_1
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->z:F

    goto :goto_0

    .line 496
    :pswitch_2
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->y:F

    goto :goto_0

    .line 495
    :pswitch_3
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->x:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(IIF)V
    .locals 0

    .line 503
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    .line 504
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    return-void
.end method

.method public final set(IIIF)V
    .locals 0

    .line 508
    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    .line 509
    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    .line 510
    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    return-void
.end method

.method public final set(IIIIF)V
    .locals 0

    .line 514
    invoke-virtual {p0, p1, p5}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    .line 515
    invoke-virtual {p0, p2, p5}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    .line 516
    invoke-virtual {p0, p3, p5}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    .line 517
    invoke-virtual {p0, p4, p5}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;F)V
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    sget-object v0, Lcom/google/android/filament/utils/Float4$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 524
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->w:F

    goto :goto_0

    .line 523
    :pswitch_1
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->z:F

    goto :goto_0

    .line 522
    :pswitch_2
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->y:F

    goto :goto_0

    .line 521
    :pswitch_3
    iput p2, p0, Lcom/google/android/filament/utils/Float4;->x:F

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
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

    .line 528
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 529
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

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

    .line 534
    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 535
    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 536
    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;F)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0, p1, p5}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 542
    invoke-virtual {p0, p2, p5}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 543
    invoke-virtual {p0, p3, p5}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    .line 544
    invoke-virtual {p0, p4, p5}, Lcom/google/android/filament/utils/Float4;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    return-void
.end method

.method public final setA(F)V
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-void
.end method

.method public final setB(F)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setG(F)V
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    return-void
.end method

.method public final setP(F)V
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setQ(F)V
    .locals 0

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-void
.end method

.method public final setR(F)V
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    return-void
.end method

.method public final setRg(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 396
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    return-void
.end method

.method public final setRgb(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 409
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 410
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setRgba(Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 431
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 432
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    .line 433
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-void
.end method

.method public final setS(F)V
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    return-void
.end method

.method public final setSt(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 402
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    return-void
.end method

.method public final setStp(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 423
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 424
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setStpq(Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 447
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 448
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    .line 449
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-void
.end method

.method public final setT(F)V
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    return-void
.end method

.method public final setW(F)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/google/android/filament/utils/Float4;->w:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/google/android/filament/utils/Float4;->x:F

    return-void
.end method

.method public final setXy(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 390
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    return-void
.end method

.method public final setXyz(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 416
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 417
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setXyzw(Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 439
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 440
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    .line 441
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-void
.end method

.method public final setY(F)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/google/android/filament/utils/Float4;->y:F

    return-void
.end method

.method public final setZ(F)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/google/android/filament/utils/Float4;->z:F

    return-void
.end method

.method public final times(F)Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 566
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final times(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final times(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public final times(Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 5

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Float4(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lkotlin/jvm/functions/Function1;)Lcom/google/android/filament/utils/Float4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/filament/utils/Float4;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 586
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 587
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    .line 588
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-object p0
.end method

.method public final unaryMinus()Lcom/google/android/filament/utils/Float4;
    .locals 5

    .line 547
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    iget v1, p0, Lcom/google/android/filament/utils/Float4;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/google/android/filament/utils/Float4;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/google/android/filament/utils/Float4;->z:F

    neg-float v3, v3

    iget v4, p0, Lcom/google/android/filament/utils/Float4;->w:F

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method
