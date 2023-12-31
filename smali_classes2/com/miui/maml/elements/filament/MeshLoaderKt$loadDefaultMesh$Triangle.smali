.class public final Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;
.super Ljava/lang/Object;
.source "MeshLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/filament/MeshLoaderKt;->loadDefaultMesh(Lcom/google/android/filament/MaterialInstance;Lcom/google/android/filament/Engine;)Lcom/miui/maml/elements/filament/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Triangle"
.end annotation


# instance fields
.field private final x:S

.field private final y:S

.field private final z:S


# direct methods
.method public constructor <init>(SSS)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    iput-short p2, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    iput-short p3, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;SSSILjava/lang/Object;)Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-short p1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-short p2, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-short p3, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->copy(SSS)Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()S
    .locals 0

    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    return p0
.end method

.method public final component2()S
    .locals 0

    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    return p0
.end method

.method public final component3()S
    .locals 0

    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

    return p0
.end method

.method public final copy(SSS)Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;
    .locals 0

    new-instance p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;-><init>(SSS)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;

    iget-short v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    iget-short v1, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    iget-short v1, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    if-ne v0, v1, :cond_0

    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

    iget-short p1, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

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

.method public final getX()S
    .locals 0

    .line 101
    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    return p0
.end method

.method public final getY()S
    .locals 0

    .line 101
    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    return p0
.end method

.method public final getZ()S
    .locals 0

    .line 101
    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-short v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triangle(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->x:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->y:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;->z:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
