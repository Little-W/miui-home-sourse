.class public final Lcom/google/android/filament/utils/Bool3;
.super Ljava/lang/Object;
.source "Vector.kt"


# instance fields
.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Bool2;Z)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Bool2;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 942
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Bool3;-><init>(Lcom/google/android/filament/utils/Bool2;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Bool3;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    iget-boolean v0, p1, Lcom/google/android/filament/utils/Bool3;->x:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool3;->y:Z

    iget-boolean p1, p1, Lcom/google/android/filament/utils/Bool3;->z:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    iput-boolean p3, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 941
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Bool3;ZZZILjava/lang/Object;)Lcom/google/android/filament/utils/Bool3;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Bool3;->copy(ZZZ)Lcom/google/android/filament/utils/Bool3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    return v0
.end method

.method public final copy(ZZZ)Lcom/google/android/filament/utils/Bool3;
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Bool3;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Bool3;

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool3;->x:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool3;->y:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    iget-boolean p1, p1, Lcom/google/android/filament/utils/Bool3;->z:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(II)Lcom/google/android/filament/utils/Bool2;
    .locals 1

    .line 1040
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->get(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool3;->get(I)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)Lcom/google/android/filament/utils/Bool2;
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool3;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final get(III)Lcom/google/android/filament/utils/Bool3;
    .locals 1

    .line 1042
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->get(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool3;->get(I)Z

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Bool3;->get(I)Z

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

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

    .line 1030
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool3;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p2

    invoke-virtual {p0, p3}, Lcom/google/android/filament/utils/Bool3;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final get(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1037
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1036
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    goto :goto_0

    .line 1035
    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    goto :goto_0

    .line 1034
    :pswitch_2
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;)Z
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    sget-object v0, Lcom/google/android/filament/utils/Bool3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 1022
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1021
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    goto :goto_0

    .line 1020
    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    goto :goto_0

    .line 1019
    :pswitch_2
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

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

.method public final getB()Z
    .locals 1

    .line 956
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result v0

    return v0
.end method

.method public final getG()Z
    .locals 1

    .line 951
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    return v0
.end method

.method public final getP()Z
    .locals 1

    .line 972
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result v0

    return v0
.end method

.method public final getR()Z
    .locals 1

    .line 946
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    return v0
.end method

.method public final getRg()Lcom/google/android/filament/utils/Bool2;
    .locals 3

    .line 984
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getRgb()Lcom/google/android/filament/utils/Bool3;
    .locals 4

    .line 997
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final getS()Z
    .locals 1

    .line 962
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    return v0
.end method

.method public final getSt()Lcom/google/android/filament/utils/Bool2;
    .locals 3

    .line 990
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getStp()Lcom/google/android/filament/utils/Bool3;
    .locals 4

    .line 1011
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final getT()Z
    .locals 1

    .line 967
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    return v0
.end method

.method public final getX()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    return v0
.end method

.method public final getXy()Lcom/google/android/filament/utils/Bool2;
    .locals 3

    .line 978
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getXyz()Lcom/google/android/filament/utils/Bool3;
    .locals 4

    .line 1004
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public final getY()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    return v0
.end method

.method public final getZ()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final invoke(I)Z
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 1045
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->get(I)Z

    move-result p1

    return p1
.end method

.method public final set(IIIZ)V
    .locals 0

    .line 1060
    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Bool3;->set(IZ)V

    .line 1061
    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Bool3;->set(IZ)V

    .line 1062
    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Bool3;->set(IZ)V

    return-void
.end method

.method public final set(IIZ)V
    .locals 0

    .line 1055
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Bool3;->set(IZ)V

    .line 1056
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Bool3;->set(IZ)V

    return-void
.end method

.method public final set(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1051
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1050
    :pswitch_0
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    goto :goto_0

    .line 1049
    :pswitch_1
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    goto :goto_0

    .line 1048
    :pswitch_2
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0, p1, p4}, Lcom/google/android/filament/utils/Bool3;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    .line 1083
    invoke-virtual {p0, p2, p4}, Lcom/google/android/filament/utils/Bool3;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    .line 1084
    invoke-virtual {p0, p3, p4}, Lcom/google/android/filament/utils/Bool3;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Bool3;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    .line 1074
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Bool3;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    sget-object v0, Lcom/google/android/filament/utils/Bool3$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 1069
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1068
    :pswitch_0
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    goto :goto_0

    .line 1067
    :pswitch_1
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    goto :goto_0

    .line 1066
    :pswitch_2
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

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

.method public final setB(Z)V
    .locals 0

    .line 958
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setZ(Z)V

    return-void
.end method

.method public final setG(Z)V
    .locals 0

    .line 953
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    return-void
.end method

.method public final setP(Z)V
    .locals 0

    .line 974
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setZ(Z)V

    return-void
.end method

.method public final setR(Z)V
    .locals 0

    .line 948
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    return-void
.end method

.method public final setRg(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    .line 987
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    return-void
.end method

.method public final setRgb(Lcom/google/android/filament/utils/Bool3;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    .line 1001
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setZ(Z)V

    return-void
.end method

.method public final setS(Z)V
    .locals 0

    .line 964
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    return-void
.end method

.method public final setSt(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    .line 993
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    return-void
.end method

.method public final setStp(Lcom/google/android/filament/utils/Bool3;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    .line 1014
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    .line 1015
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setZ(Z)V

    return-void
.end method

.method public final setT(Z)V
    .locals 0

    .line 969
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    return-void
.end method

.method public final setX(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    return-void
.end method

.method public final setXy(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    .line 981
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    return-void
.end method

.method public final setXyz(Lcom/google/android/filament/utils/Bool3;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setX(Z)V

    .line 1007
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool3;->setY(Z)V

    .line 1008
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool3;->setZ(Z)V

    return-void
.end method

.method public final setY(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    return-void
.end method

.method public final setZ(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bool3(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool3;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool3;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool3;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
