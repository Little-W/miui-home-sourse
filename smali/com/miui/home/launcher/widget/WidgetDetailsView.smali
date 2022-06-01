.class public Lcom/miui/home/launcher/widget/WidgetDetailsView;
.super Landroid/widget/LinearLayout;
.source "WidgetDetailsView.java"


# instance fields
.field public mButton:Landroid/widget/Button;

.field public mDescription:Landroid/widget/TextView;

.field public mDetailsView:Landroid/widget/FrameLayout;

.field public mItemTitle:Landroid/widget/TextView;

.field public mSamePreview:Landroid/widget/ImageView;

.field public mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a016c

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0164

    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a0163

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a016a

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0070

    .line 48
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mButton:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/home/launcher/widget/WidgetDetailsView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/WidgetDetailsView$1;-><init>(Lcom/miui/home/launcher/widget/WidgetDetailsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDetailsView(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 66
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mDetailsView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mSamePreview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    return-void
.end method
