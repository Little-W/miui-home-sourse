.class public Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.super Ljava/lang/Object;
.source "ExpandTitle.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpandSubtitleView:Landroid/widget/TextView;

.field private mExpandTitleLayout:Landroid/widget/LinearLayout;

.field private mExpandTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 51
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 0

    .line 88
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public init()V
    .locals 4

    .line 29
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/actionbar/-$$Lambda$ExpandTitle$NLszNe257985l_FAmks4ECrUi5c;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/-$$Lambda$ExpandTitle$NLszNe257985l_FAmks4ECrUi5c;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 36
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->expandTitleTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Landroid/widget/TextView;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_title_expand:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->expandSubtitleTheme:I

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Landroid/widget/TextView;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_subtitle_expand:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public synthetic lambda$init$0$ExpandTitle()V
    .locals 2

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    const v1, 0x101039c

    .line 34
    invoke-static {p0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 72
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 0

    .line 80
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
