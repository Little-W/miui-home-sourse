.class public Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;
.super Landroid/widget/TextView;
.source "QuickCallTitleTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->setTextSize(IF)V

    const v0, 0x7f110395

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x51

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->setGravity(I)V

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06056f

    goto :goto_0

    :cond_0
    const v0, 0x7f060570

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->setTextColor(I)V

    .line 22
    new-instance p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->getLineHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->topMargin:I

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    new-instance p1, Lcom/miui/home/launcher/oldman/QuickCallTitleInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/oldman/QuickCallTitleInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
