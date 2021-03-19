.class public Lcom/miui/home/launcher/widget/WidgetCell;
.super Landroid/widget/RelativeLayout;
.source "WidgetCell.java"


# instance fields
.field public mBadge:Landroid/widget/ImageView;

.field private mIsPreview:Z

.field public mItemPreview:Landroid/widget/ImageView;

.field public mItemTitle:Landroid/widget/TextView;

.field public mSpan:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0105

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0103

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0104

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const v0, 0x7f0a0101

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    return-void
.end method

.method public setIsPreview(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mIsPreview:Z

    return-void
.end method
