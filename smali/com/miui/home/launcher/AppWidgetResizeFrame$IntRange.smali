.class Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/AppWidgetResizeFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntRange"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/AppWidgetResizeFrame$1;)V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDelta(ZZILcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 532
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    :goto_0
    iput p1, p4, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    if-eqz p2, :cond_1

    .line 533
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    add-int/2addr p1, p3

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    :goto_1
    iput p1, p4, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    return-void
.end method

.method public applyDeltaAndBound(ZZIIIILcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;)I
    .locals 0

    .line 551
    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;)V

    .line 552
    iget p3, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 553
    iput p3, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    .line 555
    :cond_0
    iget p3, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    if-le p3, p6, :cond_1

    .line 556
    iput p6, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    .line 558
    :cond_1
    invoke-virtual {p7}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result p3

    if-ge p3, p4, :cond_3

    if-eqz p1, :cond_2

    .line 560
    iget p3, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr p3, p4

    iput p3, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 562
    iget p3, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr p3, p4

    iput p3, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    .line 565
    :cond_3
    :goto_0
    invoke-virtual {p7}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result p3

    if-le p3, p5, :cond_5

    if-eqz p1, :cond_4

    .line 567
    iget p1, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr p1, p5

    iput p1, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 569
    iget p1, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr p1, p5

    iput p1, p7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 572
    invoke-virtual {p7}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result p2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    invoke-virtual {p7}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result p2

    :goto_2
    sub-int/2addr p1, p2

    return p1
.end method

.method public set(II)V
    .locals 0

    .line 519
    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    .line 520
    iput p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    return-void
.end method

.method public size()I
    .locals 2

    .line 524
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->end:I

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr v0, v1

    return v0
.end method
