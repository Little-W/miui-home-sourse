.class public Lmiuix/preference/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;
.implements Landroid/widget/Checkable;


# instance fields
.field private mChangeFromClick:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mRadioButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private initHapticFeedback()V
    .locals 2

    .line 190
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    :cond_0
    return-void
.end method

.method private syncStartCheckAnim(Landroid/widget/CompoundButton;)V
    .locals 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 128
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 130
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 131
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    .line 140
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 143
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 144
    iget-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_2
    return v1
.end method

.method protected notifyChanged()V
    .locals 2

    .line 156
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->notifyChanged()V

    .line 157
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    .line 160
    :cond_0
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreference;->initHapticFeedback()V

    .line 162
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 89
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 91
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020016

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 94
    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    const v1, 0x1020010

    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 99
    move-object v2, v1

    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lmiuix/preference/RadioButtonPreference$1;

    invoke-direct {v0, p0}, Lmiuix/preference/RadioButtonPreference$1;-><init>(Lmiuix/preference/RadioButtonPreference;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_2
    const v0, 0x1020001

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 117
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreference;->syncStartCheckAnim(Landroid/widget/CompoundButton;)V

    :cond_3
    const/4 v0, 0x1

    .line 122
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 151
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->onClick()V

    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->onDetached()V

    .line 179
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 180
    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public queueIdle()Z
    .locals 1

    .line 185
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreference;->initHapticFeedback()V

    const/4 v0, 0x0

    return v0
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method
