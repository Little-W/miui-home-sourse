.class public Lcom/miui/home/launcher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field accessTag:J

.field dropped:Z

.field public isDragging:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 2581
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2573
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2577
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setup(IIIIIIIIIIII)V
    .locals 10

    move-object v0, p0

    move v1, p5

    move/from16 v2, p7

    mul-int v3, p3, v1

    add-int/lit8 v4, p3, -0x1

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 2586
    iget v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    mul-int v3, p4, p6

    add-int/lit8 v4, p4, -0x1

    mul-int v4, v4, p8

    add-int/2addr v3, v4

    .line 2588
    iget v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    move v3, p1

    move/from16 v4, p9

    .line 2590
    invoke-static {p1, v4, p5, v2}, Lcom/miui/home/launcher/CellLayout;->access$1800(IIII)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    move v4, p2

    move/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p12

    .line 2591
    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/CellLayout;->access$1900(IIIIII)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    return-void
.end method
