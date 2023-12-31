.class public Lcom/miui/home/launcher/widget/WidgetDetailsView;
.super Landroid/widget/LinearLayout;
.source "WidgetDetailsView.java"


# instance fields
.field public mButton:Landroid/widget/Button;

.field public mDescription:Landroid/widget/TextView;

.field public mDetailsView:Landroid/widget/FrameLayout;

.field public mItemTitle:Landroid/widget/TextView;

.field public mSamePreview:Landroid/widget/ImageView;

.field public mTitleLayout:Landroid/widget/LinearLayout;

.field public mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initTitle()V
    .locals 2

    .line 65
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a01dc

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mItemTitle:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01db

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01d3

    .line 48
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a01d2

    .line 49
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01d9

    .line 50
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0083

    .line 51
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mButton:Landroid/widget/Button;

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->initTitle()V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/home/launcher/widget/WidgetDetailsView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/WidgetDetailsView$1;-><init>(Lcom/miui/home/launcher/widget/WidgetDetailsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDetailsView(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 81
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    return-void
.end method
