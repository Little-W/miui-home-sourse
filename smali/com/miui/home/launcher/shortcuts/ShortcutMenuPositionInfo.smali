.class public Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
.super Ljava/lang/Object;
.source "ShortcutMenuPositionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;
    }
.end annotation


# instance fields
.field private mDragViewRelativeToMenuPosition:Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;

.field private mTransX:I

.field private mTransY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mDragViewRelativeToMenuPosition:Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;

    return-void
.end method


# virtual methods
.method public getTransX()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mTransX:I

    return v0
.end method

.method public getTransY()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mTransY:I

    return v0
.end method

.method public isAtPosition(I)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mDragViewRelativeToMenuPosition:Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->isAtPosition(I)Z

    move-result p1

    return p1
.end method

.method public setRelativePosition(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mDragViewRelativeToMenuPosition:Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->setPosition(I)V

    return-void
.end method

.method public setTransX(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mTransX:I

    return-void
.end method

.method public setTransY(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mTransY:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mTransX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mTransY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")-("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->mDragViewRelativeToMenuPosition:Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
