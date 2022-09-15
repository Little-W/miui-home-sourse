.class public final Lcom/miui/home/launcher/Workspace$CellInfo;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field screenId:J

.field screenOrder:I

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method nextScreen(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2032
    iget p1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2033
    iput p1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_0

    .line 2035
    :cond_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_0

    .line 2038
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfo{screenOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
