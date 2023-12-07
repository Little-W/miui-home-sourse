.class public final Lcom/google/android/filament/utils/Mat3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Mat3$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat3\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,521:1\n215#2,4:522\n311#2:526\n311#2:527\n311#2:528\n312#2:529\n312#2:530\n312#2:531\n313#2:532\n313#2:533\n313#2:534\n314#2:535\n314#2:536\n314#2:537\n684#3:538\n684#3:539\n684#3:540\n684#3:541\n684#3:542\n684#3:543\n684#3:544\n684#3:545\n684#3:546\n684#3:547\n684#3:548\n684#3:549\n*E\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat3\n*L\n149#1,4:522\n169#1:526\n169#1:527\n169#1:528\n170#1:529\n170#1:530\n170#1:531\n171#1:532\n171#1:533\n171#1:534\n172#1:535\n172#1:536\n172#1:537\n177#1:538\n177#1:539\n177#1:540\n178#1:541\n178#1:542\n178#1:543\n179#1:544\n179#1:545\n179#1:546\n185#1:547\n185#1:548\n185#1:549\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/filament/utils/Mat3$Companion;


# instance fields
.field private x:Lcom/google/android/filament/utils/Float3;

.field private y:Lcom/google/android/filament/utils/Float3;

.field private z:Lcom/google/android/filament/utils/Float3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Mat3$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/Mat3$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/filament/utils/Mat3;->Companion:Lcom/google/android/filament/utils/Mat3$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "z"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iput-object p2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iput-object p3, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Lcom/google/android/filament/utils/Float3;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    new-instance p2, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    new-instance p3, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Mat3;)V
    .locals 8

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/filament/utils/Float3;->copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-static/range {v1 .. v6}, Lcom/google/android/filament/utils/Float3;->copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/filament/utils/Float3;->copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Mat3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILjava/lang/Object;)Lcom/google/android/filament/utils/Mat3;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Mat3;->copy(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final component2()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final component3()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final copy(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat3;
    .locals 0

    const-string/jumbo p0, "x"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "y"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "z"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p0
.end method

.method public final dec()Lcom/google/android/filament/utils/Mat3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->dec()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->dec()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->dec()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final div(F)Lcom/google/android/filament/utils/Mat3;
    .locals 5

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    div-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    div-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    div-float/2addr p0, p1

    invoke-direct {v0, v3, v4, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Mat3;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Mat3;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

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

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p0

    return p0
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;I)F
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p0

    return p0
.end method

.method public final get(I)Lcom/google/android/filament/utils/Float3;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in 0..2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    :goto_0
    return-object p0
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float3;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/filament/utils/Mat3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/MatrixColumn;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be X, Y or Z"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    :goto_0
    return-object p0
.end method

.method public final getX()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final getY()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final getZ()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final inc()Lcom/google/android/filament/utils/Mat3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->inc()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->inc()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->inc()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final invoke(II)F
    .locals 0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p0

    return p0
.end method

.method public final invoke(IIF)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/filament/utils/Mat3;->set(IIF)V

    return-void
.end method

.method public final minus(F)Lcom/google/android/filament/utils/Mat3;
    .locals 5

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-direct {v0, v3, v4, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p0
.end method

.method public final plus(F)Lcom/google/android/filament/utils/Mat3;
    .locals 5

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    add-float/2addr p0, p1

    invoke-direct {v0, v3, v4, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p0
.end method

.method public final set(IIF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float3;->set(IF)V

    return-void
.end method

.method public final set(ILcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-void
.end method

.method public final setX(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public final setY(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public final setZ(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public final times(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 5

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    new-instance p0, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p0
.end method

.method public final times(F)Lcom/google/android/filament/utils/Mat3;
    .locals 5

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    mul-float/2addr p0, p1

    invoke-direct {v0, v3, v4, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p0
.end method

.method public final times(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;
    .locals 8

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v5, v1

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v2, p0

    new-instance p0, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p0, v4, v5, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance p1, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p1
.end method

.method public final toFloatArray()[F
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    const/16 v1, 0x8

    aput p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|\n            "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unaryMinus()Lcom/google/android/filament/utils/Mat3;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Mat3;

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object v0
.end method
