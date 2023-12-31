.class public Landroidx/preference/MiuiXColorPickerPreference;
.super Landroidx/preference/Preference;

# interfaces
.implements Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/MiuiXColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field public CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

.field private mAlphaSliderEnabled:Z

.field protected mDefaultColor:I

.field protected mDefaultLongClickForColor:I

.field private mDensity:F

.field mDialog:Landroidx/preference/MiuiXColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mMargin:I

.field protected mMyPreference:Landroidx/preference/MyXPreference;

.field protected mPreviousColor:I

.field protected mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/preference/MiuiXCoreSettingsPreference;

    invoke-direct {v0}, Landroidx/preference/MiuiXCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDensity:F

    iput-boolean v1, p0, Landroidx/preference/MiuiXColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v1, p0, Landroidx/preference/MiuiXColorPickerPreference;->mHexValueEnabled:Z

    invoke-direct {p0, p1, p2}, Landroidx/preference/MiuiXColorPickerPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x1

    iget v8, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDensity:F

    const/high16 v9, 0x41f80000    # 31.0f

    mul-float/2addr v8, v9

    float-to-int v3, v8

    iget v2, p0, Landroidx/preference/MiuiXColorPickerPreference;->mValue:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v1, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    if-le v5, v10, :cond_0

    if-le v6, v10, :cond_0

    add-int/lit8 v8, v7, -0x2

    if-ge v5, v8, :cond_0

    add-int/lit8 v8, v4, -0x2

    if-lt v6, v8, :cond_2

    :cond_0
    const v1, -0x777778

    :goto_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    if-eq v5, v6, :cond_1

    invoke-virtual {v0, v6, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private initialization(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDensity:F

    if-eqz p2, :cond_2

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/preference/MiuiXCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    const-string v0, "alphaSlider"

    invoke-interface {p2, v3, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mAlphaSliderEnabled:Z

    const-string v0, "hexValue"

    invoke-interface {p2, v3, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mHexValueEnabled:Z

    const-string v0, "margin"

    invoke-interface {p2, v2, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMargin:I

    new-instance v0, Landroidx/preference/MyXPreference;

    invoke-direct {v0, p1, p2}, Landroidx/preference/MyXPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const-string v0, "defaultLongClickForColor"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDefaultLongClickForColor:I

    :cond_2
    return-void
.end method

.method private setMargin(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "summary"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMargin:I

    const v3, 0x2f

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1
    return-void
.end method

.method private setPreviewColor()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Landroidx/preference/MiuiXColorPickerPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Landroidx/preference/MiuiXColorPickerPreference;->mView:Landroid/view/View;

    const v4, 0x1020018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDensity:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance v3, Landroidx/preference/MiuiXColorAlphaPatternDrawable;

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Landroidx/preference/MiuiXColorAlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-object v0, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/preference/MiuiXColorPickerPreference;->setPreviewColor()V

    invoke-direct {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->setMargin(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Landroidx/preference/MiuiXColorPickerPreference;->checkDependency()V

    return-void
.end method

.method protected onClick()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/MiuiXColorPickerPreference;->persistInt(I)Z

    :cond_0
    iget v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mValue:I

    if-eq v0, p1, :cond_1

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mPreviousColor:I

    :cond_1
    iput p1, p0, Landroidx/preference/MiuiXColorPickerPreference;->mValue:I

    invoke-direct {p0}, Landroidx/preference/MiuiXColorPickerPreference;->setPreviewColor()V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroidx/preference/MiuiXColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDefaultColor:I

    return-object v2

    :cond_0
    const/high16 v2, -0x1000000

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-boolean v2, v3, Landroidx/preference/MyXPreference;->mDisableLongClick:Z

    if-nez v2, :cond_4

    iget v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDefaultLongClickForColor:I

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/MyXPreference;->handleMyClipboard(Landroidx/preference/MiuiXColorPickerPreference;)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_3

    if-eq v0, v3, :cond_3

    iget v2, p0, Landroidx/preference/MiuiXColorPickerPreference;->mValue:I

    iget v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mPreviousColor:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDefaultColor:I

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->setNewColor(I)V

    const-string/jumbo v3, "Color RestoreD to default!"

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->setNewColor(I)V

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mPreviousColor:I

    const-string/jumbo v3, "Color restored to previous!"

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/preference/MiuiXColorPickerPreference;->onSetInitialValueMin(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/preference/MiuiXColorPickerPreference;->onSetInitialValueMax(ZLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSetInitialValueMax(ZLjava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerPreference;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/MiuiXCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->onColorChanged(I)V

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mPreviousColor:I

    invoke-static {v0}, Landroidx/preference/MiuiXColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget v2, Ljava/lang/Integer;->MAX_VALUE:I

    goto :goto_0
.end method

.method public onSetInitialValueMin(ZLjava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerPreference;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    if-nez p1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->onColorChanged(I)V

    invoke-virtual {v1, v0}, Landroidx/preference/MiuiXCoreSettingsPreference;->setIntegerValue(I)V

    :goto_0
    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mPreviousColor:I

    invoke-static {v0}, Landroidx/preference/MiuiXColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/preference/MiuiXColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/MiuiXCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->onColorChanged(I)V

    goto :goto_0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/MiuiXColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/MiuiXColorPickerPreference;->mHexValueEnabled:Z

    return-void
.end method

.method public setNewColor(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/preference/MiuiXColorPickerPreference;->onColorChanged(I)V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/MiuiXCoreSettingsPreference;->setIntegerValue(I)V

    invoke-virtual {v0}, Landroidx/preference/MiuiXCoreSettingsPreference;->sendIntent()V

    invoke-static {p1}, Landroidx/preference/MiuiXColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/MiuiXColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setNewColorByDialog(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/preference/MiuiXColorPickerPreference;->setNewColor(I)V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Landroidx/preference/MyXPreference;->updateMyClipboardValue(Landroidx/preference/MiuiXColorPickerPreference;ZZLjava/lang/String;)V

    return-void
.end method

.method protected setNewColorKeepPrevious(I)V
    .locals 1

    iget v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mPreviousColor:I

    invoke-virtual {p0, p1}, Landroidx/preference/MiuiXColorPickerPreference;->setNewColor(I)V

    iput v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mPreviousColor:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iput-object p1, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroidx/preference/MiuiXColorPickerDialog;

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/preference/MiuiXColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Landroidx/preference/MiuiXColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-virtual {v0, p0}, Landroidx/preference/MiuiXColorPickerDialog;->setOnColorChangedListener(Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;)V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-virtual {v0, p0}, Landroidx/preference/MiuiXColorPickerDialog;->setMiuiColoPickerPreference(Landroidx/preference/MiuiXColorPickerPreference;)V

    iget-boolean v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-virtual {v0, v3}, Landroidx/preference/MiuiXColorPickerDialog;->setAlphaSliderVisible(Z)V

    :cond_0
    iget-boolean v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-virtual {v0, v3}, Landroidx/preference/MiuiXColorPickerDialog;->setHexValueEnabled(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-virtual {v0, p1}, Landroidx/preference/MiuiXColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerPreference;->mDialog:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroidx/preference/MiuiXColorPickerDialog;->show()V

    return-void
.end method
