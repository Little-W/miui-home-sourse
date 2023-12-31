.class public final Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;
.super Ljava/lang/Object;
.source "BigIconPositionInfo.kt"


# instance fields
.field private final cellX:I

.field private final cellY:I

.field private final iconType:I

.field private final itemType:I

.field private final screenId:J

.field private final spanX:I

.field private final spanY:I


# direct methods
.method public constructor <init>(IIIIJII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellX:I

    iput p2, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellY:I

    iput p3, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanX:I

    iput p4, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanY:I

    iput-wide p5, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->screenId:J

    iput p7, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->itemType:I

    iput p8, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->iconType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;

    iget v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellX:I

    iget v1, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellY:I

    iget v1, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanX:I

    iget v1, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanY:I

    iget v1, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanY:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->screenId:J

    iget-wide v2, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->screenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->itemType:I

    iget v1, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->itemType:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->iconType:I

    iget p1, p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->iconType:I

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

.method public final getCellX()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellX:I

    return p0
.end method

.method public final getCellY()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellY:I

    return p0
.end method

.method public final getIconType()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->iconType:I

    return p0
.end method

.method public final getScreenId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->screenId:J

    return-wide v0
.end method

.method public final getSpanX()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanX:I

    return p0
.end method

.method public final getSpanY()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanY:I

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellX:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellY:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanX:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanY:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->screenId:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->itemType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->iconType:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BigIconPositionInfo(cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->iconType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
