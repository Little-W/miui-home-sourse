.class public Lmiui/external/widget/Spinner;
.super Landroid/widget/Spinner;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/external/widget/Spinner$OnSpinnerDismissListener;,
        Lmiui/external/widget/Spinner$SpinnerCheckedProvider;,
        Lmiui/external/widget/Spinner$ThemedAdapter;,
        Lmiui/external/widget/Spinner$DropdownPopup;,
        Lmiui/external/widget/Spinner$DialogPopup;,
        Lmiui/external/widget/Spinner$SpinnerPopup;,
        Lmiui/external/widget/Spinner$DropDownAdapter;,
        Lmiui/external/widget/Spinner$DropDownPopupAdapter;,
        Lmiui/external/widget/Spinner$DialogPopupAdapter;,
        Lmiui/external/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static FORWARDING_LISTENER:Ljava/lang/reflect/Field; = null

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field mDropDownMinWidth:I

.field mDropDownWidth:I

.field private mOnSpinnerDismissListener:Lmiui/external/widget/Spinner$OnSpinnerDismissListener;

.field private mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mForwardingListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiui/external/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    .line 90
    sget-object v0, Lmiui/external/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Spinner"

    const-string v2, "static initializer: "

    .line 92
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lmiui/external/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 140
    sget v0, Lmiuix/compat/R$attr;->miuiSpinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lmiui/external/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 151
    sget v0, Lmiuix/compat/R$attr;->miuiSpinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/external/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 166
    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/external/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 185
    invoke-direct/range {v0 .. v5}, Lmiui/external/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 5

    .line 214
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/external/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 216
    sget-object v0, Lmiuix/compat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 219
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 220
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Lmiui/external/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 222
    :cond_0
    sget p5, Lmiuix/compat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v0, p5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    if-eqz p5, :cond_1

    .line 224
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmiui/external/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 226
    :cond_1
    iput-object p1, p0, Lmiui/external/widget/Spinner;->mPopupContext:Landroid/content/Context;

    :goto_0
    const/4 p5, -0x1

    const/4 v2, 0x1

    if-ne p4, p5, :cond_2

    .line 231
    sget p4, Lmiuix/compat/R$styleable;->Spinner_spinnerModeCompat:I

    invoke-virtual {v0, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    :cond_2
    const/4 p5, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_2

    .line 241
    :pswitch_0
    new-instance p4, Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object v3, p0, Lmiui/external/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {p4, p0, v3, p2, p3}, Lmiui/external/widget/Spinner$DropdownPopup;-><init>(Lmiui/external/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    iget-object v3, p0, Lmiui/external/widget/Spinner;->mPopupContext:Landroid/content/Context;

    sget-object v4, Lmiuix/compat/R$styleable;->Spinner:[I

    invoke-virtual {v3, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 244
    sget p3, Lmiuix/compat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v3, -0x2

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiui/external/widget/Spinner;->mDropDownWidth:I

    .line 246
    sget p3, Lmiuix/compat/R$styleable;->Spinner_dropDownMinWidth:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiui/external/widget/Spinner;->mDropDownMinWidth:I

    .line 248
    sget p3, Lmiuix/compat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    .line 250
    invoke-virtual {p0, p3}, Lmiui/external/widget/Spinner;->setPopupBackgroundResource(I)V

    goto :goto_1

    .line 252
    :cond_3
    sget p3, Lmiuix/compat/R$styleable;->Spinner_android_popupBackground:I

    .line 253
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 252
    invoke-virtual {p4, p3}, Lmiui/external/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :goto_1
    sget p3, Lmiuix/compat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lmiui/external/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    iput-object p4, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    .line 260
    invoke-direct {p0}, Lmiui/external/widget/Spinner;->makeSupperForwardingListenerInvalid()V

    goto :goto_2

    .line 236
    :pswitch_1
    new-instance p2, Lmiui/external/widget/Spinner$DialogPopup;

    invoke-direct {p2, p0, p5}, Lmiui/external/widget/Spinner$DialogPopup;-><init>(Lmiui/external/widget/Spinner;Lmiui/external/widget/Spinner$1;)V

    iput-object p2, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    .line 237
    iget-object p2, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    sget p3, Lmiuix/compat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lmiui/external/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_2
    sget p2, Lmiuix/compat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 266
    new-instance p3, Landroid/widget/ArrayAdapter;

    sget p4, Lmiuix/compat/R$layout;->miuix_compat_simple_spinner_layout:I

    const v1, 0x1020014

    invoke-direct {p3, p1, p4, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 268
    sget p1, Lmiuix/compat/R$layout;->miuix_compat_simple_spinner_dropdown_item:I

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 269
    invoke-virtual {p0, p3}, Lmiui/external/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    iput-boolean v2, p0, Lmiui/external/widget/Spinner;->mPopupSet:Z

    .line 278
    iget-object p1, p0, Lmiui/external/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_5

    .line 279
    invoke-virtual {p0, p1}, Lmiui/external/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    iput-object p5, p0, Lmiui/external/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lmiui/external/widget/Spinner;)Lmiui/external/widget/Spinner$SpinnerPopup;
    .locals 0

    .line 75
    iget-object p0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/external/widget/Spinner;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lmiui/external/widget/Spinner;->notifySpinnerDismiss()V

    return-void
.end method

.method static synthetic access$300(Lmiui/external/widget/Spinner;)F
    .locals 0

    .line 75
    iget p0, p0, Lmiui/external/widget/Spinner;->mTouchX:F

    return p0
.end method

.method static synthetic access$400(Lmiui/external/widget/Spinner;)F
    .locals 0

    .line 75
    iget p0, p0, Lmiui/external/widget/Spinner;->mTouchY:F

    return p0
.end method

.method private compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 514
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 516
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 517
    invoke-interface {p1, v4, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 519
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz p2, :cond_2

    .line 528
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 529
    iget-object p2, p0, Lmiui/external/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lmiui/external/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_2
    return p1
.end method

.method private makeSupperForwardingListenerInvalid()V
    .locals 3

    .line 285
    sget-object v0, Lmiui/external/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 289
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Spinner"

    const-string v2, "makeSupperForwardingListenerInvalid: "

    .line 291
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifySpinnerDismiss()V
    .locals 1

    .line 500
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mOnSpinnerDismissListener:Lmiui/external/widget/Spinner$OnSpinnerDismissListener;

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0}, Lmiui/external/widget/Spinner$OnSpinnerDismissListener;->onSpinnerDismiss()V

    :cond_0
    return-void
.end method

.method private superViewPerformClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 477
    invoke-virtual {p0, v0}, Lmiui/external/widget/Spinner;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 544
    :cond_0
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 546
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 550
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 551
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 553
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v0

    move-object v7, v5

    :goto_0
    if-ge v3, v4, :cond_3

    .line 555
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    .line 560
    :cond_1
    invoke-interface {p1, v3, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 561
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 562
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 567
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 572
    iget-object p1, p0, Lmiui/external/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 573
    iget-object p1, p0, Lmiui/external/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lmiui/external/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    add-int/2addr v6, p1

    :cond_4
    return v6
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 375
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Lmiui/external/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0

    .line 378
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 350
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lmiui/external/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0

    .line 353
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 393
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lmiui/external/widget/Spinner;->mDropDownWidth:I

    return v0

    .line 396
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 332
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Lmiui/external/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 335
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .line 309
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 492
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/external/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 425
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 427
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/external/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lmiui/external/widget/Spinner$SpinnerPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 434
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 436
    iget-object p2, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    .line 439
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiui/external/widget/Spinner;->compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 438
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 440
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 438
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 441
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    .line 438
    invoke-virtual {p0, p1, p2}, Lmiui/external/widget/Spinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 597
    check-cast p1, Lmiui/external/widget/Spinner$SavedState;

    .line 599
    invoke-virtual {p1}, Lmiui/external/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 601
    iget-boolean p1, p1, Lmiui/external/widget/Spinner$SavedState;->mShowDropdown:Z

    if-eqz p1, :cond_0

    .line 602
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 604
    new-instance v0, Lmiui/external/widget/Spinner$1;

    invoke-direct {v0, p0}, Lmiui/external/widget/Spinner$1;-><init>(Lmiui/external/widget/Spinner;)V

    .line 616
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 590
    new-instance v0, Lmiui/external/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/external/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 591
    iget-object v1, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmiui/external/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lmiui/external/widget/Spinner$SavedState;->mShowDropdown:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/external/widget/Spinner;->mTouchX:F

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/external/widget/Spinner;->mTouchY:F

    .line 301
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 3

    const/4 v0, 0x2

    .line 447
    new-array v0, v0, [I

    .line 448
    invoke-virtual {p0, v0}, Lmiui/external/widget/Spinner;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 449
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 450
    aget v0, v0, v2

    int-to-float v0, v0

    .line 451
    invoke-virtual {p0, v1, v0}, Lmiui/external/widget/Spinner;->performClick(FF)Z

    move-result v0

    return v0
.end method

.method public performClick(FF)Z
    .locals 1

    .line 455
    iput p1, p0, Lmiui/external/widget/Spinner;->mTouchX:F

    .line 456
    iput p2, p0, Lmiui/external/widget/Spinner;->mTouchY:F

    .line 457
    invoke-direct {p0}, Lmiui/external/widget/Spinner;->superViewPerformClick()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 461
    :cond_0
    iget-object p1, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz p1, :cond_2

    .line 463
    invoke-interface {p1}, Lmiui/external/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 464
    iget p1, p0, Lmiui/external/widget/Spinner;->mTouchX:F

    iget v0, p0, Lmiui/external/widget/Spinner;->mTouchY:F

    invoke-virtual {p0, p1, v0}, Lmiui/external/widget/Spinner;->showPopup(FF)V

    :cond_1
    return p2

    .line 470
    :cond_2
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 75
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lmiui/external/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .line 409
    iget-boolean v0, p0, Lmiui/external/widget/Spinner;->mPopupSet:Z

    if-nez v0, :cond_0

    .line 410
    iput-object p1, p0, Lmiui/external/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    return-void

    .line 414
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 416
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiui/external/widget/Spinner$DialogPopup;

    if-eqz v1, :cond_1

    .line 417
    new-instance v1, Lmiui/external/widget/Spinner$DialogPopupAdapter;

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiui/external/widget/Spinner$DialogPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiui/external/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 418
    :cond_1
    instance-of v1, v0, Lmiui/external/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_2

    .line 419
    new-instance v1, Lmiui/external/widget/Spinner$DropDownPopupAdapter;

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiui/external/widget/Spinner$DropDownPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiui/external/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDoubleLineContentAdapter(Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;)V
    .locals 4

    .line 401
    new-instance v0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/compat/R$layout;->miuix_compat_simple_spinner_layout:I

    new-instance v3, Lmiui/external/widget/Spinner$SpinnerCheckedProvider;

    invoke-direct {v3, p0}, Lmiui/external/widget/Spinner$SpinnerCheckedProvider;-><init>(Lmiui/external/widget/Spinner;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    invoke-virtual {p0, v0}, Lmiui/external/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0, p1}, Lmiui/external/widget/Spinner$SpinnerPopup;->setHorizontalOriginalOffset(I)V

    .line 361
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lmiui/external/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 341
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0, p1}, Lmiui/external/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .line 384
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 385
    iput p1, p0, Lmiui/external/widget/Spinner;->mDropDownWidth:I

    goto :goto_0

    .line 387
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_0
    return-void
.end method

.method public setOnSpinnerDismissListener(Lmiui/external/widget/Spinner$OnSpinnerDismissListener;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lmiui/external/widget/Spinner;->mOnSpinnerDismissListener:Lmiui/external/widget/Spinner$OnSpinnerDismissListener;

    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0, p1}, Lmiui/external/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 2

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/external/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/external/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0, p1}, Lmiui/external/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 486
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method showPopup()V
    .locals 3

    .line 580
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/external/widget/Spinner$SpinnerPopup;->show(II)V

    return-void
.end method

.method showPopup(FF)V
    .locals 3

    .line 584
    iget-object v0, p0, Lmiui/external/widget/Spinner;->mPopup:Lmiui/external/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Lmiui/external/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2, p1, p2}, Lmiui/external/widget/Spinner$SpinnerPopup;->show(IIFF)V

    return-void
.end method
