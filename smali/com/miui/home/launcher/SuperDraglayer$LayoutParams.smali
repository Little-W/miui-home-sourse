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

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->customPosition:Z

    return-void
.end method
