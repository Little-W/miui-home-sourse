.class public final Lcom/google/android/filament/utils/Mat3$Companion;
.super Ljava/lang/Object;
.source "Matrix.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Mat3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat3$Companion\n*L\n1#1,521:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/google/android/filament/utils/Mat3$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final identity()Lcom/google/android/filament/utils/Mat3;
    .locals 7

    .line 126
    new-instance v6, Lcom/google/android/filament/utils/Mat3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final varargs of([F)Lcom/google/android/filament/utils/Mat3;
    .locals 7

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Lcom/google/android/filament/utils/Mat3;

    .line 120
    new-instance v3, Lcom/google/android/filament/utils/Float3;

    aget v2, p1, v2

    const/4 v4, 0x3

    aget v4, p1, v4

    const/4 v5, 0x6

    aget v5, p1, v5

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 121
    new-instance v2, Lcom/google/android/filament/utils/Float3;

    aget v1, p1, v1

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x7

    aget v5, p1, v5

    invoke-direct {v2, v1, v4, v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 122
    new-instance v1, Lcom/google/android/filament/utils/Float3;

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x5

    aget v5, p1, v5

    const/16 v6, 0x8

    aget p1, p1, v6

    invoke-direct {v1, v4, v5, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 119
    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object v0

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
