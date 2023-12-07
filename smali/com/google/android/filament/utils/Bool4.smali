.class public final Lcom/google/android/filament/utils/Bool4;
.super Ljava/lang/Object;


# instance fields
.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


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

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Bool2;ZZ)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Bool2;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Bool4;-><init>(Lcom/google/android/filament/utils/Bool2;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Bool3;Z)V
    .locals 2

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Bool3;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Bool4;-><init>(Lcom/google/android/filament/utils/Bool3;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Bool4;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/google/android/filament/utils/Bool4;->x:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool4;->y:Z

    iget-boolean v2, p1, Lcom/google/android/filament/utils/Bool4;->z:Z

    iget-boolean p1, p1, Lcom/google/android/filament/utils/Bool4;->w:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    iput-boolean p3, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    iput-boolean p4, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Bool4;ZZZZILjava/lang/Object;)Lcom/google/android/filament/utils/Bool4;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Bool4;->copy(ZZZZ)Lcom/google/android/filament/utils/Bool4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    return p0
.end method

.method public final copy(ZZZZ)Lcom/google/android/filament/utils/Bool4;
    .locals 0

    new-instance p0, Lcom/google/android/filament/utils/Bool4;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Bool4;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Bool4;

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool4;->x:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool4;->y:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool4;->z:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    iget-boolean p1, p1, Lcom/google/android/filament/utils/Bool4;->w:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final get(II)Lcom/google/android/filament/utils/Bool2;
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Bool2;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final get(III)Lcom/google/android/filament/utils/Bool3;
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p0

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Bool3;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p0

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final get(IIII)Lcom/google/android/filament/utils/Bool4;
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p3

    invoke-virtual {p0, p4}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p0

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Bool4;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p3

    invoke-virtual {p0, p4}, Lcom/google/android/filament/utils/Bool4;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p0

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final get(I)Z
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index must be in 0..3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    :goto_0
    return p0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;)Z
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/filament/utils/Bool4$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    goto :goto_0

    :pswitch_1
    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    goto :goto_0

    :pswitch_2
    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    goto :goto_0

    :pswitch_3
    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    :goto_0
    return p0

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

.method public final getA()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p0

    return p0
.end method

.method public final getB()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result p0

    return p0
.end method

.method public final getG()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result p0

    return p0
.end method

.method public final getP()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result p0

    return p0
.end method

.method public final getQ()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p0

    return p0
.end method

.method public final getR()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result p0

    return p0
.end method

.method public final getRg()Lcom/google/android/filament/utils/Bool2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getRgb()Lcom/google/android/filament/utils/Bool3;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final getRgba()Lcom/google/android/filament/utils/Bool4;
    .locals 4

    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final getS()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result p0

    return p0
.end method

.method public final getSt()Lcom/google/android/filament/utils/Bool2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getStp()Lcom/google/android/filament/utils/Bool3;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final getStpq()Lcom/google/android/filament/utils/Bool4;
    .locals 4

    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final getT()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result p0

    return p0
.end method

.method public final getW()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    return p0
.end method

.method public final getX()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    return p0
.end method

.method public final getXy()Lcom/google/android/filament/utils/Bool2;
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getXyz()Lcom/google/android/filament/utils/Bool3;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final getXyzw()Lcom/google/android/filament/utils/Bool4;
    .locals 4

    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final getY()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    return p0
.end method

.method public final getZ()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    if-eqz p0, :cond_3

    move p0, v1

    :cond_3
    add-int/2addr v0, p0

    return v0
.end method

.method public final invoke(I)Z
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->get(I)Z

    move-result p0

    return p0
.end method

.method public final set(IIIIZ)V
    .locals 0

    invoke-virtual {p0, p1, p5}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    invoke-virtual {p0, p2, p5}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    invoke-virtual {p0, p3, p5}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    invoke-virtual {p0, p4, p5}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    return-void
.end method

.method public final set(IIIZ)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    return-void
.end method

.method public final set(IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Bool4;->set(IZ)V

    return-void
.end method

.method public final set(IZ)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index must be in 0..3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    goto :goto_0

    :cond_3
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    :goto_0
    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p5}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    invoke-virtual {p0, p2, p5}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    invoke-virtual {p0, p3, p5}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    invoke-virtual {p0, p4, p5}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Bool4;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/filament/utils/Bool4$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    goto :goto_0

    :pswitch_3
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

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

.method public final setA(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setW(Z)V

    return-void
.end method

.method public final setB(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    return-void
.end method

.method public final setG(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    return-void
.end method

.method public final setP(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    return-void
.end method

.method public final setQ(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setW(Z)V

    return-void
.end method

.method public final setR(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    return-void
.end method

.method public final setRg(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    return-void
.end method

.method public final setRgb(Lcom/google/android/filament/utils/Bool3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    return-void
.end method

.method public final setRgba(Lcom/google/android/filament/utils/Bool4;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setW(Z)V

    return-void
.end method

.method public final setS(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    return-void
.end method

.method public final setSt(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    return-void
.end method

.method public final setStp(Lcom/google/android/filament/utils/Bool3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    return-void
.end method

.method public final setStpq(Lcom/google/android/filament/utils/Bool4;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setW(Z)V

    return-void
.end method

.method public final setT(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    return-void
.end method

.method public final setW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    return-void
.end method

.method public final setX(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    return-void
.end method

.method public final setXy(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    return-void
.end method

.method public final setXyz(Lcom/google/android/filament/utils/Bool3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    return-void
.end method

.method public final setXyzw(Lcom/google/android/filament/utils/Bool4;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setX(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setY(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool4;->setZ(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool4;->setW(Z)V

    return-void
.end method

.method public final setY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    return-void
.end method

.method public final setZ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bool4(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool4;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool4;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool4;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/filament/utils/Bool4;->w:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
