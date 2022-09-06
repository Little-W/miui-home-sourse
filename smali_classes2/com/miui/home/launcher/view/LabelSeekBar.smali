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

.field private mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/LabelSeekBar;->setOrientation(I)V

    .line 30
    sget-object v0, Lcom/miui/home/R$styleable;->LabelSeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0d009f

    .line 34
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a02fa

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    const v0, 0x7f0a02fb

    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 39
    new-instance v1, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    iget-object v2, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/miui/home/launcher/common/OnItemClickListener;Lcom/miui/home/launcher/view/LabelSeekBar$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabelAdapter:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    .line 40
    iget-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabelAdapter:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private getLabelIndex(I)I
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    mul-int v3, v0, v2

    .line 94
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

    .line 102
    invoke-direct {p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->getSectionValue()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private getSectionValue()I
    .locals 2

    .line 88
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

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/view/LabelSeekBar;->getLabelProgress(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/view/LabelSeekBar;->onItemClick(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LabelSeekBar;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mLabels:[Ljava/lang/CharSequence;

    array-length p2, p2

    div-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x4

    .line 48
    iget-object p2, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2}, Lmiuix/androidbasewidget/widget/SeekBar;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p1, v0, p1, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->setPadding(IIII)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 53
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

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    return-void
.end method
