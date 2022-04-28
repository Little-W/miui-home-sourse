.class public final Lcom/google/android/filament/utils/Mat3;
.super Ljava/lang/Object;
.source "Matrix.kt"


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

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "z"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
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

    .line 111
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

    .line 112
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

    .line 113
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

    .line 114
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
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    return-object v0
.end method

.method public final component2()Lcom/google/android/filament/utils/Float3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    return-object v0
.end method

.method public final component3()Lcom/google/android/filament/utils/Float3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object v0
.end method

.method public final copy(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat3;
    .locals 1

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "z"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object v0
.end method

.method public final dec()Lcom/google/android/filament/utils/Mat3;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->dec()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 164
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->dec()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 165
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->dec()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final div(F)Lcom/google/android/filament/utils/Mat3;
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 535
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

    .line 172
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 536
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

    .line 172
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 537
    new-instance v3, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    div-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 172
    new-instance p1, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(II)F
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p1

    return p1
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;I)F
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p1

    return p1
.end method

.method public final get(I)Lcom/google/android/filament/utils/Float3;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "column must be in 0..2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 132
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float3;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/google/android/filament/utils/Mat3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/MatrixColumn;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 141
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "column must be X, Y or Z"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 140
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getX()Lcom/google/android/filament/utils/Float3;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    return-object v0
.end method

.method public final getY()Lcom/google/android/filament/utils/Float3;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    return-object v0
.end method

.method public final getZ()Lcom/google/android/filament/utils/Float3;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object v0
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

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final inc()Lcom/google/android/filament/utils/Mat3;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->inc()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 158
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->inc()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 159
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->inc()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final invoke(II)F
    .locals 0

    add-int/lit8 p2, p2, -0x1

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lcom/google/android/filament/utils/Float3;->get(I)F

    move-result p1

    return p1
.end method

.method public final invoke(IIF)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    .line 146
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/filament/utils/Mat3;->set(IIF)V

    return-void
.end method

.method public final minus(F)Lcom/google/android/filament/utils/Mat3;
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 529
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

    .line 170
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 530
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

    .line 170
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 531
    new-instance v3, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 170
    new-instance p1, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p1
.end method

.method public final plus(F)Lcom/google/android/filament/utils/Mat3;
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 526
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

    .line 169
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 527
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

    .line 169
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 528
    new-instance v3, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    add-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 169
    new-instance p1, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p1
.end method

.method public final set(IIF)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/filament/utils/Float3;->set(IF)V

    return-void
.end method

.method public final set(ILcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat3;->get(I)Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    .line 522
    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 523
    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    .line 524
    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-void
.end method

.method public final setX(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public final setY(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public final setZ(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public final times(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;

    move-result-object v0

    .line 185
    iget-object v1, v0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 547
    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 185
    iget-object v1, v0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 548
    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    .line 185
    iget-object v0, v0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 549
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 185
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v2, v3, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public final times(F)Lcom/google/android/filament/utils/Mat3;
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 532
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

    .line 171
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 533
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

    .line 171
    iget-object v0, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 534
    new-instance v3, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 171
    new-instance p1, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p1
.end method

.method public final times(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;
    .locals 9

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;

    move-result-object v0

    .line 177
    iget-object v1, v0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 538
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

    .line 177
    iget-object v1, v0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 539
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

    .line 177
    iget-object v1, v0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    .line 540
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

    .line 177
    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 178
    iget-object v2, v0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 541
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

    .line 178
    iget-object v2, v0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 542
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

    .line 178
    iget-object v2, v0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    .line 543
    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v6, v2

    .line 178
    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v2, v4, v5, v6}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 179
    iget-object v3, v0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    iget-object v4, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 544
    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v5, v3

    .line 179
    iget-object v3, v0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    iget-object v4, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 545
    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v6, v3

    .line 179
    iget-object v0, v0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    .line 546
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    .line 179
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v5, v6, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 176
    new-instance v0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object v0
.end method

.method public final toFloatArray()[F
    .locals 3

    const/16 v0, 0x9

    .line 188
    new-array v0, v0, [F

    .line 189
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

    .line 190
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

    .line 191
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

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
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

    const-string v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
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

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "|\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unaryMinus()Lcom/google/android/filament/utils/Mat3;
    .locals 4

    .line 155
    new-instance v0, Lcom/google/android/filament/utils/Mat3;

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat3;->x:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat3;->y:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat3;->z:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object v0
.end method
