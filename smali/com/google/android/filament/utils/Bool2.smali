.class public final Lcom/google/android/filament/utils/Bool2;
.super Ljava/lang/Object;
.source "Vector.kt"


# instance fields
.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    iget-boolean v0, p1, Lcom/google/android/filament/utils/Bool2;->x:Z

    iget-boolean p1, p1, Lcom/google/android/filament/utils/Bool2;->y:Z

    invoke-direct {p0, v0, p1}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 854
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Bool2;ZZILjava/lang/Object;)Lcom/google/android/filament/utils/Bool2;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/Bool2;->copy(ZZ)Lcom/google/android/filament/utils/Bool2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    return v0
.end method

.method public final copy(ZZ)Lcom/google/android/filament/utils/Bool2;
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Bool2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Bool2;

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    iget-boolean v1, p1, Lcom/google/android/filament/utils/Bool2;->x:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    iget-boolean p1, p1, Lcom/google/android/filament/utils/Bool2;->y:Z

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

    .line 914
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->get(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool2;->get(I)Z

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

    .line 905
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Bool2;->get(Lcom/google/android/filament/utils/VectorComponent;)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final get(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 911
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 910
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    goto :goto_0

    .line 909
    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lcom/google/android/filament/utils/VectorComponent;)Z
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 898
    sget-object v0, Lcom/google/android/filament/utils/Bool2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 901
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 900
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    goto :goto_0

    .line 899
    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    :goto_0
    return p1

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

.method public final getG()Z
    .locals 1

    .line 863
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result v0

    return v0
.end method

.method public final getR()Z
    .locals 1

    .line 858
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    return v0
.end method

.method public final getRg()Lcom/google/android/filament/utils/Bool2;
    .locals 3

    .line 886
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getS()Z
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    return v0
.end method

.method public final getSt()Lcom/google/android/filament/utils/Bool2;
    .locals 3

    .line 892
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getT()Z
    .locals 1

    .line 874
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result v0

    return v0
.end method

.method public final getX()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    return v0
.end method

.method public final getXy()Lcom/google/android/filament/utils/Bool2;
    .locals 3

    .line 880
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public final getY()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final invoke(I)Z
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 916
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->get(I)Z

    move-result p1

    return p1
.end method

.method public final set(IIZ)V
    .locals 0

    .line 925
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Bool2;->set(IZ)V

    .line 926
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Bool2;->set(IZ)V

    return-void
.end method

.method public final set(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 921
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 920
    :pswitch_0
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    goto :goto_0

    .line 919
    :pswitch_1
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0, p1, p3}, Lcom/google/android/filament/utils/Bool2;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    .line 937
    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Bool2;->set(Lcom/google/android/filament/utils/VectorComponent;Z)V

    return-void
.end method

.method public final set(Lcom/google/android/filament/utils/VectorComponent;Z)V
    .locals 1

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    sget-object v0, Lcom/google/android/filament/utils/Bool2$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/VectorComponent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 932
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 931
    :pswitch_0
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    goto :goto_0

    .line 930
    :pswitch_1
    iput-boolean p2, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

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

.method public final setG(Z)V
    .locals 0

    .line 865
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->setY(Z)V

    return-void
.end method

.method public final setR(Z)V
    .locals 0

    .line 860
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->setX(Z)V

    return-void
.end method

.method public final setRg(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool2;->setX(Z)V

    .line 889
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->setY(Z)V

    return-void
.end method

.method public final setS(Z)V
    .locals 0

    .line 871
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->setX(Z)V

    return-void
.end method

.method public final setSt(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool2;->setX(Z)V

    .line 895
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->setY(Z)V

    return-void
.end method

.method public final setT(Z)V
    .locals 0

    .line 876
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->setY(Z)V

    return-void
.end method

.method public final setX(Z)V
    .locals 0

    .line 854
    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    return-void
.end method

.method public final setXy(Lcom/google/android/filament/utils/Bool2;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Bool2;->setX(Z)V

    .line 883
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Bool2;->setY(Z)V

    return-void
.end method

.method public final setY(Z)V
    .locals 0

    .line 854
    iput-boolean p1, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bool2(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool2;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/filament/utils/Bool2;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
