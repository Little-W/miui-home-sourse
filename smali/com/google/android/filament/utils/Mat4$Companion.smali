.class public final Lcom/google/android/filament/utils/Mat4$Companion;
.super Ljava/lang/Object;
.source "Matrix.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Mat4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat4$Companion\n*L\n1#1,521:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/google/android/filament/utils/Mat4$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final identity()Lcom/google/android/filament/utils/Mat4;
    .locals 8

    .line 223
    new-instance v7, Lcom/google/android/filament/utils/Mat4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final varargs of([F)Lcom/google/android/filament/utils/Mat4;
    .locals 9

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    .line 216
    new-instance v3, Lcom/google/android/filament/utils/Float4;

    aget v2, p1, v2

    const/4 v4, 0x4

    aget v4, p1, v4

    const/16 v5, 0x8

    aget v5, p1, v5

    const/16 v6, 0xc

    aget v6, p1, v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    .line 217
    new-instance v2, Lcom/google/android/filament/utils/Float4;

    aget v1, p1, v1

    const/4 v4, 0x5

    aget v4, p1, v4

    const/16 v5, 0x9

    aget v5, p1, v5

    const/16 v6, 0xd

    aget v6, p1, v6

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    .line 218
    new-instance v1, Lcom/google/android/filament/utils/Float4;

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x6

    aget v5, p1, v5

    const/16 v6, 0xa

    aget v6, p1, v6

    const/16 v7, 0xe

    aget v7, p1, v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    .line 219
    new-instance v4, Lcom/google/android/filament/utils/Float4;

    const/4 v5, 0x3

    aget v5, p1, v5

    const/4 v6, 0x7

    aget v6, p1, v6

    const/16 v7, 0xb

    aget v7, p1, v7

    const/16 v8, 0xf

    aget p1, p1, v8

    invoke-direct {v4, v5, v6, v7, p1}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    .line 215
    invoke-direct {v0, v3, v2, v1, v4}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object v0

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
