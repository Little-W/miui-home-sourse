.class public Lcom/miui/home/launcher/view/LabelSeekBar;
.super Landroid/widget/LinearLayout;
.source "LabelSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/miui/home/launcher/common/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Lcom/miui/home/launcher/common/OnItemClickListener<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mLabelAdapter:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

.field private mLabels:[Ljava/lang/CharSequence;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/LabelSeekBar;->setOrientation(I)V

    .line 28
    sget-object v0, Lcom/miui/home/R$styleable;->LabelSeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0d005f

    .line 32
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0184

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0185

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/mysupport/v7/widget/RecyclerView;

    .line 35
    new-instance v0, Landroid/mysupport/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Landroid/mysupport/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/RecyclerView;->setLayoutManager(Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/RecyclerView;->setItemAnimator(Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator;)V

    .line 37
    new-instance v1, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    iget-object v2, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/miui/home/launcher/common/OnItemClickListener;Lcom/miui/home/launcher/view/LabelSeekBar$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabelAdapter:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabelAdapter:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    invoke-virtual {p2, p1}, Landroid/mysupport/v7/widget/RecyclerView;->setAdapter(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private getLabelIndex(I)I
    .locals 5

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    mul-int v3, v0, v2

    .line 92
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getLabelProgress(I)I
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->getSectionValue()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private getSectionValue()I
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/view/LabelSeekBar;->getLabelProgress(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 19
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/view/LabelSeekBar;->onItemClick(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length p2, p2

    div-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x4

    .line 46
    iget-object p2, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p1, v0, p1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabelAdapter:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/view/LabelSeekBar;->getLabelIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->setSelectedIndex(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
