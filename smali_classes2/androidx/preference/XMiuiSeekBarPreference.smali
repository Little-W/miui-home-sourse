.class public Landroidx/preference/XMiuiSeekBarPreference;
.super Landroidx/preference/Preference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/XMiuiSeekBarPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private isOne:Z

.field private mAdjustable:Z

.field private mDefValue:I

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z

.field private mUpdatesContinuously:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    sput-object v0, Landroidx/preference/XMiuiSeekBarPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/XMiuiSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/XMiuiSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/XMiuiSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v6, p0, Landroidx/preference/XMiuiSeekBarPreference;->isOne:Z

    new-instance v1, Landroidx/preference/XMiuiSeekBarPreference$1;

    invoke-direct {v1, p0}, Landroidx/preference/XMiuiSeekBarPreference$1;-><init>(Landroidx/preference/XMiuiSeekBarPreference;)V

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v1, Landroidx/preference/XMiuiSeekBarPreference$2;

    invoke-direct {v1, p0}, Landroidx/preference/XMiuiSeekBarPreference$2;-><init>(Landroidx/preference/XMiuiSeekBarPreference;)V

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "miuix_seekbar"

    const-string v3, "layout"

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->setLayoutResource(I)V

    new-instance v1, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v1, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "max"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "min"

    invoke-virtual {v1, v2, v5}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->setMax(I)V

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->setMin(I)V

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "step"

    invoke-virtual {v1, v2, v5}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->setSeekBarIncrement(I)V

    iput-boolean v5, p0, Landroidx/preference/XMiuiSeekBarPreference;->mAdjustable:Z

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "enableSummary"

    invoke-virtual {v1, v2, v6}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mShowSeekBarValue:Z

    iput-boolean v6, p0, Landroidx/preference/XMiuiSeekBarPreference;->mUpdatesContinuously:Z

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "defaultValue"

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    :goto_0
    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->setValue(I)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->getInt()I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "defaultValue"

    iget v3, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    invoke-virtual {v1, v2, v3}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mDefValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mDefValue:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->getInt()I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    goto :goto_0
.end method

.method private IdToId(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$000(Landroidx/preference/XMiuiSeekBarPreference;Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/XMiuiSeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$102(Landroidx/preference/XMiuiSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/preference/XMiuiSeekBarPreference;)I
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    return v0
.end method

.method static synthetic access$300(Landroidx/preference/XMiuiSeekBarPreference;)I
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method static synthetic access$400(Landroidx/preference/XMiuiSeekBarPreference;)I
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    return v0
.end method

.method static synthetic access$500(Landroidx/preference/XMiuiSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method static synthetic access$600(Landroidx/preference/XMiuiSeekBarPreference;)Lmiuix/androidbasewidget/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/preference/XMiuiSeekBarPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static enableSpringBackLayout(Landroid/view/View;Z)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private idToId(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setMax(I)V
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    :cond_0
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method private setMin(I)V
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    :cond_0
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method private setSeekBarIncrement(I)V
    .locals 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method private setValue(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/preference/XMiuiSeekBarPreference;->setValueInternal(IZ)V

    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    :cond_0
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    :cond_1
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference;->updateLabelValue(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/XMiuiSeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->notifyChanged()V

    :cond_2
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->putInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    :cond_3
    return-void
.end method

.method private syncValueInternal(Landroid/widget/SeekBar;)V
    .locals 3

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int v0, v1, v2

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->setValueInternal(IZ)V

    :cond_0
    return-void
.end method

.method private updateLabelValue(I)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    return v0
.end method

.method public final getSeekBarIncrement()I
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarIncrement:I

    return v0
.end method

.method public getUpdatesContinuously()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mUpdatesContinuously:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method public isAdjustable()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v1, "seekbar"

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->idToId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    const-string v1, "seekbar_value"

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->idToId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mShowSeekBarValue:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    if-nez v1, :cond_2

    sget-object v1, Landroidx/preference/XMiuiSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v2, "SeekBar view is null in onBindViewHolder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    iget-object v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    iget v3, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setMax(I)V

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarIncrement:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {v1, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setKeyProgressIncrement(I)V

    :goto_2
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    iget v3, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->updateLabelValue(I)V

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setEnabled(Z)V

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    new-instance v2, Landroidx/preference/XMiuiSeekBarPreference$3;

    invoke-direct {v2, p0}, Landroidx/preference/XMiuiSeekBarPreference$3;-><init>(Landroidx/preference/XMiuiSeekBarPreference;)V

    invoke-virtual {v1, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarIncrement:I

    goto :goto_2
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/preference/XMiuiSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;

    invoke-virtual {v0}, Landroidx/preference/XMiuiSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;->mSeekBarValue:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    iget v1, v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;->mMin:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    iget v1, v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;->mMax:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroidx/preference/XMiuiSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    iput v2, v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;->mSeekBarValue:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    iput v2, v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;->mMin:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMax:I

    iput v2, v0, Landroidx/preference/XMiuiSeekBarPreference$SavedState;->mMax:I

    move-object v1, v0

    goto :goto_0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    iget-object v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getInt(I)I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mDefValue:I

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/XMiuiPreferenceHelper;->putInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mDefValue:I

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    :cond_1
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mSeekBarValue:I

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference;->setValue(I)V

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->mValue:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference;->notifyDependencyChange(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setAdjustable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mAdjustable:Z

    return-void
.end method

.method protected setHelper(Landroidx/preference/XMiuiPreferenceHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    return-void
.end method

.method public setShowSeekBarValue(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mShowSeekBarValue:Z

    return-void
.end method

.method public setUpdatesContinuously(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mUpdatesContinuously:Z

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mDefValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getInt(I)I

    move-result v0

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference;->mMin:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
