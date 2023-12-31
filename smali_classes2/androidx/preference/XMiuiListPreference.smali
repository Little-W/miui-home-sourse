.class public Landroidx/preference/XMiuiListPreference;
.super Landroidx/preference/ListPreference;


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private mLastState:Ljava/lang/String;

.field private mPrSfSummary:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v0, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/XMiuiListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDependents(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1, v0}, Landroidx/preference/XMiuiPreferenceHelper;->putStr(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    iput-object v0, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiListPreference;->getDependents(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiListPreference;->notifyDependencyChange(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XMiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->putStr(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/preference/XMiuiListPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
