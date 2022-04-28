.class final Lcom/miui/maml/elements/filament/Part;
.super Ljava/lang/Object;
.source "MeshLoader.kt"


# instance fields
.field private aabb:Lcom/google/android/filament/Box;

.field private indexCount:J

.field private materialID:J

.field private maxIndex:J

.field private minIndex:J

.field private offset:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/google/android/filament/Box;

    invoke-direct {v0}, Lcom/google/android/filament/Box;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/Part;->aabb:Lcom/google/android/filament/Box;

    return-void
.end method


# virtual methods
.method public final getAabb()Lcom/google/android/filament/Box;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/miui/maml/elements/filament/Part;->aabb:Lcom/google/android/filament/Box;

    return-object v0
.end method

.method public final getIndexCount()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Part;->indexCount:J

    return-wide v0
.end method

.method public final getMaterialID()J
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Part;->materialID:J

    return-wide v0
.end method

.method public final getMaxIndex()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Part;->maxIndex:J

    return-wide v0
.end method

.method public final getMinIndex()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Part;->minIndex:J

    return-wide v0
.end method

.method public final getOffset()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Part;->offset:J

    return-wide v0
.end method

.method public final setAabb(Lcom/google/android/filament/Box;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/miui/maml/elements/filament/Part;->aabb:Lcom/google/android/filament/Box;

    return-void
.end method

.method public final setIndexCount(J)V
    .locals 0

    .line 162
    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Part;->indexCount:J

    return-void
.end method

.method public final setMaterialID(J)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Part;->materialID:J

    return-void
.end method

.method public final setMaxIndex(J)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Part;->maxIndex:J

    return-void
.end method

.method public final setMinIndex(J)V
    .locals 0

    .line 163
    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Part;->minIndex:J

    return-void
.end method

.method public final setOffset(J)V
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Part;->offset:J

    return-void
.end method
