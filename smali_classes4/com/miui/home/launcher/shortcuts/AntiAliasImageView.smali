.class public Lcom/miui/home/launcher/shortcuts/AntiAliasImageView;
.super Landroid/widget/ImageView;
.source "AntiAliasImageView.java"


# instance fields
.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AntiAliasImageView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AntiAliasImageView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 23
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
