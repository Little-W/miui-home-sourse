.class public Lcom/miui/home/launcher/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragLayer;
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

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->customPosition:Z

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    return-void
.end method
