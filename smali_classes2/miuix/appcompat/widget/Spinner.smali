.class public Lmiuix/appcompat/widget/Spinner;
.super Landroid/widget/Spinner;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;,
        Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;,
        Lmiuix/appcompat/widget/Spinner$DropdownPopup;,
        Lmiuix/appcompat/widget/Spinner$DialogPopup;,
        Lmiuix/appcompat/widget/Spinner$SpinnerPopup;,
        Lmiuix/appcompat/widget/Spinner$DropDownAdapter;,
        Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;,
        Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;,
        Lmiuix/appcompat/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static FORWARDING_LISTENER:Ljava/lang/reflect/Field;


# instance fields
.field mDropDownMaxWidth:I

.field mDropDownMinWidth:I

.field mDropDownWidth:I

.field private mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

.field private mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mForwardingListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    .line 97
    sget-object v0, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Spinner"

    const-string v2, "static initializer: "

    .line 99
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 146
    sget v0, Lmiuix/appcompat/R$attr;->miuiSpinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 157
    sget v0, Lmiuix/appcompat/R$attr;->miuiSpinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 172
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    .line 191
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 4

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 222
    sget-object v0, Lmiuix/appcompat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 226
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 228
    :cond_0
    sget p5, Lmiuix/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v0, p5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    if-eqz p5, :cond_1

    .line 230
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 232
    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    :goto_0
    const/4 p5, -0x1

    if-ne p4, p5, :cond_2

    .line 237
    sget p4, Lmiuix/appcompat/R$styleable;->Spinner_spinnerModeCompat:I

    invoke-virtual {v0, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    :cond_2
    const/4 p5, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_2

    .line 247
    :pswitch_0
    new-instance p4, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {p4, p0, v2, p2, p3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;-><init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    sget-object v3, Lmiuix/appcompat/R$styleable;->Spinner:[I

    invoke-virtual {v2, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 250
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v2, -0x2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    .line 252
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_dropDownMinWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownMinWidth:I

    .line 254
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_dropDownMaxWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownMaxWidth:I

    .line 256
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    .line 258
    invoke-virtual {p0, p3}, Lmiuix/appcompat/widget/Spinner;->setPopupBackgroundResource(I)V

    goto :goto_1

    .line 260
    :cond_3
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 261
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 260
    invoke-virtual {p4, p3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :goto_1
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    iput-object p4, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 268
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->makeSupperForwardingListenerInvalid()V

    goto :goto_2

    .line 242
    :pswitch_1
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    invoke-direct {p2, p0, p5}, Lmiuix/appcompat/widget/Spinner$DialogPopup;-><init>(Lmiuix/appcompat/widget/Spinner;Lmiuix/appcompat/widget/Spinner$1;)V

    iput-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 243
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_2
    sget p2, Lmiuix/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 274
    new-instance p3, Landroid/widget/ArrayAdapter;

    sget p4, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout:I

    const v2, 0x1020014

    invoke-direct {p3, p1, p4, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 276
    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    invoke-virtual {p0, p3}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lmiuix/appcompat/widget/Spinner;->mPopupSet:Z

    .line 286
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_5

    .line 287
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 288
    iput-object p5, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 290
    :cond_5
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lmiuix/appcompat/widget/Spinner;)Lmiuix/appcompat/widget/Spinner$SpinnerPopup;
    .locals 0

    .line 82
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->onSpinnerDismiss()V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->vibrate()V

    return-void
.end method

.method private addPressAnim()V
    .locals 4

    .line 294
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 295
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    .line 296
    invoke-interface {v1, v0}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 297
    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 298
    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method private clearCachedSize()V
    .locals 2

    .line 526
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 527
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 528
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setHeight(I)V

    .line 529
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setWidth(I)V

    :cond_0
    return-void
.end method

.method private compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 561
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 567
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 569
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 571
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 572
    invoke-interface {p1, v4, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 574
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz p2, :cond_2

    .line 583
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 584
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private makeSupperForwardingListenerInvalid()V
    .locals 3

    .line 320
    sget-object v0, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 324
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Spinner"

    const-string v2, "makeSupperForwardingListenerInvalid: "

    .line 326
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifySpinnerDismiss()V
    .locals 1

    .line 472
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;->onSpinnerDismiss()V

    :cond_0
    return-void
.end method

.method private onSpinnerDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 315
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 316
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->notifySpinnerDismiss()V

    return-void
.end method

.method private superViewPerformClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 542
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private vibrate()V
    .locals 1

    .line 535
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 599
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 601
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 605
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 606
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 608
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v0

    move-object v7, v5

    :goto_0
    if-ge v3, v4, :cond_3

    .line 610
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    .line 615
    :cond_1
    invoke-interface {p1, v3, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 616
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 617
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 622
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 627
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 628
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    add-int/2addr v6, p1

    :cond_4
    return v6
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 397
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0

    .line 400
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 372
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0

    .line 375
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 415
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 416
    iget v0, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    return v0

    .line 418
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 354
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .line 335
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 557
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

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

    .line 447
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 449
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 456
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 458
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    .line 461
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/widget/Spinner;->compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 460
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 462
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 460
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 463
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    .line 460
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 655
    check-cast p1, Lmiuix/appcompat/widget/Spinner$SavedState;

    .line 657
    invoke-virtual {p1}, Lmiuix/appcompat/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 659
    iget-boolean p1, p1, Lmiuix/appcompat/widget/Spinner$SavedState;->mShowDropdown:Z

    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 662
    new-instance v0, Lmiuix/appcompat/widget/Spinner$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/widget/Spinner$1;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    .line 674
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 648
    new-instance v0, Lmiuix/appcompat/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 649
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lmiuix/appcompat/widget/Spinner$SavedState;->mShowDropdown:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->addPressAnim()V

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    new-array v0, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 311
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 3

    const/4 v0, 0x2

    .line 479
    new-array v0, v0, [I

    .line 480
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 481
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 482
    aget v0, v0, v2

    int-to-float v0, v0

    .line 483
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    move-result v0

    return v0
.end method

.method public performClick(FF)Z
    .locals 2

    .line 487
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->superViewPerformClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 491
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_2

    .line 492
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->clearCachedSize()V

    .line 494
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->showPopup(FF)V

    .line 496
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :cond_1
    return v1

    .line 502
    :cond_2
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 82
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .line 431
    iget-boolean v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupSet:Z

    if-nez v0, :cond_0

    .line 432
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    return-void

    .line 436
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 438
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    if-eqz v1, :cond_1

    .line 439
    new-instance v1, Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 440
    :cond_1
    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_2

    .line 441
    new-instance v1, Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDoubleLineContentAdapter(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;)V
    .locals 4

    .line 423
    new-instance v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout:I

    new-instance v3, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;

    invoke-direct {v3, p0}, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setHorizontalOriginalOffset(I)V

    .line 383
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 363
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .line 406
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 407
    iput p1, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    goto :goto_0

    .line 409
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_0
    return-void
.end method

.method public setFenceX(I)V
    .locals 2

    .line 510
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 511
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceX(I)V

    :cond_0
    return-void
.end method

.method public setFenceXFromView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    .line 520
    new-array v0, v0, [I

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 522
    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setFenceX(I)V

    return-void
.end method

.method public setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .line 349
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method showPopup()V
    .locals 3

    const/4 v0, 0x2

    .line 635
    new-array v0, v0, [I

    .line 636
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 637
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 638
    aget v0, v0, v2

    int-to-float v0, v0

    .line 639
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/widget/Spinner;->showPopup(FF)V

    return-void
.end method

.method showPopup(FF)V
    .locals 3

    .line 643
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2, p1, p2}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->show(IIFF)V

    return-void
.end method
