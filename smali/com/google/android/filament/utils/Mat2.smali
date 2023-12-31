.class public final Lcom/google/android/filament/utils/Mat2;
.super Ljava/lang/Object;
.source "Matrix.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Mat2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,521:1\n61#2,3:522\n132#2:525\n132#2:526\n133#2:527\n133#2:528\n134#2:529\n134#2:530\n135#2:531\n135#2:532\n602#3:533\n602#3:534\n602#3:535\n602#3:536\n602#3:537\n602#3:538\n*E\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n*L\n60#1,3:522\n78#1:525\n78#1:526\n79#1:527\n79#1:528\n80#1:529\n80#1:530\n81#1:531\n81#1:532\n86#1:533\n86#1:534\n87#1:535\n87#1:536\n93#1:537\n93#1:538\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/filament/utils/Mat2$Companion;


# instance fields
.field private x:Lcom/google/android/filament/utils/Float2;

.field private y:Lcom/google/android/filament/utils/Float2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Mat2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/Mat2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/filament/utils/Mat2;->Companion:Lcom/google/android/filament/utils/Mat2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    iput-object p2, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-eqz p4, :cond_0

    .line 26
    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/2addr p3, v3

    if-eqz p3, :cond_1

    .line 27
    new-instance p2, Lcom/google/android/filament/utils/Float2;

    const/4 p3, 0x1

    invoke-direct {p2, v1, v2, p3, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Mat2;)V
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p1, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v2, v1}, Lcom/google/android/filament/utils/Float2;->copy$default(Lcom/google/android/filament/utils/Float2;FFILjava/lang/Object;)Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-static {p1, v3, v3, v2, v1}, Lcom/google/android/filament/utils/Float2;->copy$default(Lcom/google/android/filament/utils/Float2;FFILjava/lang/Object;)Lcom/google/android/filament/utils/Float2;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Mat2;Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;ILjava/lang/Object;)Lcom/google/android/filament/utils/Mat2;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/Mat2;->copy(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Mat2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/android/filament/utils/Float2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final component2()Lcom/google/android/filament/utils/Float2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final copy(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Mat2;
    .locals 0

    const-string/jumbo p0, "x"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "y"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/filament/utils/Mat2;

    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object p0
.end method

.method public final dec()Lcom/google/android/filament/utils/Mat2;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->dec()Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 74
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->dec()Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final div(F)Lcom/google/android/filament/utils/Mat2;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 531
    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    div-float/2addr v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 81
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    .line 532
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    div-float/2addr p0, p1

    invoke-direct {v0, v2, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 81
    new-instance p0, Lcom/google/android/filament/utils/Mat2;

    invoke-direct {p0, v1, v0}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Mat2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Mat2;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final get(II)F
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat2;->get(I)Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float2;->get(I)F

    move-result p0

    return p0
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;I)F
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat2;->get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float2;->get(I)F

    move-result p0

    return p0
.end method

.method public final get(I)Lcom/google/android/filament/utils/Float2;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in 0..1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    :goto_0
    return-object p0
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float2;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/google/android/filament/utils/Mat2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/MatrixColumn;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be X or Y"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    :goto_0
    return-object p0
.end method

.method public final getX()Lcom/google/android/filament/utils/Float2;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final getY()Lcom/google/android/filament/utils/Float2;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final inc()Lcom/google/android/filament/utils/Mat2;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->inc()Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 69
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->inc()Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final invoke(II)F
    .locals 0

    add-int/lit8 p2, p2, -0x1

    .line 56
    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Mat2;->get(I)Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->get(I)F

    move-result p0

    return p0
.end method

.method public final invoke(IIF)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    .line 57
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/filament/utils/Mat2;->set(IIF)V

    return-void
.end method

.method public final minus(F)Lcom/google/android/filament/utils/Mat2;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 527
    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 79
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    .line 528
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-direct {v0, v2, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 79
    new-instance p0, Lcom/google/android/filament/utils/Mat2;

    invoke-direct {p0, v1, v0}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object p0
.end method

.method public final plus(F)Lcom/google/android/filament/utils/Mat2;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 525
    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 78
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    .line 526
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    add-float/2addr p0, p1

    invoke-direct {v0, v2, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 78
    new-instance p0, Lcom/google/android/filament/utils/Mat2;

    invoke-direct {p0, v1, v0}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object p0
.end method

.method public final set(IIF)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat2;->get(I)Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float2;->set(IF)V

    return-void
.end method

.method public final set(ILcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat2;->get(I)Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    .line 522
    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    .line 523
    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-void
.end method

.method public final setX(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    return-void
.end method

.method public final setY(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    return-void
.end method

.method public final times(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat2;)Lcom/google/android/filament/utils/Mat2;

    move-result-object p0

    .line 93
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 537
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 93
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    .line 538
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    .line 93
    new-instance p0, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p0, v1, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p0
.end method

.method public final times(F)Lcom/google/android/filament/utils/Mat2;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 529
    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 80
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    .line 530
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    mul-float/2addr p0, p1

    invoke-direct {v0, v2, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 80
    new-instance p0, Lcom/google/android/filament/utils/Mat2;

    invoke-direct {p0, v1, v0}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object p0
.end method

.method public final times(Lcom/google/android/filament/utils/Mat2;)Lcom/google/android/filament/utils/Mat2;
    .locals 5

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat2;)Lcom/google/android/filament/utils/Mat2;

    move-result-object p0

    .line 86
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 533
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 86
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    .line 534
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 86
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 87
    iget-object v1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    .line 535
    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    .line 87
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    .line 536
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

    add-float/2addr v1, p0

    .line 87
    new-instance p0, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p0, v3, v1}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 85
    new-instance p1, Lcom/google/android/filament/utils/Mat2;

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object p1
.end method

.method public final toFloatArray()[F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 97
    iget-object v1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 98
    iget-object v1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|\n            "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unaryMinus()Lcom/google/android/filament/utils/Mat2;
    .locals 2

    .line 66
    new-instance v0, Lcom/google/android/filament/utils/Mat2;

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat2;->x:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->unaryMinus()Lcom/google/android/filament/utils/Float2;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat2;->y:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->unaryMinus()Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object v0
.end method
