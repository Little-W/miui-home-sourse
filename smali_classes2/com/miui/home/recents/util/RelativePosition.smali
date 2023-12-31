.class public Lcom/miui/home/recents/util/RelativePosition;
.super Ljava/lang/Object;
.source "RelativePosition.java"


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPosition(I)V
    .locals 1

    .line 18
    iget v0, p0, Lcom/miui/home/recents/util/RelativePosition;->mPosition:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/util/RelativePosition;->mPosition:I

    return-void
.end method

.method public isContainPosition(I)Z
    .locals 0

    .line 26
    iget p0, p0, Lcom/miui/home/recents/util/RelativePosition;->mPosition:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPosition(I)Z
    .locals 0

    .line 30
    iget p0, p0, Lcom/miui/home/recents/util/RelativePosition;->mPosition:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/miui/home/recents/util/RelativePosition;->mPosition:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 14
    iget v0, p0, Lcom/miui/home/recents/util/RelativePosition;->mPosition:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/util/RelativePosition;->mPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    const-string v1, "null"

    if-eqz v0, :cond_0

    const-string v0, "left"

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "right"

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/16 v2, 0xa

    .line 43
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "center_vertical"

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    .line 45
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "top"

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    .line 47
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v1, "bottom"

    .line 51
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
