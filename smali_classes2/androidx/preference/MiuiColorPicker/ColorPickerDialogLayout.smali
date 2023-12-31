.class public Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field public colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

.field public isNight:Z

.field public mHexVal:Landroid/widget/EditText;

.field public mNewColor:Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

.field public mOldColor:Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

.field public presetLayout:Landroid/widget/LinearLayout;

.field public textHexWrapper:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getHexWrapperBack()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p0, v2}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-boolean v2, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->isNight:Z

    if-eqz v2, :cond_0

    const-string v0, "#60ffffff"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :cond_0
    const-string v0, "#60000000"

    goto :goto_0
.end method

.method private getPresetParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    const/4 v4, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x40400000    # 3.0f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v1

    invoke-virtual {p0, v2}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v1

    invoke-virtual {p0, v3}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 13

    const/high16 v12, 0x40c00000    # 6.0f

    const/4 v5, 0x1

    const/high16 v11, 0x40a00000    # 5.0f

    const/4 v10, -0x1

    const/4 v9, -0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v6, 0x20

    if-ne v4, v6, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->isNight:Z

    invoke-virtual {p0, v5}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->setOrientation(I)V

    invoke-virtual {p0, v11}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v4

    invoke-virtual {p0, v11}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v6

    invoke-virtual {p0, v11}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v6, v7, v8}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->setPadding(IIII)V

    new-instance v4, Landroidx/preference/MiuiColorPicker/ColorPickerView;

    invoke-direct {v4, p1}, Landroidx/preference/MiuiColorPicker/ColorPickerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    const-string v6, "portrait"

    invoke-virtual {v4, v6}, Landroidx/preference/MiuiColorPicker/ColorPickerView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroidx/preference/MiuiColorPicker/ColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v6}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->textHexWrapper:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->textHexWrapper:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->textHexWrapper:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->getHexWrapperBack()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v12}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v4

    invoke-virtual {p0, v11}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v6

    invoke-virtual {p0, v12}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v7

    invoke-virtual {p0, v11}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->textHexWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v1}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    const-string v6, "HEX"

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setMinEms(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setMaxEms(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    const/16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->textHexWrapper:Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mHexVal:Landroid/widget/EditText;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v12}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->textHexWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;

    const/high16 v4, -0x10000

    invoke-direct {v2, p1, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->getPresetParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    invoke-virtual {v2, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;->setOnPresetClickListener(Landroidx/preference/MiuiColorPicker/ColorPickerPresetView$OnPresetClickListener;)V

    new-instance v2, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;

    const v4, -0xff0100

    invoke-direct {v2, p1, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->getPresetParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    invoke-virtual {v2, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;->setOnPresetClickListener(Landroidx/preference/MiuiColorPicker/ColorPickerPresetView$OnPresetClickListener;)V

    new-instance v2, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;

    const v4, -0xffff01

    invoke-direct {v2, p1, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->getPresetParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    invoke-virtual {v2, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;->setOnPresetClickListener(Landroidx/preference/MiuiColorPicker/ColorPickerPresetView$OnPresetClickListener;)V

    new-instance v2, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;

    invoke-direct {v2, p1, v10}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->getPresetParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    invoke-virtual {v2, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;->setOnPresetClickListener(Landroidx/preference/MiuiColorPicker/ColorPickerPresetView$OnPresetClickListener;)V

    new-instance v2, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;

    const/high16 v4, -0x1000000

    invoke-direct {v2, p1, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->getPresetParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->colorPickerView:Landroidx/preference/MiuiColorPicker/ColorPickerView;

    invoke-virtual {v2, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerPresetView;->setOnPresetClickListener(Landroidx/preference/MiuiColorPicker/ColorPickerPresetView$OnPresetClickListener;)V

    iput-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->presetLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {p0, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v4

    invoke-direct {v1, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

    invoke-direct {v4, p1}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mOldColor:Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mOldColor:Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->pX(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const-string v4, "\u2192"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

    invoke-direct {v4, p1}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mNewColor:Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mNewColor:Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

    const-string v5, "new"

    invoke-virtual {v4, v5}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->mNewColor:Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public pX(F)I
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialogLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method
