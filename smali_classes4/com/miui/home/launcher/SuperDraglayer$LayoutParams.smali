.class public Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;
.super Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;
.source "SuperDraglayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SuperDraglayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->customPosition:Z

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->width:I

    return p0
.end method

.method public getX()I
    .locals 0

    .line 188
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->x:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 196
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->y:I

    return p0
.end method

.method public setHeight(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->y:I

    return-void
.end method
