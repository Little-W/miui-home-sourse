.class public Lmiuix/preference/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChangeFromClick:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mRadioButton:Landroid/view/View;

.field private mValueChangedHaptic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lmiuix/preference/RadioButtonPreference;->mValueChangedHaptic:Z

    .line 60
    new-instance p2, Lmiuix/util/HapticFeedbackCompat;

    invoke-direct {p2, p1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-void
.end method

.method private syncStartCheckAnim(Landroid/widget/CompoundButton;)V
    .locals 2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 111
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 113
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    .line 123
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 126
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 127
    iget-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_2
    return v1
.end method

.method protected notifyChanged()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->notifyChanged()V

    .line 140
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mValueChangedHaptic:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 89
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020016

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    const v0, 0x1020010

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    const v0, 0x1020001

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 100
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 102
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    instance-of p1, p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreference;->syncStartCheckAnim(Landroid/widget/CompoundButton;)V

    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 134
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->onClick()V

    return-void
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method
