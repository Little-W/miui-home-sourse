.class public Lcom/google/android/filament/VertexBuffer$Builder;
.super Ljava/lang/Object;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {}, Lcom/google/android/filament/VertexBuffer;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    .line 157
    new-instance v0, Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mFinalizer:Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;)Lcom/google/android/filament/VertexBuffer$Builder;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 255
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;
    .locals 7

    .line 222
    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->ordinal()I

    move-result v2

    .line 223
    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer$AttributeType;->ordinal()I

    move-result v4

    move v3, p2

    move v5, p4

    move v6, p5

    .line 222
    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/VertexBuffer;->access$300(JIIIII)V

    return-object p0
.end method

.method public bufferCount(I)Lcom/google/android/filament/VertexBuffer$Builder;
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/VertexBuffer;->access$200(JI)V

    return-object p0
.end method

.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;
    .locals 4

    .line 305
    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/VertexBuffer;->access$500(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 307
    new-instance p1, Lcom/google/android/filament/VertexBuffer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/filament/VertexBuffer;-><init>(JLcom/google/android/filament/VertexBuffer$1;)V

    return-object p1

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create VertexBuffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public normalized(Lcom/google/android/filament/VertexBuffer$VertexAttribute;)Lcom/google/android/filament/VertexBuffer$Builder;
    .locals 3

    .line 271
    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/VertexBuffer;->access$400(JIZ)V

    return-object p0
.end method

.method public normalized(Lcom/google/android/filament/VertexBuffer$VertexAttribute;Z)Lcom/google/android/filament/VertexBuffer$Builder;
    .locals 2

    .line 289
    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->access$400(JIZ)V

    return-object p0
.end method

.method public vertexCount(I)Lcom/google/android/filament/VertexBuffer$Builder;
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/VertexBuffer;->access$100(JI)V

    return-object p0
.end method
