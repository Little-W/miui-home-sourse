.class public Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;
.super Ljava/lang/Object;
.source "ShortcutMenuPositionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragViewRelativeToMenuPosition"
.end annotation


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAtPosition(I)Z
    .locals 1

    .line 56
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->mPosition:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPosition(I)V
    .locals 1

    .line 48
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->mPosition:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->mPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->isAtPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "left"

    goto :goto_0

    :cond_0
    const-string v1, "right"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 63
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo$DragViewRelativeToMenuPosition;->isAtPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "top"

    goto :goto_1

    :cond_1
    const-string v1, "bottom"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
