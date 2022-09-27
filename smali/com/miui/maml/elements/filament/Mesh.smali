.class public final Lcom/miui/maml/elements/filament/Mesh;
.super Ljava/lang/Object;
.source "MeshLoader.kt"


# instance fields
.field private final aabb:Lcom/google/android/filament/Box;

.field private final indexBuffer:Lcom/google/android/filament/IndexBuffer;

.field private final renderable:I

.field private final vertexBuffer:Lcom/google/android/filament/VertexBuffer;


# direct methods
.method public constructor <init>(ILcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/Box;)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    const-string v0, "indexBuffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertexBuffer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aabb"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    iput-object p2, p0, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    iput-object p3, p0, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    iput-object p4, p0, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/elements/filament/Mesh;ILcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/Box;ILjava/lang/Object;)Lcom/miui/maml/elements/filament/Mesh;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/Mesh;->copy(ILcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/Box;)Lcom/miui/maml/elements/filament/Mesh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    return v0
.end method

.method public final component2()Lcom/google/android/filament/IndexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    return-object v0
.end method

.method public final component3()Lcom/google/android/filament/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    return-object v0
.end method

.method public final component4()Lcom/google/android/filament/Box;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

    return-object v0
.end method

.method public final copy(ILcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/Box;)Lcom/miui/maml/elements/filament/Mesh;
    .locals 1
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    const-string v0, "indexBuffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertexBuffer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aabb"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/maml/elements/filament/Mesh;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/Mesh;-><init>(ILcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/Box;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/maml/elements/filament/Mesh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/maml/elements/filament/Mesh;

    iget v0, p0, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    iget v1, p1, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    iget-object v1, p1, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    iget-object v1, p1, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

    iget-object p1, p1, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

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

.method public final getAabb()Lcom/google/android/filament/Box;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

    return-object v0
.end method

.method public final getIndexBuffer()Lcom/google/android/filament/IndexBuffer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    return-object v0
.end method

.method public final getRenderable()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    return v0
.end method

.method public final getVertexBuffer()Lcom/google/android/filament/VertexBuffer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mesh(renderable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/elements/filament/Mesh;->renderable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", indexBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/Mesh;->indexBuffer:Lcom/google/android/filament/IndexBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vertexBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/Mesh;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aabb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/Mesh;->aabb:Lcom/google/android/filament/Box;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
