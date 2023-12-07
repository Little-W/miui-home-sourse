.class public Landroidx/preference/MyXSeekBarPreference;
.super Landroidx/preference/Preference;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private disableColor:I

.field private mCorrectCreate:I

.field protected mDefaultValue:I

.field private mMax:I

.field private mMin:I

.field protected mMyXPreference:Landroidx/preference/MyXPreference;

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStep:I

.field private mSummary:Landroid/widget/TextView;

.field private primaryColor:I

.field private style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/preference/MyXPreference;

    invoke-direct {v0, p1, p2}, Landroidx/preference/MyXPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/preference/MyXSeekBarPreference;->mCorrectCreate:I

    const-string v0, "style"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroidx/preference/MyXSeekBarPreference;->style:I

    const-string v0, "min"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroidx/preference/MyXSeekBarPreference;->mMin:I

    const-string v0, "step"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Landroidx/preference/MyXSeekBarPreference;->mStep:I

    const-string v0, "max"

    const v2, 0x64

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->mStep:I

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    move v0, v3

    :cond_1
    iput v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMax:I

    invoke-direct {p0, p1, p2}, Landroidx/preference/MyXSeekBarPreference;->getColors(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkDependency()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/MyXCheckBoxPreference;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroidx/preference/MyXListPreference;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/preference/MyXListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/MyXListPreference;->registerDependent(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/preference/MyXDropDownPreference;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/preference/MyXDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/MyXDropDownPreference;->registerDependent(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private findAndroidViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p2}, Landroidx/preference/MyXSeekBarPreference;->getAndroidID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidID(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getColors(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v1, "seekBarStyle"

    const-string v2, "attr"

    const-string v3, "android"

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :try_start_0
    sget v0, Lcom/miui/internal/R$color;->progressPrimaryColor:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget v1, Lcom/miui/internal/R$color;->progressDisableColor:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lmiui/R$attr;->seekBarProgressForegroundNormalColor:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lmiui/R$attr;->seekBarProgressForegroundDisableColor:I

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lmiui/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->ProgressBar_foregroundPrimaryColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/MyXSeekBarPreference;->primaryColor:I

    sget p2, Lcom/miui/internal/R$styleable;->ProgressBar_foregroundPrimaryDisableColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/MyXSeekBarPreference;->disableColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setColors(ILandroid/widget/SeekBar;)V
    .locals 8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    instance-of v4, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const-string v5, "background"

    const-string v6, "id"

    const-string v4, "android"

    invoke-virtual {v7, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    sget v5, Lcom/miui/internal/R$id;->seekbar_background_semicircle:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const-string v5, "progress"

    const-string v6, "id"

    const-string v4, "android"

    invoke-virtual {v7, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    instance-of v4, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const-string v5, "background"

    const-string v6, "id"

    const-string v4, "android"

    invoke-virtual {v7, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_6
    return-void
.end method

.method private setSummaryInternal(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v1, "%s"

    invoke-super {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "%s"

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setUpStyle(Landroid/view/View;)V
    .locals 9

    const-string v1, "summary"

    invoke-direct {p0, p1, v1}, Landroidx/preference/MyXSeekBarPreference;->findAndroidViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroidx/preference/MyXSeekBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v5, "title"

    invoke-direct {p0, p1, v5}, Landroidx/preference/MyXSeekBarPreference;->findAndroidViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    iget-object v4, p0, Landroidx/preference/MyXSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Landroidx/preference/MyXSeekBarPreference;->style:I

    if-nez v2, :cond_1

    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/RelativeLayout;

    :goto_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x13

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x1

    int-to-float v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x15

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v7, 0x13

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x5

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x3

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, v3

    goto/16 :goto_0

    :cond_1
    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/widget/RelativeLayout;

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x5

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x3

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x5

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x3

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, v3

    goto :goto_1
.end method

.method private translateProgressToSeekBar(I)I
    .locals 2

    iget v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMin:I

    move v1, p1

    sub-int/2addr v1, v0

    iget v0, p0, Landroidx/preference/MyXSeekBarPreference;->mStep:I

    div-int/2addr v1, v0

    return v1
.end method

.method private translateProgressToUser(I)I
    .locals 2

    iget v0, p0, Landroidx/preference/MyXSeekBarPreference;->mStep:I

    mul-int/2addr v0, p1

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private updateProperties(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/MyXSeekBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x0

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const-string v1, "icon"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Landroidx/preference/MyXSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->primaryColor:I

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    iget v3, p0, Landroidx/preference/MyXSeekBarPreference;->mMax:I

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->mMin:I

    sub-int/2addr v3, v1

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->mStep:I

    div-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, v1}, Landroidx/preference/MyXSeekBarPreference;->translateProgressToUser(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/preference/MyXSeekBarPreference;->setSummaryInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x5

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v3, 0x14

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v3, 0xa

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    const v0, 0x10

    invoke-virtual {v2, v1, v3, v1, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget-object v1, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {v1}, Landroidx/preference/MyXPreference;->getMargin()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v2, v1, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    iget-object v0, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v1, "seekbar"

    invoke-direct {p0, v1}, Landroidx/preference/MyXSeekBarPreference;->getAndroidID(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Landroidx/preference/MyXSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const-string v1, "summary"

    invoke-direct {p0, v0, v1}, Landroidx/preference/MyXSeekBarPreference;->findAndroidViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroidx/preference/MyXSeekBarPreference;->mSummary:Landroid/widget/TextView;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroidx/preference/MyXSeekBarPreference;->mCorrectCreate:I

    if-eqz v3, :cond_1

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v3, Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {v3, v2}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_2
    :try_start_1
    new-instance v3, Lmiui/widget/SeekBar;

    invoke-direct {v3, v2}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    iput v2, p0, Landroidx/preference/MyXSeekBarPreference;->mCorrectCreate:I

    goto :goto_1

    :catchall_1
    :goto_0
    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    iput v2, p0, Landroidx/preference/MyXSeekBarPreference;->mCorrectCreate:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setId(I)V

    iput-object v3, p0, Landroidx/preference/MyXSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Landroidx/preference/MyXSeekBarPreference;->setUpStyle(Landroid/view/View;)V

    :goto_2
    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Landroidx/preference/MyXSeekBarPreference;->checkDependency()V

    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroidx/preference/MyXSeekBarPreference;->updateProperties(Landroid/view/View;)V

    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/preference/MyXSeekBarPreference;->mDefaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    iget-boolean v0, v0, Landroidx/preference/MyXPreference;->mDisableLongClick:Z

    if-nez v0, :cond_1

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, v1}, Landroidx/preference/MyXSeekBarPreference;->setValue(I)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Landroidx/preference/MyXSeekBarPreference;->translateProgressToUser(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/MyXSeekBarPreference;->setSummaryInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {v0, v1, v2, p2}, Landroidx/preference/MyXPreference;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/preference/MyXSeekBarPreference;->translateProgressToSeekBar(I)I

    move-result p2

    iput p2, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/MyXSeekBarPreference;->setSummaryInternal(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget p2, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    const-string v3, "<>"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/MyXPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v3, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    invoke-direct {p0, v3}, Landroidx/preference/MyXSeekBarPreference;->translateProgressToUser(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    :cond_0
    iget v3, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    invoke-direct {p0, v3}, Landroidx/preference/MyXSeekBarPreference;->translateProgressToUser(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/MyXPreference;->setInteger(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/MyXPreference;->sendIntent(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->primaryColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/preference/MyXSeekBarPreference;->disableColor:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    iput-object p1, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/preference/MyXSeekBarPreference;->setValue(IZ)V

    return-void
.end method

.method public setValue(IZ)V
    .locals 3

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/preference/MyXSeekBarPreference;->translateProgressToSeekBar(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/preference/MyXSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget v2, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Landroidx/preference/MyXSeekBarPreference;->mProgress:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    iget-object v0, p0, Landroidx/preference/MyXSeekBarPreference;->mMyXPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroidx/preference/MyXPreference;->setInteger(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/MyXPreference;->sendIntent(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/MyXSeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
