.class public Landroidx/preference/MiuiXColorPickerDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroidx/preference/MiuiXColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field public CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

.field private mBlack:Landroidx/preference/MiuiXColorPickerPanelView;

.field private mBlue:Landroidx/preference/MiuiXColorPickerPanelView;

.field private mColorPicker:Landroidx/preference/MiuiXColorPickerView;

.field private mGreen:Landroidx/preference/MiuiXColorPickerPanelView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexText:Landroid/widget/TextView;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mLayout:Landroid/view/View;

.field private mListener:Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;

.field public mMiuiXColorPickerPreference:Landroidx/preference/MiuiXColorPickerPreference;

.field private mNewColor:Landroidx/preference/MiuiXColorPickerPanelView;

.field private mOldColor:Landroidx/preference/MiuiXColorPickerPanelView;

.field private mOrientation:I

.field private mRed:Landroidx/preference/MiuiXColorPickerPanelView;

.field private mSetButton:Landroid/widget/ImageView;

.field private mWhite:Landroidx/preference/MiuiXColorPickerPanelView;

.field private mYellow:Landroidx/preference/MiuiXColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/preference/MiuiXCoreSettingsPreference;

    invoke-direct {v0}, Landroidx/preference/MiuiXCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexValueEnabled:Z

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/preference/MiuiXCoreSettingsPreference;->setBridge(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Landroidx/preference/MiuiXColorPickerDialog;->initialization(I)V

    return-void
.end method

.method static synthetic access$000(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/preference/MiuiXColorPickerDialog;)Landroidx/preference/MiuiXColorPickerView;
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private initialization(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p1}, Landroidx/preference/MiuiXColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v2, "color_preference_layout"

    invoke-virtual {v1, v2}, Landroidx/preference/MiuiXCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mOrientation:I

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/preference/MiuiXColorPickerDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v3, "color_picker_view"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string/jumbo v3, "old_color_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mOldColor:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string/jumbo v3, "new_color_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mNewColor:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string/jumbo v3, "white_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mWhite:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v3, "black_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mBlack:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v3, "blue_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mBlue:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string/jumbo v3, "red_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mRed:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v3, "green_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mGreen:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string/jumbo v3, "yellow_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/preference/MiuiXColorPickerPanelView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mYellow:Landroidx/preference/MiuiXColorPickerPanelView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v3, "hex"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v3, "hex_text"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexText:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string v3, "enter"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v2, Landroidx/preference/MiuiXColorPickerDialog$1;

    invoke-direct {v2, p0}, Landroidx/preference/MiuiXColorPickerDialog$1;-><init>(Landroidx/preference/MiuiXColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mOldColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v1}, Landroidx/preference/MiuiXColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    invoke-virtual {v2}, Landroidx/preference/MiuiXColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    invoke-virtual {v3}, Landroidx/preference/MiuiXColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mOldColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v1, p0}, Landroidx/preference/MiuiXColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mNewColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v1, p0}, Landroidx/preference/MiuiXColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    invoke-virtual {v1, p0}, Landroidx/preference/MiuiXColorPickerView;->setOnColorChangedListener(Landroidx/preference/MiuiXColorPickerView$OnColorChangedListener;)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mOldColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v1, p1}, Landroidx/preference/MiuiXColorPickerPanelView;->setColor(I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroidx/preference/MiuiXColorPickerView;->setColor(IZ)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    new-instance v2, Landroidx/preference/MiuiXColorPickerDialog$2;

    invoke-direct {v2, p0}, Landroidx/preference/MiuiXColorPickerDialog$2;-><init>(Landroidx/preference/MiuiXColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mWhite:Landroidx/preference/MiuiXColorPickerPanelView;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroidx/preference/MiuiXColorPickerDialog;->setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mBlack:Landroidx/preference/MiuiXColorPickerPanelView;

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v1, v2}, Landroidx/preference/MiuiXColorPickerDialog;->setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mBlue:Landroidx/preference/MiuiXColorPickerPanelView;

    const v2, -0xffff01

    invoke-virtual {p0, v1, v2}, Landroidx/preference/MiuiXColorPickerDialog;->setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mRed:Landroidx/preference/MiuiXColorPickerPanelView;

    const/high16 v2, -0x10000

    invoke-virtual {p0, v1, v2}, Landroidx/preference/MiuiXColorPickerDialog;->setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mGreen:Landroidx/preference/MiuiXColorPickerPanelView;

    const v2, -0xff0100

    invoke-virtual {p0, v1, v2}, Landroidx/preference/MiuiXColorPickerDialog;->setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mYellow:Landroidx/preference/MiuiXColorPickerPanelView;

    const/16 v2, -0x100

    invoke-virtual {p0, v1, v2}, Landroidx/preference/MiuiXColorPickerDialog;->setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V

    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private updateHexValue(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/preference/MiuiXColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/preference/MiuiXColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    invoke-virtual {v0}, Landroidx/preference/MiuiXColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    invoke-virtual {v0}, Landroidx/preference/MiuiXColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->CoreSettings:Landroidx/preference/MiuiXCoreSettingsPreference;

    const-string/jumbo v3, "new_color_panel"

    invoke-virtual {v2, v3}, Landroidx/preference/MiuiXCoreSettingsPreference;->IDtoID_FUxiaomi(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mListener:Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mNewColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v1}, Landroidx/preference/MiuiXColorPickerPanelView;->getColor()I

    move-result v0

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mMiuiXColorPickerPreference:Landroidx/preference/MiuiXColorPickerPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/MiuiXColorPickerPreference;->setNewColorByDialog(I)V

    iget-object v1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mListener:Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;

    invoke-interface {v1, v0}, Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mNewColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v0, p1}, Landroidx/preference/MiuiXColorPickerPanelView;->setColor(I)V

    iget-boolean v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/preference/MiuiXColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Landroidx/preference/MiuiXColorPickerDialog;->mOrientation:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->mOldColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v2}, Landroidx/preference/MiuiXColorPickerPanelView;->getColor()I

    move-result v1

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->mNewColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v2}, Landroidx/preference/MiuiXColorPickerPanelView;->getColor()I

    move-result v0

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0, v1}, Landroidx/preference/MiuiXColorPickerDialog;->setUp(I)V

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->mNewColor:Landroidx/preference/MiuiXColorPickerPanelView;

    invoke-virtual {v2, v0}, Landroidx/preference/MiuiXColorPickerPanelView;->setColor(I)V

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    invoke-virtual {v2, v0}, Landroidx/preference/MiuiXColorPickerView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mColorPicker:Landroidx/preference/MiuiXColorPickerView;

    invoke-virtual {v0, p1}, Landroidx/preference/MiuiXColorPickerView;->setAlphaSliderVisible(Z)V

    iget-boolean v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/preference/MiuiXColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/preference/MiuiXColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/preference/MiuiXColorPickerPanelView;->setColor(I)V

    new-instance v0, Landroidx/preference/MiuiXColorPickerDialog$3;

    invoke-direct {v0, p0, p2}, Landroidx/preference/MiuiXColorPickerDialog$3;-><init>(Landroidx/preference/MiuiXColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/MiuiXColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Landroidx/preference/MiuiXColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Landroidx/preference/MiuiXColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/preference/MiuiXColorPickerDialog;->updateHexValue(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mHexText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMiuiColoPickerPreference(Landroidx/preference/MiuiXColorPickerPreference;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mMiuiXColorPickerPreference:Landroidx/preference/MiuiXColorPickerPreference;

    return-void
.end method

.method public setOnColorChangedListener(Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/MiuiXColorPickerDialog;->mListener:Landroidx/preference/MiuiXColorPickerDialog$OnColorChangedListener;

    return-void
.end method
