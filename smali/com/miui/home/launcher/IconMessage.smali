.class public Lcom/miui/home/launcher/IconMessage;
.super Landroid/widget/TextView;
.source "IconMessage.java"


# instance fields
.field private mDrawOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    if-nez v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    return-void
.end method
