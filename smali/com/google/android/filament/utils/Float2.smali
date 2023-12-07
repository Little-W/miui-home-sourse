.class public final Lcom/google/android/filament/utils/Float2;
.super Ljava/lang/Object;


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/filament/utils/Float2;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/filament/utils/Float2;->x:F

    iput p2, p0, Lcom/google/android/filament/utils/Float2;->y:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/google/android/filament/utils/Float2;->x:F

    iget p1, p1, Lcom/google/android/filament/utils/Float2;->y:F

    invoke-direct {p0, v0, p1}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Float2;FFILjava/lang/Object;)Lcom/google/android/filament/utils/Float2;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/google/android/filament/utils/Float2;->x:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/google/android/filament/utils/Float2;->y:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/Float2;->copy(FF)Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    return p0
.end method

.method public final copy(FF)Lcom/google/android/filament/utils/Float2;
    .locals 0

    new-instance p0, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p0
.end method

.method public final dec()Lcom/google/android/filament/utils/Float2;
    .locals 2

    iget v0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    iget v0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    return-object p0
.end method

.method public final div(F)Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    div-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final div(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    div-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Float2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Float2;

    iget v0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    iget v1, p1, Lcom/google/android/filament/utils/Float2;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    iget p1, p1, Lcom/google/android/filament/utils/Float2;->y:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final get(I)F
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index must be in 0..1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iget p0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    :goto_0
    return p0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;)F
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/filament/utils/Float2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index must be X, Y, R, G, S or T"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :pswitch_0
    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    goto :goto_0

    :pswitch_1
    iget p0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->get(I)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float2;->get(I)F

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Float2;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float2;->get(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getG()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    return p0
.end method

.method public final getR()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p0

    return p0
.end method

.method public final getRg()Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getS()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p0

    return p0
.end method

.method public final getSt()Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getT()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    return p0
.end method

.method public final getXy()Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final inc()Lcom/google/android/filament/utils/Float2;
    .locals 2

    iget v0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float2;->x:F

    iget v0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    return-object p0
.end method

.method public final invoke(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->get(I)F

    move-result p0

    return p0
.end method

.method public final minus(F)Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final minus(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final plus(F)Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final plus(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final set(IF)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/android/filament/utils/Float2;->y:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index must be in 0..1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iput p2, p0, Lcom/google/android/filament/utils/Float2;->x:F

    :goto_0
    return-void
.end method

.method public final set(IIF)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Float2;->set(IF)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float2;->set(IF)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;F)V
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/filament/utils/Float2$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index must be X, Y, R, G, S or T"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :pswitch_0
    iput p2, p0, Lcom/google/android/filament/utils/Float2;->y:F

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lcom/google/android/filament/utils/Float2;->x:F

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Float2;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float2;->set(Lcom/google/android/filament/utils/VectorComponent;F)V

    return-void
.end method

.method public final setG(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-void
.end method

.method public final setR(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    return-void
.end method

.method public final setRg(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-void
.end method

.method public final setS(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    return-void
.end method

.method public final setSt(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-void
.end method

.method public final setT(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/filament/utils/Float2;->x:F

    return-void
.end method

.method public final setXy(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/filament/utils/Float2;->y:F

    return-void
.end method

.method public final times(F)Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final times(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Float2(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Float2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transform(Lkotlin/jvm/functions/Function1;)Lcom/google/android/filament/utils/Float2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/filament/utils/Float2;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-object p0
.end method

.method public final unaryMinus()Lcom/google/android/filament/utils/Float2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    iget v1, p0, Lcom/google/android/filament/utils/Float2;->x:F

    neg-float v1, v1

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->y:F

    neg-float p0, p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method
