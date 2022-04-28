.class public final Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;
.super Ljava/lang/Object;
.source "MeshLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/filament/MeshLoaderKt;->loadDefaultMesh(Lcom/google/android/filament/MaterialInstance;Lcom/google/android/filament/Engine;)Lcom/miui/maml/elements/filament/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vertex"
.end annotation


# instance fields
.field private final u:F

.field private final v:F

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    iput p2, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    iput p3, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    iput p4, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;FFFFILjava/lang/Object;)Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->copy(FFFF)Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    return v0
.end method

.method public final copy(FFFF)Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;
    .locals 1

    new-instance v0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;-><init>(FFFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    iget v1, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    iget v1, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    iget v1, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    iget p1, p1, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getU()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    return v0
.end method

.method public final getV()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vertex(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->v:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
