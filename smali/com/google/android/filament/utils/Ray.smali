.class public final Lcom/google/android/filament/utils/Ray;
.super Ljava/lang/Object;
.source "Ray.kt"


# instance fields
.field private direction:Lcom/google/android/filament/utils/Float3;

.field private origin:Lcom/google/android/filament/utils/Float3;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    iput-object p2, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Ray;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Ray;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILjava/lang/Object;)Lcom/google/android/filament/utils/Ray;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/Ray;->copy(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Ray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final component2()Lcom/google/android/filament/utils/Float3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final copy(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Ray;
    .locals 0

    const-string p0, "origin"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "direction"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/filament/utils/Ray;

    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Ray;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Ray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Ray;

    iget-object v0, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    iget-object v1, p1, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    iget-object p1, p1, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

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

.method public final getDirection()Lcom/google/android/filament/utils/Float3;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public final getOrigin()Lcom/google/android/filament/utils/Float3;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setDirection(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public final setOrigin(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ray(origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/filament/utils/Ray;->origin:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/filament/utils/Ray;->direction:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
