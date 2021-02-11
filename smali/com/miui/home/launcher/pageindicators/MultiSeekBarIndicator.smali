.class public Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;
.super Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
.source "MultiSeekBarIndicator.java"


# static fields
.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field protected mAssistantPoint:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createAssistantPoint()Landroid/widget/ImageView;
    .locals 3

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f08022f

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    new-instance v1, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;-><init>(Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x2

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mContext:Landroid/content/Context;

    const v2, 0x7f100183

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public addAssistantPoint()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mAssistantPoint:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->createAssistantPoint()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mAssistantPoint:Landroid/widget/ImageView;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mAssistantPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public getAssistantPoint()Landroid/widget/ImageView;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mAssistantPoint:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getScreenIndicatorPoint(I)Landroid/view/View;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getScreenIndicatorPointIndex(Landroid/view/View;)I
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildIndex(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildIndex(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public isAssistantPointExist()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->mAssistantPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public removeAssistantPoint()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView;->superRemoveViewAt(I)V

    :cond_0
    return-void
.end method

.method public removeScreenIndicatorPoint(I)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->removeScreenIndicatorPoint(I)V

    return-void
.end method

.method public removeScreenIndicatorPoint(II)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->removeScreenIndicatorPoint(II)V

    return-void
.end method
