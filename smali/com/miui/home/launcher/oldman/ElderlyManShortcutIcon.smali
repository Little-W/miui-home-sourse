.class public Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "ElderlyManShortcutIcon.java"


# instance fields
.field private mBlackBg:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getBlackBgRect(Landroid/view/ViewGroup;)Landroid/graphics/Rect;
    .locals 2

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mBlackBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 36
    iget-object p1, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mBlackBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mBlackBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->setRectSize(Landroid/graphics/Rect;II)V

    return-object v0
.end method

.method public isHintClick(Landroid/view/ViewGroup;II)Z
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getBlackBgRect(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onFinishInflate()V

    const v0, 0x7f0a0062

    .line 25
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mBlackBg:Landroid/widget/RelativeLayout;

    return-void
.end method
