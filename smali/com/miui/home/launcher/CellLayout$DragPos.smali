.class Lcom/miui/home/launcher/CellLayout$DragPos;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragPos"
.end annotation


# instance fields
.field cellXY:[I

.field stayType:I

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 1241
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 1238
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/16 p1, 0x8

    .line 1239
    iput p1, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 1242
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    return-void
.end method


# virtual methods
.method equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z
    .locals 6

    .line 1261
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v4, v3, v1

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    aget v0, v0, v5

    aget v2, v3, v5

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    iget p1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v0, p1, :cond_0

    move v1, v5

    :cond_0
    return v1
.end method

.method public isInvalid()Z
    .locals 2

    .line 1251
    iget v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    const/16 v0, 0x8

    .line 1247
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    return-void
.end method

.method set(Lcom/miui/home/launcher/CellLayout$DragPos;)V
    .locals 4

    .line 1255
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    iget-object v1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 1256
    aget v1, v1, v2

    aput v1, v0, v2

    .line 1257
    iget p1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    iput p1, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    return-void
.end method
