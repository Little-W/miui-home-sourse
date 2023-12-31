.class public Landroidx/preference/MyXPreference;
.super Ljava/lang/Object;


# instance fields
.field protected mDisableLongClick:Z

.field private mIntent:Ljava/lang/String;

.field private mIntentExtra:Ljava/lang/String;

.field private mMargin:I

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    const-string v0, "disableLongClick"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/MyXPreference;->mDisableLongClick:Z

    const-string v0, "intent"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/MyXPreference;->mIntent:Ljava/lang/String;

    const-string v0, "intentExtra"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/MyXPreference;->mIntentExtra:Ljava/lang/String;

    const-string v0, "margin"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/MyXPreference;->mMargin:I

    const-string v0, "storage"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v1, 0x1

    if-nez v2, :cond_0

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v1, 0x2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Landroidx/preference/MyXPreference;->mStorage:I

    return-void
.end method

.method public static LaunchMyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static drawableLightDarkColor(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorder(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static drawableLightDarkColorAndBorder(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/drawable/Drawable;
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorderAndPadding(Landroid/graphics/drawable/Drawable;IIIIFFIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static drawableLightDarkColorAndBorderAndPadding(Landroid/graphics/drawable/Drawable;IIIIFFI)Landroid/graphics/drawable/Drawable;
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p7

    move/from16 v9, p7

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorderAndPadding(Landroid/graphics/drawable/Drawable;IIIIFFIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static drawableLightDarkColorAndBorderAndPadding(Landroid/graphics/drawable/Drawable;IIIIFFIIII)Landroid/graphics/drawable/Drawable;
    .locals 15

    if-eqz p0, :cond_2

    instance-of v1, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    const/4 v1, 0x0

    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move/from16 v8, p6

    :goto_0
    if-ge v1, v0, :cond_1

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static/range {v2 .. v8}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorderSimple(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez p7, :cond_0

    if-nez p8, :cond_0

    if-nez p9, :cond_0

    if-nez p10, :cond_0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v13

    :cond_2
    invoke-static/range {p0 .. p6}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorderSimple(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v2
.end method

.method public static drawableLightDarkColorAndBorderSimple(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v5, 0x1

    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 p0, 0x1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-static {v1, p5, p6}, Landroidx/preference/MyXPreference;->setCornerTopBottomRadius(Landroid/graphics/drawable/GradientDrawable;FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-static {v1, p5, p6}, Landroidx/preference/MyXPreference;->setCornerTopBottomRadius(Landroid/graphics/drawable/GradientDrawable;FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-lez p1, :cond_4

    div-int/lit16 v3, p1, 0x2

    add-int/lit16 v3, v3, 0x7f

    goto :goto_2

    :cond_4
    add-int/lit16 v3, p1, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    div-int/lit16 v3, v3, 0x2

    :goto_2
    if-nez v5, :cond_8

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v2, :cond_5

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_5
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    if-lez p3, :cond_7

    const/4 v2, 0x3

    if-eqz p0, :cond_6

    const/4 v2, 0x2

    :cond_6
    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v2, 0x1

    aput-object v0, v4, v2

    if-nez p0, :cond_a

    const/4 v3, 0x2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, p5, p6}, Landroidx/preference/MyXPreference;->setCornerTopBottomRadius(Landroid/graphics/drawable/GradientDrawable;FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    aput-object v0, v4, v3

    goto :goto_4

    :cond_7
    const/4 v2, 0x2

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v3, 0x1

    aput-object v0, v4, v3

    goto :goto_4

    :cond_8
    if-nez p0, :cond_9

    const/4 v2, 0x2

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, p5, p6}, Landroidx/preference/MyXPreference;->setCornerTopBottomRadius(Landroid/graphics/drawable/GradientDrawable;FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    aput-object v0, v4, v3

    goto :goto_4

    :cond_9
    return-object v1

    :cond_a
    :goto_4
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/drawable/LayerDrawable;->setPadding(IIII)V

    return-object v1
.end method

.method public static drawableLightDarkColorAndPadding(Landroid/graphics/drawable/Drawable;IIIIII)Landroid/graphics/drawable/Drawable;
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v0 .. v10}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorderAndPadding(Landroid/graphics/drawable/Drawable;IIIIFFIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static drawableLightDarkColorAndRadius(Landroid/graphics/drawable/Drawable;IIFF)Landroid/graphics/drawable/Drawable;
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorder(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static drawableLightDarkColorAndRadiusAndPadding(Landroid/graphics/drawable/Drawable;IIFFIIII)Landroid/graphics/drawable/Drawable;
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Landroidx/preference/MyXPreference;->drawableLightDarkColorAndBorderAndPadding(Landroid/graphics/drawable/Drawable;IIIIFFIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getColorDrawableWithPadding(IIIII)Landroid/graphics/drawable/Drawable;
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/preference/MyXPreference;->getColorDrawableWithPaddingAndRadius(IIIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getColorDrawableWithPaddingAndRadius(IIIIIF)Landroid/graphics/drawable/Drawable;
    .locals 6

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method public static getColorDrawableWithPaddingAndTopBottomRadius(IIIIIFF)Landroid/graphics/drawable/Drawable;
    .locals 6

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v3, 0x8

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput p5, v2, v3

    const/4 v3, 0x1

    aput p5, v2, v3

    const/4 v3, 0x2

    aput p5, v2, v3

    const/4 v3, 0x3

    aput p5, v2, v3

    const/4 v3, 0x4

    aput p6, v2, v3

    const/4 v3, 0x5

    aput p6, v2, v3

    const/4 v3, 0x6

    aput p6, v2, v3

    const/4 v3, 0x7

    aput p6, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method public static getColorDrawableWith_LR_TB_Padding(III)Landroid/graphics/drawable/Drawable;
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/preference/MyXPreference;->getColorDrawableWithPaddingAndRadius(IIIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getColorDrawableWith_LR_TB_PaddingAndRadius(IIIF)Landroid/graphics/drawable/Drawable;
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/preference/MyXPreference;->getColorDrawableWithPaddingAndRadius(IIIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getColorDrawableWith_LR_TB_PaddingAndTopBottomRadius(IIIFF)Landroid/graphics/drawable/Drawable;
    .locals 7

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->getColorDrawableWithPaddingAndTopBottomRadius(IIIIIFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getColorDrawableWith_LR_TopBottomPaddingAndBottomRadius(IIIIF)Landroid/graphics/drawable/Drawable;
    .locals 7

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p3

    const/4 v5, 0x0

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->getColorDrawableWithPaddingAndTopBottomRadius(IIIIIFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getColorDrawableWith_LR_TopBottomPaddingAndRadius(IIIIF)Landroid/graphics/drawable/Drawable;
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/preference/MyXPreference;->getColorDrawableWithPaddingAndRadius(IIIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getColorDrawableWith_LR_TopBottomPaddingAndTopRadius(IIIIF)Landroid/graphics/drawable/Drawable;
    .locals 7

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->getColorDrawableWithPaddingAndTopBottomRadius(IIIIIFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getKeyInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getKeyInt1(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getKeyString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p2

    :cond_0
    return-object v0
.end method

.method public static getPadding(Landroid/view/View;)[I
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public static lightDarkColor(IF)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static setAlpha(II)I
    .locals 2

    move v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const v1, 0xff

    if-le v0, v1, :cond_1

    const v0, 0xff

    :cond_1
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    return v1
.end method

.method public static setBackcolorToViewWithLeftRightPadding(ILandroid/view/View;II)V
    .locals 7

    move v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->setBackcolorToViewWithPaddingAndRadius(ILandroid/view/View;IIIIF)V

    return-void
.end method

.method public static setBackcolorToViewWithPadding(ILandroid/view/View;IIII)V
    .locals 7

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->setBackcolorToViewWithPaddingAndRadius(ILandroid/view/View;IIIIF)V

    return-void
.end method

.method public static setBackcolorToViewWithPaddingAndRadius(ILandroid/view/View;IIIIF)V
    .locals 6

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, p6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBackcolorToViewWithTopBottomPadding(ILandroid/view/View;II)V
    .locals 7

    move v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    move v5, p3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->setBackcolorToViewWithPaddingAndRadius(ILandroid/view/View;IIIIF)V

    return-void
.end method

.method public static setBackcolorToViewWith_LR_TB_Padding(ILandroid/view/View;II)V
    .locals 7

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->setBackcolorToViewWithPaddingAndRadius(ILandroid/view/View;IIIIF)V

    return-void
.end method

.method public static setBackcolorToViewWith_LR_TB_PaddingAndRadius(ILandroid/view/View;IIF)V
    .locals 7

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->setBackcolorToViewWithPaddingAndRadius(ILandroid/view/View;IIIIF)V

    return-void
.end method

.method public static setBackcolorToViewWith_TB_PaddingAndRadius(ILandroid/view/View;IF)V
    .locals 7

    move v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroidx/preference/MyXPreference;->setBackcolorToViewWithPaddingAndRadius(ILandroid/view/View;IIIIF)V

    return-void
.end method

.method public static setCornerTopBottomRadius(Landroid/graphics/drawable/GradientDrawable;FF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    const v0, 0x8

    new-array v1, v0, [F

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v0, 0x1

    aput p1, v1, v0

    const/4 v0, 0x2

    aput p1, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    const/4 v0, 0x4

    aput p2, v1, v0

    const/4 v0, 0x5

    aput p2, v1, v0

    const/4 v0, 0x6

    aput p2, v1, v0

    const/4 v0, 0x7

    aput p2, v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object p0
.end method

.method public static setPadding(Landroid/view/View;[I)V
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v0, p1, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getInteger(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Landroidx/preference/MyXPreference;->mStorage:I

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    invoke-static {v1, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getMargin()I
    .locals 1

    iget v0, p0, Landroidx/preference/MyXPreference;->mMargin:I

    mul-int/lit8 v0, v0, 0x2f

    return v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Landroidx/preference/MyXPreference;->mStorage:I

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    invoke-static {v1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    move-object v1, p3

    :cond_2
    return-object v1
.end method

.method public sendIntent(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Landroidx/preference/MyXPreference;->mIntent:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/preference/MyXPreference;->mIntentExtra:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v0, "extra"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setInteger(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Landroidx/preference/MyXPreference;->mStorage:I

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    invoke-static {v1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-static {v1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-static {v1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public setMargin(Landroid/view/View;Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/MyXPreference;->getMargin()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    return v0
.end method

.method public setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Landroidx/preference/MyXPreference;->mStorage:I

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    invoke-static {v1, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1, p2, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
