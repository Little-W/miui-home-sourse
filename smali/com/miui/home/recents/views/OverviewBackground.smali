.class public Lcom/miui/home/recents/views/OverviewBackground;
.super Landroid/view/View;
.source "OverviewBackground.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/OverviewBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/OverviewBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/OverviewBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/recents/views/OverviewBackground;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/OverviewBackground;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/recents/views/OverviewBackground;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/OverviewBackground;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
