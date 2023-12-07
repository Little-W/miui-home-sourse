.class public Lcom/miui/home/launcher/upgradelayout/EmptyPosition;
.super Ljava/lang/Object;
.source "EmptyPosition.java"


# instance fields
.field public mCellX:I

.field public mCellY:I

.field public mScreen:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;->mCellX:I

    .line 11
    iput p2, p0, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;->mCellY:I

    .line 12
    iput-wide p3, p0, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;->mScreen:J

    return-void
.end method
